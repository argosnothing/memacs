;;; eglot-core.el -*- lexical-binding: t; -*-

(require 'eglot)
(require 'm-keybinds)

(setq eglot-report-progress t
      eglot-autoshutdown t
      eglot-events-buffer-size 0
      eldoc-idle-delay 0.1
      eldoc-echo-area-use-multiline-p nil)

(use-package eldoc-box
  :ensure t
  :demand t
  :hook (eldoc-mode . eldoc-box-hover-at-point-mode))
(my/leader
  "c a" #'eglot-code-actions)

(setq treesit-font-lock-level 4)

(provide 'm-eglot)
