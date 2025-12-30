;;; eglot-core.el -*- lexical-binding: t; -*-

(require 'eglot)

(setq eglot-autoshutdown t
      eglot-events-buffer-size 0)
(use-package eldoc-box)
(with-eval-after-load 'eglot
  (add-hook 'eglot-managed-mode-hook #'eldoc-mode)
  (setq eldoc-idle-delay 0.1)
  (setq eldoc-echo-area-use-multiline-p t))
(add-hook 'eglot-managed-mode-hook #'eldoc-box-hover-at-point-mode t)

(provide 'm-eglot)
