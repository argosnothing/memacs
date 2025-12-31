;;; lang-nix.el -*- lexical-binding: t; -*-

(require 'eglot)

(use-package nix-mode
  :mode "\\.nix\\'"
  :hook (nix-mode . eglot-ensure))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(nix-mode . ("nixd"))))

(provide 'm/lang-nix)
