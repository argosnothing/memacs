;;; lang-nix.el -*- lexical-binding: t; -*-

(require 'eglot)
(require 'm-eglot)

(use-package nix-mode
  :mode "\\.nix\\'"
  :hook (nix-mode . eglot-ensure))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(nix-mode . ("nixd"))))

(add-hook 'eglot-managed-mode-hook
	  (lambda()
	    (when (derived-mode-p 'nix-mode)
	      (when (fboundp 'eglot-inlay-hints-mode)
		(eglot-inlay-hints-mode)))))

(provide 'm/lang-nix)
