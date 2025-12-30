;;; m-dired.el -*- lexical-binding: t; -*-
(use-package nerd-icons
  :ensure t)
(use-package nerd-icons-dired
  :ensure t
  :hook (dired-mode . nerd-icons-dired-mode))
(use-package dired-subtree
  :after dired
  :bind (:map dired-mode-map
              ("TAB" . dired-subtree-toggle)
              ("<tab>" . dired-subtree-toggle)
              ("C-<tab>" . dired-subtree-cycle)))
(use-package diredfl
  :hook (dired-mode . diredfl-mode))
(use-package dired-single)

(provide 'm-dired)
