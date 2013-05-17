
(defmacro chain
  ([x form] (list '. x form))
  ([x form & more] (concat (list 'chain (list '. x form)) more)))

(def pointless (fn [n] n))
(log (pointless (+ 3 4)))

(log (.join path proj-dir "/abc.com"))
;(log (:configfile docpad))

;(log (:licenses docpad))
;(log (:instance docpad))
;(log process)
;(log module)
;(chain nconf env (file {:file "../../../../package.json"}))

(defn exampl1 []
(log (map list [1 2 3]
              '(\a \b \c)
              '(4 9 3 5 6 5))))


