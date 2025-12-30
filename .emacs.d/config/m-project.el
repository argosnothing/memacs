(defun memacs/add-project (dir)
  "Add DIR to the project list."
  (interactive "DProject root: ")
  (project-remember-project
   (project-current nil dir)))
(provide 'm/project)
