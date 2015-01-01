; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; basics
(add-to-list 'load-path "~/.emacs.d/elisp")
(setq make-backup-files nil)

;; char code
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(setq locale-coding-system 'utf-8)

;; formatting rules
(setq-default indent-tabs-mode nil)
(setq-default show-trailing-whitespace t)
(setq default-tab-width 4)

;; key bindings
(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-c C-c") 'compile)
(global-set-key (kbd "C-c C-n") 'next-error)
(global-set-key (kbd "C-c C-p") 'previous-error)
(global-set-key (kbd "M-/") 'dabbrev-expand)
(global-set-key (kbd "C-c n") 'multi-term-next)
(global-set-key (kbd "C-c p") 'multi-term-prev)

;; appearance
(setq inhibit-startup-screen t)
(line-number-mode t)
(column-number-mode t)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")

;; auto-insert
(require 'autoinsert)
(auto-insert-mode 1)
(setq auto-insert-query nil)
(setq auto-insert-directory "~/.emacs.d/share/")
(add-hook 'find-file-hooks 'auto-insert)
(setq auto-insert-alist
      (nconc '(
               ("\\.html$" . "template.html")
               ) auto-insert-alist))

;; multi-term
(require 'multi-term)
(setq multi-term-program shell-file-name)
(add-hook 'term-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)
            (define-key term-raw-map (kbd "C-n") '(lambda()
                                                    (interactive)
                                                    (term-send-raw-string "\C-n")))
            (define-key term-raw-map (kbd "C-p") '(lambda()
                                                    (interactive)
                                                    (term-send-raw-string "\C-p")))
            (define-key term-raw-map (kbd "C-y") 'term-paste)
            (define-key term-raw-map (kbd "C-h") 'term-send-backspace)
            (define-key term-raw-map (kbd "C-v") nil)))

;; javascript-mode
(setq javascript-indent-level 2)

;; js-mode
(setq js-indent-level 2)

;; css-mode (default)
(setq css-indent-offset 2)

;; css-mode (yet another)
(setq cssm-indent-level 2)
(setq cssm-indent-function #'cssm-c-style-indenter)

