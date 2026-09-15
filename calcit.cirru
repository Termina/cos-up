
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |skir/ |lilac/
      :type-slots $ {}
  :files $ {}
    'app.http $ %{} 'FileEntry
      :defs $ {}
        'IncomingRequestHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait IncomingRequestHost
            .on! $ :: 'Fn $ {}
              :args $ [] 'app.http/IncomingRequestHost 'String 'Dynamic
              :return 'app.http/IncomingRequestHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} $ :on! |on
          :schema $ :: 'Trait
        'extract-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn extract-body (req cb)
            let
                *buf $ atom |
              req .on! |data $ fn (d) (swap! *buf str d)
              req .on! |end $ fn () $ cb
                parse-cirru-edn $ deref *buf
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.http/IncomingRequestHost $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.http
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'CosClientHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait CosClientHost
            .get-object-url! $ :: 'Fn $ {}
              :args $ [] 'app.main/CosClientHost 'JsObject $ :: 'Fn
                {}
                  :args $ [] 'Dynamic 'Dynamic
                  :return 'Unit
              :return 'Dynamic
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} $ :get-object-url! |getObjectUrl
          :schema $ :: 'Trait
        'CosDataHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait CosDataHost (:url 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
            :names $ {} $ :url |Url
          :schema $ :: 'Trait
        'handle-token $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn handle-token (bucket app-id secret file-key cb)
            let
                cos-obj $ unsafe-coerce
                  new COS $ js-object (:SecretId app-id) (:SecretKey secret)
                  , app.main/CosClientHost
              w-js-log $ cos-obj .get-object-url!
                js-object (:Bucket bucket) (:Region |ap-shanghai)
                  :Key $ str |cos-up/ $ or file-key |demo0
                  :Method |PUT
                  :Sign true
                fn (err data) (js/console.log |COS_DATA: err data)
                  if (some? err)
                    cb $ {} (:code 400)
                      :body $ {} $ :message (str err)
                    let
                        cos-data $ unsafe-coerce data app.main/CosDataHost
                      cb $ {} (:code 200)
                        :headers $ {} $ |Access-Control-Allow-Origin |*
                        :body $ {} $ :url (.-url cos-data)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String 'String 'String 'String $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            skir/create-server! on-request! $ %some $ {}
              :port $ js/parseInt $ option:unwrap-or (get-env |PORT) |4000
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'on-request! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-request! (req-data res)
            let
                request $ unsafe-coerce req-data Map
                method $ option:unwrap-or (get request :method) :get
                request-path $ option:unwrap-or (get request :path) |
              println $ format-cirru-edn $ -> request (dissoc :original-request) (dissoc :headers)
              if
                and (= :post method) (= |/token request-path)
                let
                    secrets $ unsafe-coerce
                      parse-cirru-edn $ fs/readFileSync
                        path/join (fileURLToPath js/import.meta.url) |../../secrets.cirru
                        , |utf8
                      , Map
                    original-request $ option:unwrap-or (get request :original-request) nil
                  fn (cb)
                    extract-body original-request $ fn (body)
                      let
                          payload $ unsafe-coerce body Map
                          user $ option:unwrap-or (get payload :user) |
                          pass $ option:unwrap-or (get payload :pass) |
                          expected-user $ option:unwrap-or (get secrets :user) |
                          expected-pass $ option:unwrap-or (get secrets :pass-md5) |
                        println |BODY payload
                        if
                          and (= user expected-user) (= pass expected-pass)
                          handle-token
                            option:unwrap-or (get secrets :bucket) |
                            option:unwrap-or (get secrets :app-id) |
                            option:unwrap-or (get secrets :secret) |
                            option:unwrap-or (get payload :file-key) |
                            , cb
                          cb $ {} (:code 403) (:message "|Not user")
                            :headers $ {}
                            :body $ {} $ :message "|not open for all users..."
                if (= :options method)
                  {} (:code 200) (:message |OK)
                    :headers $ {} $ |Access-Control-Allow-Origin |*
                  {} (:code 404) (:message "|Non hit")
                    :headers $ {}
                    :body $ {} $ :message "|only token is impelemented"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'skir.schema/Request 'Dynamic
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (skir/reset-req-handler! on-request!) (println |Reloaded.)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (|cos-nodejs-sdk-v5 :default COS) (skir.core :as skir)
            app.$meta :refer $ calcit-dirname
            |node:path :as path
            |node:url :refer $ fileURLToPath
            |node:fs :as fs
            app.http :refer $ extract-body
