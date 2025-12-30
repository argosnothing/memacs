(use-package evil
  :init
  ;; REQUIRED: must be set before evil loads
  (setq evil-want-keybinding nil   ; let evil-collection handle bindings later
        evil-want-integration t
        evil-want-C-u-scroll t
        evil-want-C-i-jump t)

  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(provide 'm/evil)
