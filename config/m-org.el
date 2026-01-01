(require 'm-core)
(require 'org)

(use-package org-download
  :after org
  :config
  (setq org-download-method 'directory
        org-download-image-dir "./images"
        org-download-heading-lvl nil))

(with-eval-after-load 'org
    (setq org-return-follows-link t))
(with-eval-after-load 'org
  (setq org-link-frame-setup
        '((file . find-file)
          (vm . vm-visit-folder)
          (gnus . gnus)
          (wl . wl-other-frame))))


(setq org-directory (expand-file-name "~/org/"))

(provide 'm-org)
