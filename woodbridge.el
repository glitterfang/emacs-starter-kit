;; The Woodbridge Color Theme
;; Color pallete ripped from
;; http://phest.github.com/synthcity/

(require 'color-theme)

(defun color-theme-woodbridge ()
  "A color theme by Justin Woodbridge"
  (interactive)
  (color-theme-install
   '(color-theme-woodbridge
     ((foreground-color . "#FFF")
      (background-color . "#000") 
      (background-mode . dark))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (default ((t (nil))))
      (font-lock-builtin-face ((t (:italic t :foreground "#FFF"))))
        (font-lock-comment-face ((t (:foreground "#835c8d"))))
       (font-lock-comment-delimiter-face ((t (:foreground "#835c8d"))))
       (font-lock-constant-face ((t (:bold t :foreground"#33c4fa"))))))      
       (font-lock-doc-string-face ((t (:foreground "#00dc49"))))
       (font-lock-doc-face ((t (:foreground "gray"))))
       (font-lock-reference-face ((t (:foreground "red"))))
        (font-lock-function-name-face ((t (:foreground "#f1ee4f"))))
       (font-lock-keyword-face ((t (:bold t :foreground "#fc6433"))))
       (font-lock-preprocessor-face ((t (:foreground "#e3ea94"))))
       (font-lock-string-face ((t (:foreground "#00dc49"))))
       (font-lock-type-face ((t (:bold t :foreground "#FFF"))))
       (font-lock-variable-name-face ((t (:foreground "#92fcfe"))))
       (font-lock-warning-face ((t (:bold t :italic nil :underline nil 
                                     :foreground "yellow"))))
       (hl-line ((t (:background "#2b2a27"))))
       (mode-line ((t (:foreground "#ffffff" :background "#818183"))))
       (region ((t (:foreground nil :background "#818183"))))

       (ido-first-match ((t (:foreground "#33c4fa"))))
       (ido-only-match ((t (:foreground "#33c4fa"))))
       (ido-subdir ((t (:foreground "#FFF"))))
       
       (minibuffer-prompt ((t (:foreground "#835c8d"))))
    )


