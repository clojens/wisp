


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

(def stylus (require "stylus"))
(.log console this)