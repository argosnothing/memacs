;;; m-eldoc.el -*- lexical-binding: t; -*-
(require 'm-eglot)
(use-package eldoc-box
  :ensure t
  :demand t
  :hook
  (eglot-managed-mode . eldoc-box-hover-at-point-mode)
  :config
  (add-hook 'eldoc-box-buffer-hook
  (lambda ()
    (when (require 'markdown-mode nil t)
      (let ((inhibit-read-only t))
        (delay-mode-hooks (markdown-mode))
        (font-lock-mode 1)
        (font-lock-ensure))))))

(provide 'm-eldoc)
