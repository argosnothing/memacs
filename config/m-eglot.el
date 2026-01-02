;;; eglot-core.el -*- lexical-binding: t; -*-

(require 'eglot)
(require 'm-keybinds)

(use-package eglot
  :ensure nil
  :defer t
  )

(my/leader
  "c a" #'eglot-code-actions)
(setq treesit-font-lock-level 4)
(provide 'm-eglot)
