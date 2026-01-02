;;; lang-rust.el -*- lexical-binding: t; -*-

(require 'm-eglot)
(require 'm-keybinds)

(use-package rust-ts-mode
  :mode "\\.rs\\'"
  :hook (rust-ts-mode . eglot-ensure))

;; (add-hook 'eglot-managed-mode-hook
;;           (lambda ()
;;             (when (derived-mode-p 'rust-ts-mode)
;;               (when (fboundp 'eglot-inlay-hints-mode)
;;                 (eglot-inlay-hints-mode 1)))))

(use-package vterm
  :defer t
  :commands (vterm vterm-mode))

(defun my/vterm-run (cmd)
  (let ((buf (get-buffer-create "*vterm*")))
    (pop-to-buffer buf)
    (unless (derived-mode-p 'vterm-mode)
      (vterm-mode))
    (vterm-send-string cmd)
    (vterm-send-return)))

(with-eval-after-load 'rust-ts-mode
  (my/leader
   :keymaps 'rust-ts-mode-map

   "m"   '(:ignore t :which-key "rust")
   "m c" '(:ignore t :which-key "checks")

   "m b" '((lambda () (interactive) (my/vterm-run "nix develop -c cargo build")) :which-key "cargo build")
   "m r" '((lambda () (interactive) (my/vterm-run "nix develop -c cargo run")) :which-key "cargo run")
   "m t" '((lambda () (interactive) (my/vterm-run "nix develop -c cargo test")) :which-key "cargo test")

   "m c c" '((lambda () (interactive) (my/vterm-run "nix develop -c cargo check")) :which-key "cargo check")
   "m c D" '(consult-eglot-symbols :which-key "document symbols")
   "m c e" '(consult-flymake :which-key "errors")
   "m c k" '(eldoc :which-key "eldoc")
   "m c h" '(eldoc-box-help-at-point :which-key "hover doc")))

(provide 'm-rust)
