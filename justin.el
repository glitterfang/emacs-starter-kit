;; The Justin Woodbridge Emacs Configuration.
;; Started for the last time on July 17 2011 at 11:22 AM.

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

(setq-default tab-width 2)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "C-w C-c")


;; Don't clutter up the working directory with backup files and swap
;; files

;; Taken from topfunky: https://github.com/topfunky/emacs-starter-kit/blob/master/topfunky/meta.el

(defvar autosave-dir
  (concat "/tmp/emacs_autosaves/" (user-login-name) "/"))
(make-directory autosave-dir t)

(defun auto-save-file-name-p (filename)
  (string-match "^#.*#$" (file-name-nondirectory filename)))

(defun make-auto-save-file-name ()
  (concat autosave-dir
          (if buffer-file-name
              (concat "#" (file-name-nondirectory buffer-file-name) "#")
            (expand-file-name
             (concat "#%" (buffer-name) "#")))))


(set 'tab-width 2)
(setq column-number-mode t)

;; Meta command key
(global-set-key [(meta up)] 'beginning-of-buffer)
(global-set-key [(meta down)] 'end-of-buffer)

 ;; ;; (setq mac-option-key-is-meta nil
          ;; mac-command-key-is-meta t
 ;;          mac-command-modifier 'meta
          ;; mac-option-modifier nil)

'(ns-alternate-modifier (quote none))
'(ns-command-modifier (quote meta)) 

(textmate-mode)

(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

