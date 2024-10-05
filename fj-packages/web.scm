(define-module (fj-packages web)
  #:use-module (guix build-system copy)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:)
 )

(define-public arkenfox-user-js
  (package
   (name "arkenfox-user-js")
   (version "128.0")
   (source
    (origin
     (method git-fetch)
     (uri
      (git-reference
       (url "https://github.com/arkenfox/user.js")
       (commit version)))
     (file-name (git-file-name name version))
     (sha256
      (base32
       "0iacg17a8mn4fraxi5fb5cwfzkvggvj6zh1xyi000fcp9rraj4jw"))))
   (build-system copy-build-system)
   (arguments
    `(#:install-plan
      `(("./user.js" "lib/arkenfox-user-js/user.js")
        ("./updater.sh" "lib/arkenfox-user-js/updater.sh")
        ("./prefsCleaner.sh" "lib/arkenfox-user-js/prefsCleaner.sh"))))
   (synopsis "Firefox privacy, security and anti-tracking: a comprehensive user.js template for configuration and hardening.")
   (description "Firefox privacy, security and anti-tracking: a comprehensive user.js template for configuration and hardening.")
   (home-page "https://github.com/arkenfox/user.js")
   (license license:expat)))
