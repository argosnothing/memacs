;;; m-magit.el -*- lexical-binding: t; -*-
(use-package magit
  :commands (magit-status magit-dispatch)
  :init
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1))
(provide 'm/magit)
