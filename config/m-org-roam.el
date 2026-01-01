(require 'm-org)
(require 'm-keybinds)

(straight-use-package '(org :type built-in))
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/org/"))
  (org-roam-dailies-directory "dailies/")
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  (require 'org-roam-protocol))

(my/leader
  ;; Org Roam
  "o r" '(:ignore t :which-key "roam")
  "o r f" #'org-roam-node-find
  "o r i" #'org-roam-node-insert
  "o r c" #'org-roam-capture
  "o r g" #'org-roam-graph
  "o r l" #'org-roam-buffer-toggle
  "o r j" #'org-roam-dailies-capture-today)


(provide 'm-og-roam)
