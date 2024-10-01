(define-module (fj-packages gtk)
  #:use-module (guix build-system copy)
  #:use-module (guix git-download)
  #:use-module (guix packages)
  #:use-module ((guix licenses) #:prefix license:)
 )

(define-public gruvbox-dark-gtk
  (package
   (name "gruvbox-dark-gtk")
   (version "1.0.2")
   (source
    (origin
     (method git-fetch)
     (uri
      (git-reference
       (url "https://github.com/jmattheis/gruvbox-dark-gtk")
       (commit (string-append "v" version))))
     (file-name (git-file-name name version))
     (sha256
      (base32
       "1gn8bkcaqx21jdrpc2cxv50lfzx4245jvhsxsrln6k2cryikbbqb"))))
   (build-system copy-build-system)
   (arguments
    `(#:install-plan
      `(("." "share/themes/gruvbox-dark-gtk"
         #:exclude ("README.md" "LICENSE" "^.github$")))))
   (synopsis "A colorless gruvbox dark theme for GTK 2.0 and 3.0.")
   (description "A colorless gruvbox dark theme for GTK 2.0 and 3.0.")
   (home-page "https://github.com/jmattheis/gruvbox-dark-gtk")
   (license license:gpl3)))

(define-public gruvbox-dark-icons-gtk
  (package
   (name "gruvbox-dark-icons-gtk")
   (version "1.0.0")
   (source
    (origin
     (method git-fetch)
     (uri
      (git-reference
       (url "https://github.com/jmattheis/gruvbox-dark-icons-gtk")
       (commit (string-append "v" version))))
     (file-name (git-file-name name version))
     (sha256
      (base32
       "1fks2rrrb62ybzn8gqan5swcgksrb579vk37bx4xpwkc552dz2z2"))))
   (build-system copy-build-system)
   (arguments
    `(#:install-plan
      `(("." "share/icons/gruvbox-dark-icons-gtk"
         #:exclude ("README.md")))))
   (synopsis "Icons for the gruvbox-dark theme.")
   (description "Icons for the gruvbox-dark theme.")
   (home-page "https://github.com/jmattheis/gruvbox-dark-icons-gtk")
   (license #f)))
