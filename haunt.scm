(use-modules (haunt asset)
             (haunt builder flat-pages)
             (haunt reader commonmark)
             (haunt site))


(define (my-template site title body)
  body)

(site #:title "Rockaway for Palestine"
      #:readers (list commonmark-reader)
      #:build-directory "docs"
      #:builders (list (flat-pages "in" #:template my-template)))
