(use-modules (haunt asset)
             (haunt builder blog)
             (haunt builder atom)
             ;; (haunt builder assets)
             (haunt reader commonmark)
             (haunt site))

(site #:title "Rockaway for Palestine"
      #:readers (list commonmark-reader)
      #:builders (list (blog)
                       (atom-feed)
                       (atom-feeds-by-tag)))
