;;; m-eldoc.el -*- lexical-binding: t; -*-
(require 'm-eglot)

(use-package eldoc-box
  :ensure t
  :demand t
  :after markdown-mode
  :config
  (add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-at-point-mode t))

(provide 'm-eldoc)
