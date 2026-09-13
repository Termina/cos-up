
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js)
      :reload-fn 'app.main/reload!
      :feature-policy $ {}
      :modules $ [] |skir/ |lilac/
      :type-slots $ {}
  :files $ {}
    'app.http $ %{} 'FileEntry
      :defs $ {} $ 'extract-body
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn extract-body (req cb)
            let
                *buf $ atom |
              .!on req |data $ fn (d) (swap! *buf str d)
              .!on req |end $ fn () $ cb
                parse-cirru-edn $ deref *buf
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.http
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'handle-token $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn handle-token (bucket app-id secret file-key cb)
            &let
              cos-obj $ new COS $ js-object (:SecretId app-id) (:SecretKey secret)
              w-js-log $ .!getObjectUrl cos-obj
                js-object (:Bucket bucket) (:Region |ap-shanghai)
                  :Key $ str |cos-up/ $ or file-key |demo0
                  :Method |PUT
                  :Sign true
                fn (err data) (js/console.log "|COS DATA:" err data)
                  if (some? err)
                    cb $ {} (:code 400)
                      :body $ {} $ :message (str err)
                    cb $ {} (:code 200)
                      :headers $ {} $ |Access-Control-Allow-Origin |*
                      :body $ {} $ :url (.-Url data)
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|COS get" $ .-getAuthorization COS
            skir/create-server! on-request! $ {} $ :port
              js/parseInt $ option:unwrap-or (get-env |PORT) |4000
          :examples $ []
          :schema $ :: 'Dynamic
        'on-request! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-request! (req-data res)
            let
                request $ unsafe-coerce req-data Map
                method $ option:unwrap-or (get request :method) :get
                request-path $ option:unwrap-or (get request :path) |
              println $ format-cirru-edn $ -> request
                dissoc :original-request
                dissoc :headers
              if
                and (= :post method) (= |/token request-path)
                let
                    secrets $ unsafe-coerce
                      parse-cirru-edn $ fs/readFileSync
                        path/join
                          fileURLToPath js/import.meta.url
                          , |../../secrets.cirru
                        , |utf8
                      , Map
                    original-request $ option:unwrap-or
                      get request :original-request
                      , nil
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
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            skir/reset-req-handler! on-request!
            println |Reloaded.
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            |cos-nodejs-sdk-v5 :default COS
            skir.core :as skir
            app.$meta :refer $ calcit-dirname
            |node:path :as path
            |node:url :refer $ fileURLToPath
            |node:fs :as fs
            app.http :refer $ extract-body
