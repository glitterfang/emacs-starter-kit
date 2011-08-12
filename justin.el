;; The Justin Woodbridge Emacs Configuration.
;; Started for the last time on July 17 2011 at 11:22 AM.

;; Its going to take a while to get the vim out of my fingers.



 (setenv "PATH" (concat "/Users/justin/bin:/usr/local/bin:" (getenv "PATH"))) 

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
;; (color-theme-vivid-chalk)
(color-theme-woodbridge)

(setq-default tab-width 2)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)


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



(textmate-mode)

(rvm-use-default)

;; Peepopen

(add-to-list 'load-path "~/.emacs.d/vendor/")
(require 'peepopen)
(setq ns-pop-up-frames nil)

(global-linum-mode t)

;; Revert annoying indent behavior of DEL in Sass.
(add-hook 'sass-mode-hook (lambda () (define-key sass-mode-map (kbd "<backspace>") 'delete-backward-char)))
;; Org Mode

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; (setq org-startup-indented t) 

;; Ack Integration

(add-to-list 'load-path "~/.emacs.d/vendor/full-ack")
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)


;;  A little bit of lisp

(setq inferior-lisp-program "/usr/local/bin/sbcl")

(set-face-attribute 'default nil :font "Inconsolata")

(add-hook 'text-mode 'org-mode)


;; (add-to-list 'load-path "~/.emacs.d/vendor/jekyll")
;; (require 'jekyll)

;; (global-set-key (kbd "C-c b P") 'jekyll-publish-post)
;; (global-set-key (kbd "C-c b p") (lambda () 
;;                                  (interactive)
;;                                  (find-file "~/Sources/blog/_posts/")))
;; (global-set-key (kbd "C-c b d") (lambda () 


;; (add-to-list 'load-path "~/.emacs.d/vendor/itunes")
;; (require 'itunes)

(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
    the minibuffer. Else, if mark is active, indents region. Else if
    point is at the end of a symbol, expands it. Else indents the
    current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (hippie-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
         (hippie-expand nil)
        (indent-for-tab-command)))))
(global-set-key (kbd "TAB") 'smart-tab)

(setq tetris-score-file
  "~/.emacs.d/tetris-scores")

(define-key *textmate-mode-map* [(super t)] 'peepopen-goto-file-gui)
