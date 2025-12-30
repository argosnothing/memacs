;;; lang-rust.el -*- lexical-binding: t; -*-

(require 'm/eglot)

(use-package rust-mode
  :mode "\\.rs\\'"
  :hook (rust-mode . eglot-ensure))

;; Optional: explicitly pick server binary if you want
;; (with-eval-after-load 'eglot
;;   (add-to-list 'eglot-server-programs
;;                '(rust-mode . ("rust-analyzer"))))

(provide 'm/lang-rust)
