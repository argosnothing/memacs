;;; m-snippets.el -*- lexical-binding: t; -*-

(use-package yasnippet
  :config
  (yas-global-mode 1)
  (define-key yas-keymap (kbd "TAB") #'yas-next-field)
  (define-key yas-keymap (kbd "<tab>") #'yas-next-field)
  (define-key yas-keymap (kbd "S-TAB") #'yas-prev-field)
  (define-key yas-keymap (kbd "<backtab>") #'yas-prev-field))

(use-package yasnippet-snippets
  :after yasnippet)

(provide 'm-snippets)
