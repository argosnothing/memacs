;;; m-eldoc.el -*- lexical-binding: t; -*-
(require 'm-eglot)
(use-package eldoc-box
  :ensure t
  :demand t
  :hook
  (eglot-managed-mode . eldoc-box-hover-at-point-mode))

(provide 'm-eldoc)
