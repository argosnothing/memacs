(require 'm-eglot)

(use-package consult
  :config
  (setq consult-ripgrep-args "rg --null --line-buffered --color=never --max-columns=1000 --path-separator / \
--smart-case --no-heading --line-number . --hidden --no-ignore"))
(use-package consult-project-extra
  :straight (consult-project-extra :type git :host github :repo "Qkessler/consult-project-extra")
  :custom (consult-project-function #'consult-project-extra-project-fn))
(use-package consult-project-extra
  :straight t
  :custom (consult-project-function #'consult-project-extra-project-fn))
(use-package consult-eglot)
(setq xref-show-xrefs-function #'consult-xref
      xref-show-definitions-function #'consult-xref)
(setq project-switch-commands #'project-find-file)


(provide 'm-consult)
