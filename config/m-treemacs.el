(use-package treemacs
  :ensure t
  :config
  (treemacs-follow-mode 1)
  (treemacs-filewatch-mode 1)
  (treemacs-project-follow-mode 1)
  (add-hook 'treemacs-mode-hook
	    (lambda ()
	      (display-line-numbers-mode 0))))
