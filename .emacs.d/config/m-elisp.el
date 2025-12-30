;;; package --- Summary
;;; Commentary:
(require 'eglot)
(require 'eldoc-box)

(use-package eldoc-box
  :hook ((emacs-lisp-mode . eldoc-box-hover-at-point-mode)
         (lisp-interaction-mode . eldoc-box-hover-at-point-mode))
  :custom
  (eldoc-box-only-multi-line t)
  (eldoc-box-clear-with-C-g t))
(provide 'm-elisp)
;;; m-elisp.el ends here
