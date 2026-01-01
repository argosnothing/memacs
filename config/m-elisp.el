;;; package --- Summary
;;; Commentary:
(require 'eglot)
(require 'eldoc-box)
(require 'm-keybinds)

(my/leader
  :keymaps 'emacs-lisp-mode-map
  "c k" #'helpful-at-point)

(provide 'm-elisp)
;;; m-elisp.el ends here
