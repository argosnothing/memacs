(defun memacs-add-project (dir)
  (interactive "DProject root: ")
  (project-remember-project
   (project-current nil dir)))
(provide 'm-project)
