(require 'm-core)
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

(setq org-capture-templates
      `(("p" "Project note" entry
         (file ,(expand-file-name "org/project.org" m-real-home))
         "*** %?\n:PROPERTIES:\n:CREATED: %U\n:END:\n")))

(provide 'm-org)
