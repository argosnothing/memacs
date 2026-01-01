;;; theme.el -*- lexical-binding: t; -*-
(mapc #'disable-theme custom-enabled-themes)
;;(load-theme 'leuven t)
;;(load-theme 'leuven-dark)
(use-package doom-themes)
;;(load-theme 'doom-one t)
(load-theme 'doom-dark+ t)
(use-package doom-modeline
  :straight t
  :init
  (doom-modeline-mode 1)
  :custom
  (doom-modeline-height 25)
  (doom-modeline-bar-width 3)
  (doom-modeline-icon t)
  (doom-modeline-major-mode-icon t)
  (doom-modeline-buffer-file-name-style 'truncate-upto-root)
  (doom-modeline-minor-modes nil)
  (doom-modeline-enable-word-count nil)
  (doom-modeline-continuous-word-count-modes '(org-mode))
  (doom-modeline-buffer-state-icon t)
  (doom-modeline-modal-icon nil)
  :config
  (setq
   eglot-report-progress t
   doom-modeline-lsp t
   doom-modeline-support-eglot t))
(with-eval-after-load 'doom-modeline
  (add-to-list 'mode-line-misc-info
               '(eglot--managed-mode (" [" eglot--mode-line-format "] ")) t)

  (doom-modeline-refresh-bars))
(provide 'm-theme)
