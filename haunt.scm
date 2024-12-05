(use-modules (haunt asset)
             (haunt builder flat-pages)
             (haunt reader commonmark)
             (haunt site))


(define (my-template site title body)
  `((doctype html)
    (head
     (meta (@ (charset "utf-8")))
     (meta (@ (name "viewport")
              (content "width=device-width, initial-scale=1"))))
    (title ,title)
    (link (@ (rel "stylesheet")
             (href "https://unpkg.com/terminal.css@0.7.4/dist/terminal.min.css")))
    (body (@ (class "terminal"))
          (div (@ (class "container")))
          ,body)))

(site #:title "Rockaway for Palestine"
      #:readers (list commonmark-reader)
      #:build-directory "docs"
      #:builders (list (flat-pages "in" #:template my-template)))


