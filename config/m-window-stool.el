(use-package window-stool
  :straight (window-stool :type git :host github :repo "jaszhe/window-stool")
  :config
  (add-hook 'prog-mode-hook #'window-stool-mode))

