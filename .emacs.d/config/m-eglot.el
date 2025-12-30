;;; eglot-core.el -*- lexical-binding: t; -*-

(require 'eglot)

(setq eglot-autoshutdown t
      eglot-events-buffer-size 0)
(use-package eldoc-box
  :init
  )
(add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-mode t)


(provide 'm/eglot)
