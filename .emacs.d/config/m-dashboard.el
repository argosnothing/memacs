;; File: ~/.emacs.d/config/m-dashboard.el
;;; m-dashboard.el -*- lexical-binding: t; -*-

(use-package dashboard
  :ensure t
  :init
  (setq inhibit-startup-screen t
        initial-buffer-choice (lambda () (get-buffer-create "*dashboard*"))
        dashboard-startup-banner (expand-file-name "images/banner-logo.png" user-emacs-directory)
	dashboard-banner-logo-title (concat
				     (propertize "me" 'face 'bold)
				     "macs")
        dashboard-center-content t
        dashboard-set-heading-icons t
        dashboard-set-file-icons t
        dashboard-projects-switch-function #'project-switch-project
        dashboard-items '((projects . 15)))
  :config
  (dashboard-setup-startup-hook)
  (add-hook 'after-init-hook #'dashboard-open))

(provide 'm-dashboard)
