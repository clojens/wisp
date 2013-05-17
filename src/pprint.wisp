

(import repl "repl")
(import vm "vm")
(import [transpile] "./engine/node")
(import [count list] "./sequence")
(import [compile compile-program] "./compiler")
(import [pr-str] "./ast")
(import [read push-back-reader] "./reader")
(import [upper-case lower-case capitalize split join] "./string")
(import [subs = nil? vector? fn? number? string? dictionary?
         key-values str dec inc merge] "./runtime")


(defn println [x]
  "Print to the console (naive)"
  (.log console x))

;; TODO: dynamic compiler flag not implemented yet
(def ^:dynamic bar 10)


(println (vector? [])) ;=> true
(println (Object.prototype.toString.call [])) ;=> [object Array]
(println (Object.prototype.toString.call bar)) ;
(number? bar)


(.log console bar)
(set! bar 11)
(.log console bar)

(defmacro defonce
  "defs name to have the root value of the expr iff the named var has no root value,
  else expr is unevaluated"
  {:added "1.0"}
  [name expr]
  `(let [v# (def ~name)]
     (when-not (.hasRoot v#)
       (def ~name ~expr))))

;(.log console 'defonce)
(def
 ^{ :doc "Bind to true if you want write to use pretty printing"
    :added "a.b.c"}
 *print-pretty* true)

