;;; lang-rust.el -*- lexical-binding: t; -*-

(require 'm/eglot)

(use-package rust-mode
  :mode "\\.rs\\'"
  :hook (rust-mode . eglot-ensure))

(add-hook 'eglot-managed-mode-hook
          (lambda ()
            (when (derived-mode-p 'rust-mode)
              (when (fboundp 'eglot-inlay-hints-mode)
                (eglot-inlay-hints-mode 1)))))


;; Optional: explicitly pick server binary
;; (with-eval-after-load 'eglot
;;   (add-to-list 'eglot-server-programs
;;                '(rust-mode . ("rust-analyzer"))))

(provide 'm/lang-rust)
 
