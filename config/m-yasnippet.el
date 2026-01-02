;;; m-snippets.el -*- lexical-binding: t; -*-

(use-package yasnippet
  :defer t
  :hook ((prog-mode text-mode) . yas-minor-mode)
  :config
  (define-key yas-keymap (kbd "TAB") #'yas-next-field)
  (define-key yas-keymap (kbd "<tab>") #'yas-next-field)
  (define-key yas-keymap (kbd "S-TAB") #'yas-prev-field)
  (define-key yas-keymap (kbd "<backtab>") #'yas-prev-field))

(use-package yasnippet-snippets
  :defer t
  :after yasnippet)

(provide 'm-snippets)
