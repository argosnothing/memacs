(use-package org
  :defer t
  :commands (org-mode org-agenda)
  :config
  (require 'm-core)
  (setq org-return-follows-link t
        org-link-frame-setup
        '((file . find-file)
          (vm . vm-visit-folder)
          (gnus . gnus)
          (wl . wl-other-frame))
        org-directory (expand-file-name "~/org/")))

(use-package org-download
  :defer t
  :after org
  :config
  (setq org-download-method 'directory
        org-download-image-dir "./images"
        org-download-heading-lvl nil))

(provide 'm-org)
