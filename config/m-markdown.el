(use-package markdown-mode
  :defer t
  :mode ("README\\.md\\'" . gfm-mode)
  :ensure t
  :init
  (setq markdown-command "multimarkdown")
  (setq markdown-fontify-code-blocks-natively t)
  :config
  (add-to-list 'markdown-code-lang-modes '("rust" . rust-ts-mode)))

(provide 'm-markdown)
