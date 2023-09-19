
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |skir/ |lilac/
  :entries $ {}
    :test $ {} (:init-fn |app.test/main!) (:reload-fn |app.test/reload!)
      :modules $ [] |calcit-test/
  :files $ {}
    |app.http $ %{} :FileEntry
      :defs $ {}
        |extract-body $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn extract-body (req cb)
              let
                  *buf $ atom "\""
                .!on req "\"data" $ fn (d) (swap! *buf str d)
                .!on req "\"end" $ fn ()
                  cb $ parse-cirru-edn (deref *buf)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.http)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |handle-token $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn handle-token (bucket app-id secret file-key cb)
              &let
                cos-obj $ new COS
                  js-object (:SecretId app-id) (:SecretKey secret)
                w-js-log $ .!getObjectUrl cos-obj
                  js-object (:Bucket bucket) (:Region "\"ap-hongkong")
                    :Key $ str "\"cos-up/" (or file-key "\"demo0")
                    :Method "\"PUT"
                    :Sign true
                  fn (err data) (js/console.log "\"COS DATA:" err data)
                    if (some? err)
                      cb $ {} (:code 400)
                        :body $ {}
                          :message $ str err
                      cb $ {} (:code 200)
                        :headers $ {} ("\"Access-Control-Allow-Origin" "\"*")
                        :body $ {}
                          :url $ .-Url data
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"COS get" $ .-getAuthorization COS
              skir/create-server! on-request! $ {}
                :port $ js/parseInt (get-env "\"PORT" "\"4000")
        |on-request! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-request! (req-data res)
              println $ format-cirru-edn
                -> req-data (dissoc :original-request) (dissoc :headers)
              if
                and
                  = :post $ :method req-data
                  = "\"/token" $ :path req-data
                let
                    secrets $ parse-cirru-edn
                      fs/readFileSync
                        path/join (fileURLToPath js/import.meta.url) "\"../../secrets.cirru"
                        , "\"utf8"
                    data $ {}
                  fn (cb)
                    extract-body (:original-request req-data)
                      fn (body) (println "\"BODY" body)
                        if
                          and
                            = (:user body) (:user secrets)
                            = (:pass body) (:pass-md5 secrets)
                          handle-token (:bucket secrets) (:app-id secrets) (:secret secrets) (:file-key body) cb
                          cb $ {} (:code 403) (:message "\"Not user")
                            :headers $ {}
                            :body $ {} (:message "\"not open for all users...")
                if
                  = :options $ :method req-data
                  {} (:code 200) (:message "\"OK")
                    :headers $ {} ("\"Access-Control-Allow-Origin" "\"*")
                  {} (:code 404) (:message "\"Non hit")
                    :headers $ {}
                    :body $ {} (:message "\"only token is impelemented")
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () (skir/reset-req-handler! on-request!) (println "\"Reloaded.")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require ("\"cos-nodejs-sdk-v5" :default COS) (skir.core :as skir)
            app.$meta :refer $ calcit-dirname
            "\"node:path" :as path
            "\"node:url" :refer $ fileURLToPath
            "\"node:fs" :as fs
            app.http :refer $ extract-body
