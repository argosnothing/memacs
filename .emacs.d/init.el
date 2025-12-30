(setq backup-directory-alist
      `(("." . ,(expand-file-name "backups/" user-emacs-directory))))

(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "autosaves/" user-emacs-directory) t)))

(make-directory (expand-file-name "backups/" user-emacs-directory) t)
(make-directory (expand-file-name "autosaves/" user-emacs-directory) t)
(setq package-enable-at-startup nil)
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq straight-use-package-by-default t)

;; ---- load my config ----
(let ((config-dir (expand-file-name "config" user-emacs-directory)))
  (add-to-list 'load-path config-dir)
  (dolist (file (directory-files config-dir t "\\.el$"))
    (load file nil 'nomessage)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   '((eval let*
	   ((root (locate-dominating-file default-directory ".emacs"))
	    (edir (and root (expand-file-name ".emacs" root))))
	   (when (and edir (file-directory-p edir))
	     (unless (boundp 'my/project-emacs-loaded)
	       (defvar my/project-emacs-loaded
		 (make-hash-table :test 'equal)))
	     (unless (gethash edir my/project-emacs-loaded)
	       (puthash edir t my/project-emacs-loaded)
	       (dolist
		   (f
		    (sort
		     (directory-files-recursively edir "\\.el\\'")
		     #'string<))
		 (load f nil 'nomessage))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
