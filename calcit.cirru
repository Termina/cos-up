
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ [] |skir/
      :type-slots $ {}
  :files $ {}
    'app.http $ %{} 'FileEntry
      :defs $ {} $ 'extract-body
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn extract-body (req cb)
            collect-body-str req $ Option :some $ fn (text)
              hint-fn $ {}
                :args $ [] 'String
                :return 'Unit
              cb $ try-parse-cirru-edn-as text $ :: 'Map 'Tag 'String
              , &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'js-ffi.node/NodeRequestHost $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] $ :: 'Result (:: 'Map 'Tag 'String) 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.http
          :require $ skir.util :refer $ collect-body-str
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
        'handle-token $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn handle-token (bucket app-id secret file-key cb)
            let
                cos-obj $ unsafe-coerce
                  new COS $ js-object (:SecretId app-id) (:SecretKey secret)
                  , app.main/CosClientHost
              cos-obj .get-object-url!
                js-object (:Bucket bucket) (:Region |ap-shanghai)
                  :Key $ str |cos-up/ $ or file-key |demo0
                  :Method |PUT
                  :Sign true
                fn (err data)
                  if (non-nil? err)
                    cb $ {} (:code 400)
                      :body $ {} $ :message (str err)
                    let
                        checked-url $ try
                          Result :ok $ contract/expect-string |COS.Url $ contract/object-field |COS.result data |Url
                          fn (_error) (Result :err "|Invalid COS response")
                      match checked-url
                        (:ok url)
                          cb $ {} (:code 200)
                            :headers $ {} $ |Access-Control-Allow-Origin |*
                            :body $ {} $ :url url
                        (:err _error)
                          cb $ {} (:code 500)
                            :body $ {} $ :message "|Invalid COS response"
                  , &unit
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String 'String 'String 'String $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            skir/create-server! on-request! $ Option :some $ {}
              :port $ js/parseInt $ option:unwrap-or (get-env |PORT) |4000
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'on-request! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-request! (req-data res)
            let
                request req-data
                method $ :method request
                request-path $ :path request
              println method request-path
              if
                and (= :post method) (= |/token request-path)
                let
                    secrets $ parse-cirru-edn-as
                      contract/expect-string |secrets-file $ fs/readFileSync
                        path/join (fileURLToPath js/import.meta.url) |../../secrets.cirru
                        , |utf8
                      :: 'Map 'Tag 'String
                    original-request $ .unwrap $ :original-request request
                  fn (cb)
                    hint-fn $ {}
                      :args $ [] $ :: 'Fn
                        {}
                          :args $ [] 'Dynamic
                          :return 'Unit
                      :return 'Unit
                    extract-body original-request $ fn (parsed)
                      hint-fn $ {}
                        :args $ [] $ :: 'Result (:: 'Map 'Tag 'String) 'String
                        :return 'Unit
                      match parsed
                        (:ok payload)
                          let
                              user $ .unwrap-or (get payload :user) |
                              pass $ .unwrap-or (get payload :pass) |
                              expected-user $ .unwrap-or (get secrets :user) |
                              expected-pass $ .unwrap-or (get secrets :pass-md5) |
                            if
                              and (= user expected-user) (= pass expected-pass)
                              handle-token
                                .unwrap-or (get secrets :bucket) |
                                .unwrap-or (get secrets :app-id) |
                                .unwrap-or (get secrets :secret) |
                                .unwrap-or (get payload :file-key) |
                                , cb
                              cb $ {} (:code 403) (:message "|Not user")
                                :headers $ {}
                                :body $ {} $ :message "|not open for all users..."
                        (:err _error)
                          cb $ {} (:code 400)
                            :body $ {} $ :message "|Invalid token request"
                      , &unit
                    , &unit
                if (= :options method)
                  {} (:code 200) (:message |OK)
                    :headers $ {} $ |Access-Control-Allow-Origin |*
                  {} (:code 404) (:message "|Non hit")
                    :headers $ {}
                    :body $ {} $ :message "|only token is impelemented"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'skir.schema/Request 'js-ffi.node/NodeServerResponseHost
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (skir/reset-req-handler! on-request!) (println |Reloaded.) &unit
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
            js-ffi.contract :as contract
