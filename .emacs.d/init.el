; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; basics
(add-to-list 'load-path "elisp")
(setq make-backup-files nil)

;; char code
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(setq locale-coding-system 'utf-8)

;; formatting rules
(custom-set-variables '(tab-width 4))
(setq-default indent-tabs-mode nil)
(setq-default show-trailing-whitespace t)

;; key bindings
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\C-c\C-c" 'compile)
(global-set-key "\C-c\C-n" 'next-error)
(global-set-key "\C-c\C-p" 'previous-error)
(global-set-key "\M-/" 'dabbrev-expand)

;; appearance
(setq inhibit-startup-screen t)
(line-number-mode t)
(column-number-mode t)


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

;; javascript-mode
(setq javascript-indent-level 2)

;; js-mode
(setq js-indent-level 2)

;; css-mode (default)
(setq css-indent-offset 2)

;; css-mode (yet another)
(setq cssm-indent-level 2)
(setq cssm-indent-function #'cssm-c-style-indenter)
