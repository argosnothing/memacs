(setq backup-directory-alist
      `(("." . ,(expand-file-name "backups/" user-emacs-directory))))

(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "autosaves/" user-emacs-directory) t)))

(make-directory (expand-file-name "backups/" user-emacs-directory) t)
(make-directory (expand-file-name "autosaves/" user-emacs-directory) t)

(setq package-enable-at-startup nil)

;; Reduce straight.el overhead
(setq straight-check-for-modifications '(check-on-save find-when-checking))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (message "Installing straight.el...")
    (with-current-buffer
        (url-retrieve-synchronously
         "https://radian-software.github.io/straight.el/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil nil))

(setq straight-use-package-by-default t)

;; ---- load my config ----
(let ((config-dir (expand-file-name "config" user-emacs-directory)))
  (add-to-list 'load-path config-dir)
  (dolist (file (directory-files config-dir t "\\.el$"))
   (load file nil 'nomessage)))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)
