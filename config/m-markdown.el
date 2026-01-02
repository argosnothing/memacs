(use-package markdown-mode
  :defer t
  :mode ("README\\.md\\'" . gfm-mode)
  :ensure t
  :init (setq markdown-command "multimarkdown")
  :config
  (setq markdown-fontify-code-blocks-natively t)
  (add-to-list 'markdown-code-lang-modes '("rust" . rust-ts-mode)))

(provide 'm-markdown)
