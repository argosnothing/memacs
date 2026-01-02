(use-package markdown-mode
  :ensure t
  :config
  (setq markdown-fontify-code-blocks-natively t)
  (add-to-list 'markdown-code-lang-modes '("rust" . rust-ts-mode)))

(provide 'm-markdown)
