
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |skir/ |lilac/
  :entries $ {}
    :test $ {} (:init-fn |app.test/main!) (:reload-fn |app.test/reload!)
      :modules $ [] |calcit-test/
  :files $ {}
    |app.http $ %{} :FileEntry
      :defs $ {}
        |extract-body $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1694963654797) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1694963654797) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1694963654797) (:by |u0) (:text |extract-body)
              |h $ %{} :Expr (:at 1694963654797) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1694963658068) (:by |u0) (:text |req)
                  |b $ %{} :Leaf (:at 1694963663526) (:by |u0) (:text |cb)
              |l $ %{} :Expr (:at 1694963664050) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1694963664887) (:by |u0) (:text |let)
                  |b $ %{} :Expr (:at 1694963665101) (:by |u0)
                    :data $ {}
                      |T $ %{} :Expr (:at 1694963665227) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694963670711) (:by |u0) (:text |*buf)
                          |b $ %{} :Expr (:at 1694963682638) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1694963683662) (:by |u0) (:text |atom)
                              |T $ %{} :Leaf (:at 1694963682151) (:by |u0) (:text "|\"")
                  |h $ %{} :Expr (:at 1694963689429) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1694963759231) (:by |u0) (:text |.!on)
                      |b $ %{} :Leaf (:at 1694963694657) (:by |u0) (:text |req)
                      |h $ %{} :Leaf (:at 1694963761588) (:by |u0) (:text "|\"data")
                      |l $ %{} :Expr (:at 1694963762164) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694963762410) (:by |u0) (:text |fn)
                          |b $ %{} :Expr (:at 1694963762829) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694963763266) (:by |u0) (:text |d)
                          |h $ %{} :Expr (:at 1694963767540) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694963769327) (:by |u0) (:text |swap!)
                              |b $ %{} :Leaf (:at 1694963772308) (:by |u0) (:text |*buf)
                              |h $ %{} :Leaf (:at 1694963776259) (:by |u0) (:text |str)
                              |l $ %{} :Leaf (:at 1694963777124) (:by |u0) (:text |d)
                  |l $ %{} :Expr (:at 1694963779178) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1694963784238) (:by |u0) (:text |.!on)
                      |b $ %{} :Leaf (:at 1694963785095) (:by |u0) (:text |req)
                      |h $ %{} :Leaf (:at 1694963786338) (:by |u0) (:text "|\"end")
                      |l $ %{} :Expr (:at 1694963787794) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694963788058) (:by |u0) (:text |fn)
                          |b $ %{} :Expr (:at 1694963789704) (:by |u0)
                            :data $ {}
                          |h $ %{} :Expr (:at 1694963791022) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694963792887) (:by |u0) (:text |cb)
                              |b $ %{} :Expr (:at 1694963927775) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1694963930003) (:by |u0) (:text |parse-cirru-edn)
                                  |T $ %{} :Expr (:at 1694963794031) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694963794818) (:by |u0) (:text |deref)
                                      |b $ %{} :Leaf (:at 1694963796359) (:by |u0) (:text |*buf)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1694963635592) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1694963635592) (:by |u0) (:text |ns)
            |b $ %{} :Leaf (:at 1694963635592) (:by |u0) (:text |app.http)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |handle-token $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1694964114345) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1694964114345) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1694964114345) (:by |u0) (:text |handle-token)
              |h $ %{} :Expr (:at 1694964114345) (:by |u0)
                :data $ {}
                  |8 $ %{} :Leaf (:at 1694965169989) (:by |u0) (:text |bucket)
                  |K $ %{} :Leaf (:at 1694965167986) (:by |u0) (:text |app-id)
                  |V $ %{} :Leaf (:at 1694964120155) (:by |u0) (:text |secret)
                  |b $ %{} :Leaf (:at 1694965709270) (:by |u0) (:text |file-key)
                  |h $ %{} :Leaf (:at 1694964114345) (:by |u0) (:text |cb)
              |l $ %{} :Expr (:at 1694965091057) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1694965398768) (:by |u0) (:text |&let)
                  |L $ %{} :Expr (:at 1694965389213) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1694965470020) (:by |u0) (:text |cos-obj)
                      |b $ %{} :Expr (:at 1694965419151) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694965419151) (:by |u0) (:text |new)
                          |b $ %{} :Leaf (:at 1694965419151) (:by |u0) (:text |COS)
                          |h $ %{} :Expr (:at 1694965419151) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694965419151) (:by |u0) (:text |js-object)
                              |b $ %{} :Expr (:at 1694965419151) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694965419151) (:by |u0) (:text |:SecretId)
                                  |b $ %{} :Leaf (:at 1694973692235) (:by |u0) (:text |app-id)
                              |h $ %{} :Expr (:at 1694965419151) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694965419151) (:by |u0) (:text |:SecretKey)
                                  |b $ %{} :Leaf (:at 1694965419151) (:by |u0) (:text |secret)
                  |T $ %{} :Expr (:at 1694965324035) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1694965327628) (:by |u0) (:text |w-js-log)
                      |T $ %{} :Expr (:at 1694964121310) (:by |u0)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1694964130783) (:by |u0) (:text |.!getObjectUrl)
                          |T $ %{} :Leaf (:at 1694965471813) (:by |u0) (:text |cos-obj)
                          |b $ %{} :Expr (:at 1694964136608) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694964139936) (:by |u0) (:text |js-object)
                              |b $ %{} :Expr (:at 1694964141141) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694964146601) (:by |u0) (:text |:Bucket)
                                  |b $ %{} :Leaf (:at 1694965174854) (:by |u0) (:text |bucket)
                              |h $ %{} :Expr (:at 1694964148271) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694964151067) (:by |u0) (:text |:Region)
                                  |b $ %{} :Leaf (:at 1695231766430) (:by |u0) (:text "|\"ap-shanghai")
                              |l $ %{} :Expr (:at 1694964170804) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694964171559) (:by |u0) (:text |:Key)
                                  |b $ %{} :Expr (:at 1694965736927) (:by |u0)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1694965737641) (:by |u0) (:text |str)
                                      |L $ %{} :Leaf (:at 1694965741996) (:by |u0) (:text "|\"cos-up/")
                                      |T $ %{} :Expr (:at 1694965711730) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1694965715635) (:by |u0) (:text |or)
                                          |b $ %{} :Leaf (:at 1694965717664) (:by |u0) (:text |file-key)
                                          |h $ %{} :Leaf (:at 1694965745179) (:by |u0) (:text "|\"demo0")
                              |o $ %{} :Expr (:at 1694964172280) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694964173611) (:by |u0) (:text |:Method)
                                  |b $ %{} :Leaf (:at 1694964175311) (:by |u0) (:text "|\"PUT")
                              |q $ %{} :Expr (:at 1694964176301) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694964177572) (:by |u0) (:text |:Sign)
                                  |b $ %{} :Leaf (:at 1694973219376) (:by |u0) (:text |true)
                          |h $ %{} :Expr (:at 1694964179797) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694964180148) (:by |u0) (:text |fn)
                              |b $ %{} :Expr (:at 1694964180436) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694964181375) (:by |u0) (:text |err)
                                  |b $ %{} :Leaf (:at 1694964181994) (:by |u0) (:text |data)
                              |h $ %{} :Expr (:at 1694964184670) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694964191717) (:by |u0) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1694964196675) (:by |u0) (:text "|\"COS DATA:")
                                  |e $ %{} :Leaf (:at 1694964199891) (:by |u0) (:text |err)
                                  |h $ %{} :Leaf (:at 1694964197623) (:by |u0) (:text |data)
                              |l $ %{} :Expr (:at 1694965755786) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1694965756213) (:by |u0) (:text |if)
                                  |L $ %{} :Expr (:at 1694965756448) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694965757227) (:by |u0) (:text |some?)
                                      |b $ %{} :Leaf (:at 1694965759167) (:by |u0) (:text |err)
                                  |P $ %{} :Expr (:at 1694965759739) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694965760753) (:by |u0) (:text |cb)
                                      |b $ %{} :Expr (:at 1694965761172) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1694965762235) (:by |u0) (:text |{})
                                          |b $ %{} :Expr (:at 1694965763578) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694965764197) (:by |u0) (:text |:code)
                                              |b $ %{} :Leaf (:at 1694965765304) (:by |u0) (:text |400)
                                          |h $ %{} :Expr (:at 1694965765904) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694965766708) (:by |u0) (:text |:body)
                                              |b $ %{} :Expr (:at 1694965766995) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694965767473) (:by |u0) (:text |{})
                                                  |b $ %{} :Expr (:at 1694965767759) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1694965768956) (:by |u0) (:text |:message)
                                                      |b $ %{} :Expr (:at 1694965769198) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1694965769733) (:by |u0) (:text |str)
                                                          |b $ %{} :Leaf (:at 1694965771296) (:by |u0) (:text |err)
                                  |T $ %{} :Expr (:at 1694964201128) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694964201930) (:by |u0) (:text |cb)
                                      |b $ %{} :Expr (:at 1694964202433) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1694964202754) (:by |u0) (:text |{})
                                          |b $ %{} :Expr (:at 1694964203074) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694964205531) (:by |u0) (:text |:code)
                                              |b $ %{} :Leaf (:at 1694964209294) (:by |u0) (:text |200)
                                          |e $ %{} :Expr (:at 1694972076546) (:by |u0)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1694972078211) (:by |u0) (:text |:headers)
                                              |T $ %{} :Expr (:at 1694972056828) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694972056828) (:by |u0) (:text |{})
                                                  |b $ %{} :Expr (:at 1694972075657) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1694972056828) (:by |u0) (:text "|\"Access-Control-Allow-Origin")
                                                      |b $ %{} :Leaf (:at 1694972056828) (:by |u0) (:text "|\"*")
                                          |h $ %{} :Expr (:at 1694964210133) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694964214934) (:by |u0) (:text |:body)
                                              |b $ %{} :Expr (:at 1694964211759) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694964212093) (:by |u0) (:text |{})
                                                  |b $ %{} :Expr (:at 1694965751098) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1694965751423) (:by |u0) (:text |:url)
                                                      |b $ %{} :Expr (:at 1694965812114) (:by |u0)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1694965813954) (:by |u0) (:text |.-Url)
                                                          |T $ %{} :Leaf (:at 1694965753682) (:by |u0) (:text |data)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1606310749711) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1606310749711) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1606310749711) (:by |u0) (:text |main!)
              |r $ %{} :Expr (:at 1606310749711) (:by |u0)
                :data $ {}
              |t $ %{} :Expr (:at 1694961031491) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1694961032244) (:by |u0) (:text |println)
                  |b $ %{} :Leaf (:at 1695140014843) (:by |u0) (:text "|\"COS get")
                  |h $ %{} :Expr (:at 1694961211455) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1694961217147) (:by |u0) (:text |.-getAuthorization)
                      |T $ %{} :Leaf (:at 1694961152928) (:by |u0) (:text |COS)
              |u $ %{} :Expr (:at 1694961731715) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1694961740875) (:by |u0) (:text |skir/create-server!)
                  |b $ %{} :Leaf (:at 1694961746239) (:by |u0) (:text |on-request!)
                  |h $ %{} :Expr (:at 1694961746988) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1694961747280) (:by |u0) (:text |{})
                      |b $ %{} :Expr (:at 1695139911459) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695139912278) (:by |u0) (:text |:port)
                          |b $ %{} :Expr (:at 1695139930088) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695139961182) (:by |u0) (:text |js/parseInt)
                              |T $ %{} :Expr (:at 1695139913109) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695139918844) (:by |u0) (:text |get-env)
                                  |b $ %{} :Leaf (:at 1695139923183) (:by |u0) (:text "|\"PORT")
                                  |h $ %{} :Leaf (:at 1695139929131) (:by |u0) (:text "|\"4000")
        |on-request! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1694961774169) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1694961775404) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1694961774169) (:by |u0) (:text |on-request!)
              |h $ %{} :Expr (:at 1694961774169) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1694961779866) (:by |u0) (:text |req-data)
                  |b $ %{} :Leaf (:at 1694961780547) (:by |u0) (:text |res)
              |j $ %{} :Expr (:at 1694962052208) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1694962110795) (:by |u0) (:text |println)
                  |b $ %{} :Expr (:at 1694962815658) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1694962826323) (:by |u0) (:text |format-cirru-edn)
                      |T $ %{} :Expr (:at 1694962124952) (:by |u0)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1694962125596) (:by |u0) (:text |->)
                          |L $ %{} :Leaf (:at 1694962127506) (:by |u0) (:text |req-data)
                          |T $ %{} :Expr (:at 1694962111411) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1694962112945) (:by |u0) (:text |dissoc)
                              |b $ %{} :Leaf (:at 1694962116810) (:by |u0) (:text |:original-request)
                          |b $ %{} :Expr (:at 1694962129405) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694962130273) (:by |u0) (:text |dissoc)
                              |b $ %{} :Leaf (:at 1694962131581) (:by |u0) (:text |:headers)
              |l $ %{} :Expr (:at 1694962474446) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1694962560030) (:by |u0) (:text |if)
                  |F $ %{} :Expr (:at 1694962596988) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1694962597565) (:by |u0) (:text |and)
                      |T $ %{} :Expr (:at 1694962560587) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694962560689) (:by |u0) (:text |=)
                          |h $ %{} :Leaf (:at 1694962678761) (:by |u0) (:text |:post)
                          |l $ %{} :Expr (:at 1694962565387) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694962565387) (:by |u0) (:text |:method)
                              |b $ %{} :Leaf (:at 1694962565387) (:by |u0) (:text |req-data)
                      |b $ %{} :Expr (:at 1694962599496) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694962599496) (:by |u0) (:text |=)
                          |b $ %{} :Leaf (:at 1694962599496) (:by |u0) (:text "|\"/token")
                          |h $ %{} :Expr (:at 1694962599496) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694962599496) (:by |u0) (:text |:path)
                              |b $ %{} :Leaf (:at 1694962599496) (:by |u0) (:text |req-data)
                  |FT $ %{} :Expr (:at 1694962991279) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1694962992122) (:by |u0) (:text |let)
                      |L $ %{} :Expr (:at 1694962992617) (:by |u0)
                        :data $ {}
                          |T $ %{} :Expr (:at 1694962992617) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694962992617) (:by |u0) (:text |secrets)
                              |b $ %{} :Expr (:at 1694962992617) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694962992617) (:by |u0) (:text |parse-cirru-edn)
                                  |b $ %{} :Expr (:at 1694962992617) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694962992617) (:by |u0) (:text |fs/readFileSync)
                                      |b $ %{} :Expr (:at 1694962992617) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1694962992617) (:by |u0) (:text |path/join)
                                          |b $ %{} :Expr (:at 1694962992617) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694962992617) (:by |u0) (:text |fileURLToPath)
                                              |b $ %{} :Leaf (:at 1694962992617) (:by |u0) (:text |js/import.meta.url)
                                          |h $ %{} :Leaf (:at 1694962992617) (:by |u0) (:text "|\"../../secrets.cirru")
                                      |h $ %{} :Leaf (:at 1694962992617) (:by |u0) (:text "|\"utf8")
                          |b $ %{} :Expr (:at 1694963113888) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694963115360) (:by |u0) (:text |data)
                              |b $ %{} :Expr (:at 1694963139224) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694963139602) (:by |u0) (:text |{})
                      |T $ %{} :Expr (:at 1694963886067) (:by |u0)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1694963888365) (:by |u0) (:text |fn)
                          |L $ %{} :Expr (:at 1694963888992) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694963895906) (:by |u0) (:text |cb)
                          |T $ %{} :Expr (:at 1694963819488) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1694963820311) (:by |u0) (:text |extract-body)
                              |L $ %{} :Expr (:at 1694963822360) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694963825324) (:by |u0) (:text |:original-request)
                                  |b $ %{} :Leaf (:at 1694963826988) (:by |u0) (:text |req-data)
                              |T $ %{} :Expr (:at 1694963829908) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1694963830422) (:by |u0) (:text |fn)
                                  |L $ %{} :Expr (:at 1694963830737) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694963831768) (:by |u0) (:text |body)
                                  |X $ %{} :Expr (:at 1694963841324) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694963842157) (:by |u0) (:text |println)
                                      |b $ %{} :Leaf (:at 1694963844142) (:by |u0) (:text "|\"BODY")
                                      |h $ %{} :Leaf (:at 1694963844807) (:by |u0) (:text |body)
                                  |b $ %{} :Expr (:at 1694962995113) (:by |u0)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1694962995596) (:by |u0) (:text |if)
                                      |L $ %{} :Expr (:at 1694963008831) (:by |u0)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1694963009681) (:by |u0) (:text |and)
                                          |T $ %{} :Expr (:at 1694962995972) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694962996091) (:by |u0) (:text |=)
                                              |X $ %{} :Expr (:at 1694963004030) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694963005723) (:by |u0) (:text |:user)
                                                  |b $ %{} :Leaf (:at 1694963956642) (:by |u0) (:text |body)
                                              |b $ %{} :Expr (:at 1694962998424) (:by |u0)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1694963001765) (:by |u0) (:text |:user)
                                                  |T $ %{} :Leaf (:at 1694962997936) (:by |u0) (:text |secrets)
                                          |b $ %{} :Expr (:at 1694962995972) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694962996091) (:by |u0) (:text |=)
                                              |X $ %{} :Expr (:at 1694963004030) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694963015276) (:by |u0) (:text |:pass)
                                                  |b $ %{} :Leaf (:at 1694963958850) (:by |u0) (:text |body)
                                              |b $ %{} :Expr (:at 1694962998424) (:by |u0)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1694963019296) (:by |u0) (:text |:pass-md5)
                                                  |T $ %{} :Leaf (:at 1694962997936) (:by |u0) (:text |secrets)
                                      |T $ %{} :Expr (:at 1694964072790) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1694964086616) (:by |u0) (:text |handle-token)
                                          |X $ %{} :Expr (:at 1694965159056) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694965161597) (:by |u0) (:text |:bucket)
                                              |b $ %{} :Leaf (:at 1694965163905) (:by |u0) (:text |secrets)
                                          |b $ %{} :Expr (:at 1694964088819) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694964093452) (:by |u0) (:text |:app-id)
                                              |b $ %{} :Leaf (:at 1694964088819) (:by |u0) (:text |secrets)
                                          |h $ %{} :Expr (:at 1694964088819) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694964098454) (:by |u0) (:text |:secret)
                                              |b $ %{} :Leaf (:at 1694964088819) (:by |u0) (:text |secrets)
                                          |j $ %{} :Expr (:at 1694965676070) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694965681589) (:by |u0) (:text |:file-key)
                                              |b $ %{} :Leaf (:at 1694965680094) (:by |u0) (:text |body)
                                          |l $ %{} :Leaf (:at 1694964112871) (:by |u0) (:text |cb)
                                      |b $ %{} :Expr (:at 1695141878169) (:by |u0)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1695141879027) (:by |u0) (:text |cb)
                                          |T $ %{} :Expr (:at 1694963039350) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1694963039765) (:by |u0) (:text |{})
                                              |b $ %{} :Expr (:at 1694963040249) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694963041579) (:by |u0) (:text |:code)
                                                  |b $ %{} :Leaf (:at 1694963042563) (:by |u0) (:text |403)
                                              |h $ %{} :Expr (:at 1694963043516) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694963046275) (:by |u0) (:text |:message)
                                                  |b $ %{} :Leaf (:at 1694963049795) (:by |u0) (:text "|\"Not user")
                                              |l $ %{} :Expr (:at 1694963051391) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694963053806) (:by |u0) (:text |:headers)
                                                  |b $ %{} :Expr (:at 1694963054030) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1694963054399) (:by |u0) (:text |{})
                                              |o $ %{} :Expr (:at 1694963055484) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1694963056355) (:by |u0) (:text |:body)
                                                  |b $ %{} :Expr (:at 1694963056738) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1694963057054) (:by |u0) (:text |{})
                                                      |b $ %{} :Expr (:at 1694963058243) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1694963060708) (:by |u0) (:text |:message)
                                                          |b $ %{} :Leaf (:at 1694963069312) (:by |u0) (:text "|\"not open for all users...")
                  |T $ %{} :Expr (:at 1694971986856) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1694971987353) (:by |u0) (:text |if)
                      |L $ %{} :Expr (:at 1694971988850) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694971988991) (:by |u0) (:text |=)
                          |b $ %{} :Leaf (:at 1694971990734) (:by |u0) (:text |:options)
                          |h $ %{} :Expr (:at 1694971993209) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694971993209) (:by |u0) (:text |:method)
                              |b $ %{} :Leaf (:at 1694971993209) (:by |u0) (:text |req-data)
                      |P $ %{} :Expr (:at 1694971994407) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694971994833) (:by |u0) (:text |{})
                          |b $ %{} :Expr (:at 1694971995542) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694971996492) (:by |u0) (:text |:code)
                              |b $ %{} :Leaf (:at 1694972000861) (:by |u0) (:text |200)
                          |h $ %{} :Expr (:at 1694972001896) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694972003323) (:by |u0) (:text |:message)
                              |b $ %{} :Leaf (:at 1694972004128) (:by |u0) (:text "|\"OK")
                          |l $ %{} :Expr (:at 1694972006038) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694972007672) (:by |u0) (:text |:headers)
                              |b $ %{} :Expr (:at 1694972008020) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694972008294) (:by |u0) (:text |{})
                                  |b $ %{} :Expr (:at 1694972008835) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694972024712) (:by |u0) (:text "|\"Access-Control-Allow-Origin")
                                      |b $ %{} :Leaf (:at 1694972026676) (:by |u0) (:text "|\"*")
                      |T $ %{} :Expr (:at 1694961781144) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1694961784635) (:by |u0) (:text |{})
                          |b $ %{} :Expr (:at 1694961785982) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694961786536) (:by |u0) (:text |:code)
                              |b $ %{} :Leaf (:at 1694962696757) (:by |u0) (:text |404)
                          |h $ %{} :Expr (:at 1694961788900) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694961791544) (:by |u0) (:text |:message)
                              |b $ %{} :Leaf (:at 1694962702571) (:by |u0) (:text "|\"Non hit")
                          |l $ %{} :Expr (:at 1694961793252) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694961794463) (:by |u0) (:text |:headers)
                              |b $ %{} :Expr (:at 1694961794720) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694961794988) (:by |u0) (:text |{})
                          |o $ %{} :Expr (:at 1694961795807) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1694961796481) (:by |u0) (:text |:body)
                              |b $ %{} :Expr (:at 1694961796748) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1694961797097) (:by |u0) (:text |{})
                                  |b $ %{} :Expr (:at 1694962000326) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1694962001801) (:by |u0) (:text |:message)
                                      |b $ %{} :Leaf (:at 1694962712108) (:by |u0) (:text "|\"only token is impelemented")
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1606310753106) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1606310753106) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1606310753106) (:by |u0) (:text |reload!)
              |r $ %{} :Expr (:at 1606310753106) (:by |u0)
                :data $ {}
              |t $ %{} :Expr (:at 1694961765221) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1694961770982) (:by |u0) (:text |skir/reset-req-handler!)
                  |b $ %{} :Leaf (:at 1694961773811) (:by |u0) (:text |on-request!)
              |v $ %{} :Expr (:at 1606310801441) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1694961022767) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1625293407488) (:by |u0) (:text "|\"Reloaded.")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1606310745262) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1606310745262) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1606310745262) (:by |u0) (:text |app.main)
            |r $ %{} :Expr (:at 1625340359278) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1625340360591) (:by |u0) (:text |:require)
                |b $ %{} :Expr (:at 1694961144809) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1694961145377) (:by |u0) (:text "|\"cos-nodejs-sdk-v5")
                    |b $ %{} :Leaf (:at 1694961178747) (:by |u0) (:text |:default)
                    |h $ %{} :Leaf (:at 1694961149443) (:by |u0) (:text |COS)
                |h $ %{} :Expr (:at 1694961756287) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1694961758311) (:by |u0) (:text |skir.core)
                    |b $ %{} :Leaf (:at 1694961760028) (:by |u0) (:text |:as)
                    |h $ %{} :Leaf (:at 1694961760548) (:by |u0) (:text |skir)
                |l $ %{} :Expr (:at 1694962173955) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1694962223445) (:by |u0) (:text |app.$meta)
                    |b $ %{} :Leaf (:at 1694962179520) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1694962181200) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1694962199824) (:by |u0) (:text |calcit-dirname)
                |o $ %{} :Expr (:at 1694962297412) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1694962300851) (:by |u0) (:text "|\"node:path")
                    |b $ %{} :Leaf (:at 1694962303942) (:by |u0) (:text |:as)
                    |h $ %{} :Leaf (:at 1694962304458) (:by |u0) (:text |path)
                |p $ %{} :Expr (:at 1694962386806) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1694962390302) (:by |u0) (:text "|\"node:url")
                    |b $ %{} :Leaf (:at 1694962391468) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1694962391731) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1694962392079) (:by |u0) (:text |fileURLToPath)
                |q $ %{} :Expr (:at 1694962326978) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1694962328650) (:by |u0) (:text "|\"node:fs")
                    |b $ %{} :Leaf (:at 1694962329184) (:by |u0) (:text |:as)
                    |h $ %{} :Leaf (:at 1694962329479) (:by |u0) (:text |fs)
                |s $ %{} :Expr (:at 1694963808961) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1694963808961) (:by |u0) (:text |app.http)
                    |b $ %{} :Leaf (:at 1694963808961) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1694963808961) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1694963808961) (:by |u0) (:text |extract-body)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
