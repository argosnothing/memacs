;; -*- lexical-binding: t; -*-
(defconst m-real-home
  (file-name-as-directory
   (or (getenv "REAL_HOME")
       "/home/salivala/")))

(defconst m-real-gitconfig
  (expand-file-name ".gitconfig" m-real-home))

(defun m--gitconfig-value (key)
  "Read KEY from real ~/.gitconfig using git itself."
  (when (file-exists-p m-real-gitconfig)
    (string-trim
     (shell-command-to-string
      (format "git config --file %s --get %s"
              (shell-quote-argument m-real-gitconfig)
              key)))))

(let ((name  (m--gitconfig-value "user.name"))
      (email (m--gitconfig-value "user.email")))
  (when name
    (setenv "GIT_AUTHOR_NAME" name)
    (setenv "GIT_COMMITTER_NAME" name))
  (when email
    (setenv "GIT_AUTHOR_EMAIL" email)
    (setenv "GIT_COMMITTER_EMAIL" email)))
