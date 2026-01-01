;;; eglot-core.el -*- lexical-binding: t; -*-

(require 'eglot)
(require 'm-keybinds)

(use-package eglot)
(use-package eldoc-box
  :ensure t
  :demand t
  :hook
  (eglot-managed-mode . eldoc-box-hover-at-point-mode))
(my/leader
  "c a" #'eglot-code-actions)

(setq treesit-font-lock-level 4)

(provide 'm-eglot)
