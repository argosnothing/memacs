;;; memacs-corfu.el -*- lexical-binding: t; -*-

(setq url-show-status nil)

(use-package nerd-icons
  :ensure t
  :demand t
  :init
  (setq 
        nerd-icons-scale-factor 1.0
        nerd-icons-install-fonts nil))

(use-package corfu
  :ensure t
  :init
  (setq corfu-auto t
        corfu-auto-delay 0.0
        corfu-auto-prefix 1
        corfu-cycle t
        corfu-preselect 'prompt
        corfu-quit-no-match 'separator)
  (global-corfu-mode 1))

(use-package nerd-icons-corfu
  :ensure t
  :after (corfu nerd-icons)
  :init
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))


(use-package cape
  :ensure t
  :init
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev))

(provide 'm-corfu)
