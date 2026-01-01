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
  :custom
  (corfu-auto t)
  (corfu-auto-delay 0.2)
  (corfu-preselect 'prompt)
  :init
  (global-corfu-mode 1)
  :config
  (setq corfu-popupinfo-mode 1)
  (setq corfu-background nil
	corfu-foreground nil
	corfu-border-width 1)
  (custom-set-faces
   '(corfu-default ((t :inherit default)))
   '(corfu-current ((t :inherit highlight :box (:line-width -1))))
   '(corfu-bar ((t :inherit highlight)))
   '(corfu-border ((t :inherit shadow))))
  :bind
  (:map corfu-map
	("TAB" . corfu-next)
	([tab] . corfu-next)
	("S-TAB" . corfu-previous)
	([backtab] . corfu-previous)))

(use-package nerd-icons-corfu
  :ensure t
  :after (corfu nerd-icons)
  :config
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

(use-package cape
  :ensure t
  :init
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev))

(provide 'm-corfu)
