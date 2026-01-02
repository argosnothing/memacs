(use-package markdown-mode
  :defer t
  :mode "\\.md\\'"
  :ensure t
  :config
  (setq markdown-fontify-code-blocks-natively t))

(provide 'm-markdown)
