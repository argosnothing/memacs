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

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)
