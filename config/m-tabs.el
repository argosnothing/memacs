(use-package nerd-icons
  :defer t)

(use-package all-the-icons
  :defer t
  :if (display-graphic-p))

(use-package centaur-tabs
  :defer 1
  :custom
  (centaur-tabs-set-icons t)
  (centaur-tabs-icon-type 'nerd-icons)
  :config
  (centaur-tabs-mode 1)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>"  . centaur-tabs-forward))

(use-package general
  :after centaur-tabs
  :config
  (my/leader
    "t"   '(:ignore t :which-key "tabs")
    "t n" #'centaur-tabs-forward-tab
    "t p" #'centaur-tabs-backward-tab
    "t a" #'centaur-tabs-ace-jump
    "t k" #'centaur-tabs-kill-current-tab))
