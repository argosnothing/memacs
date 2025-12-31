(require 'm-eglot)

(use-package consult
  :config
  (setq consult-ripgrep-args "rg --null --line-buffered --color=never --max-columns=1000 --path-separator / \
--smart-case --no-heading --line-number . --hidden --no-ignore"))
(use-package consult-project-extra
  :straight (consult-project-extra :type git :host github :repo "Qkessler/consult-project-extra")
  :custom (consult-project-function #'consult-project-extra-project-fn) ;; Optional but recommended for a more consistent UI
  :bind
  (("C-c p f" . consult-project-extra-find)
   ("C-c p o" . consult-project-extra-find-other-window)))
(use-package consult-project-extra
  :straight t
  :custom (consult-project-function #'consult-project-extra-project-fn) ;; Optional but recommended for a more consistent UI
  :bind
  (("C-c p f" . consult-project-extra-find)
   ("C-c p o" . consult-project-extra-find-other-window)))
(use-package consult-eglot)
(setq xref-show-xrefs-function #'consult-xref
      xref-show-definitions-function #'consult-xref)


(provide 'm-consult)
