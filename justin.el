;; The Justin Woodbridge Emacs Configuration.
;; Started for the last on July 17 20111 at 11:22 AM.

;; Its going to take a while to get the vim out of my fingers.


;; Coffee Mode

(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; Colors

(add-to-list 'load-path "~/.emacs.d/vendor/color-theme")
(require 'color-theme)
(color-theme-initialize)

(load "~/.emacs.d/vendor/vibrant-ink")
(color-theme-vivid-chalk)

;; Font
