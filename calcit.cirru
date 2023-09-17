
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
    :test $ {} (:init-fn |app.test/main!) (:reload-fn |app.test/reload!)
      :modules $ [] |calcit-test/
  :files $ {}
    |app.main $ %{} :FileEntry
      :defs $ {}
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
                  |b $ %{} :Leaf (:at 1694961032907) (:by |u0) (:text "|\"DO")
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1606310753106) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1606310753106) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1606310753106) (:by |u0) (:text |reload!)
              |r $ %{} :Expr (:at 1606310753106) (:by |u0)
                :data $ {}
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
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
