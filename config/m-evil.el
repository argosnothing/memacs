(use-package evil
  :init
  (setq evil-want-keybinding nil
        evil-want-integration t
        evil-want-C-u-scroll t
        evil-want-C-i-jump t)

  :config
  (evil-mode 1))

(use-package evil-collection
  :defer t
  :after evil
  :config
  (evil-collection-init))

(with-eval-after-load 'org
  (with-eval-after-load 'evil
    (evil-define-key 'normal org-mode-map (kbd "RET") #'org-open-at-point)
    (evil-define-key 'normal org-mode-map (kbd "S-RET") #'org-open-at-point)))


(provide 'm/evil)
