;;; completion.el -*- lexical-binding: t; -*-
(use-package vertico
  :init
  (vertico-mode 1))
(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides
        '((file (styles basic partial-completion)))))

(use-package marginalia
  :init
  (marginalia-mode 1))

(use-package vertico-posframe
  :after vertico
  :init
  (setq vertico-posframe-poshandler #'posframe-poshandler-frame-center
        vertico-posframe-width 90
        vertico-posframe-border-width 1)
  :config
  (vertico-posframe-mode 1))

(use-package nerd-icons
  :ensure t)

(use-package nerd-icons-completion
  :ensure t
  :after marginalia
  :config
  (nerd-icons-completion-mode 1)
  (add-hook 'marginalia-mode-hook #'nerd-icons-completion-marginalia-setup))


(provide 'm-completion)
