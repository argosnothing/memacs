;;; eglot-core.el -*- lexical-binding: t; -*-

(require 'eglot)

(setq eglot-report-progress t
      eglot-autoshutdown t
      eglot-events-buffer-size 0
      eldoc-idle-delay 0.1
      eldoc-echo-area-use-multiline-p nil)

(use-package eldoc-box
  :ensure t
  :demand t)

(defun my/eglot-eldoc-box-enable ()
  (eldoc-mode 1)
  (when (fboundp 'eldoc-box-hover-at-point-mode)
    (eldoc-box-hover-at-point-mode 1))
  (when (fboundp 'eldoc-box-hover-mode)
    (eldoc-box-hover-mode 1)))

(add-hook 'eglot-managed-mode-hook #'my/eglot-eldoc-box-enable)

(defun my/eldoc-box-help-at-point ()
  (interactive)
  (require 'eldoc-box)
  (eldoc-mode 1)
  (eldoc-print-current-symbol-info)
  (call-interactively #'eldoc-box-help-at-point))

(provide 'm-eglot)
