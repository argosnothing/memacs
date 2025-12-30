(use-package consult)
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

(provide 'm/consult)
