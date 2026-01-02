(use-package markdown-mode
  :defer t
  :mode ("README\\.md\\'" . gfm-mode)
  :ensure t
  :init (setq markdown-command "multimarkdown"))

(provide 'm-markdown)
