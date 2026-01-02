(require 'm-eglot)

(use-package consult
  :defer t
  :commands (consult-ripgrep consult-project-extra-find consult-xref)
  :config
  (setq consult-ripgrep-args "rg --null --line-buffered --color=never --max-columns=1000 --path-separator / \
--smart-case --no-heading --line-number . --hidden --no-ignore"))
(use-package consult-project-extra
  :defer t
  :straight t
  :custom (consult-project-function #'consult-project-extra-project-fn))
(use-package consult-eglot
  :defer t
  :after (consult eglot))
(with-eval-after-load 'consult
  (setq xref-show-xrefs-function #'consult-xref
        xref-show-definitions-function #'consult-xref))
(setq project-switch-commands #'project-find-file)


(provide 'm-consult)
