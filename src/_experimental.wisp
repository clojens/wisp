
;; Core modules
(import fs "fs")
(import path "path")

;; Additional modules
(import i18n "i18next")

;; Sequences, lists, collections
(import [cons conj list list? seq vec
         empty? count
         first second third rest last butlast
         take drop
         concat reverse sort
         map filter reduce] "../src/sequence")
(import [str inc dec even? odd? vals =] "../src/runtime")

;; Helper functions
(defn log [msg] (. console log msg))

;; Vars
(def proj-dir (.resolve path "../../../../"))
(def filter (require "fuzzy-filter"))
;(log (filter "cs" ["cheese", "pickles", "crackers", "pirate attack", "cs!!"]))


(def docpad
 {
  :numcpus      (:length (.cpus (require "os")))
  :configfile   (. (require "nconf") file {:file (.join path proj-dir "/package.json")})
  :dependencies (. (require "nconf") get "dependencies")
  :instance     (. (require "docpad") createInstance)
  :licenses     (. (require "lawyer") checkLicenses proj-dir)
  })

(def config-i18n {
  :preload        ["nl-NL"]
  :lng            "nl-NL"
  :fallbackLng    false ;; en
  :load           "current"
  :detectLngQS    "taal'"
  :useCookie      true
  :debug          true
  :keyseparator   "::"
  :nsseparator    ":::"
  :resGetPath     (.join path proj-dir "/etc/i18n" "/__lng__/__ns__.json")
  :ns             {:namespaces ["app"] :defaultNs "app"}
  })


(defn main

 )



(defn t [] (. i18n init config-i18n))
(log 't)
