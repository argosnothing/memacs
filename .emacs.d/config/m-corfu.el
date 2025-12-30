;;; memacs-corfu.el -*- lexical-binding: t; -*-

(use-package corfu
  :init
  (setq corfu-auto t                
        corfu-auto-delay 0.0        
        corfu-auto-prefix 1         
        corfu-cycle t               
        corfu-preselect 'prompt     
        corfu-quit-no-match 'separator)
  (global-corfu-mode 1))

(use-package cape
  :init
  (add-to-list 'completion-at-point-functions #'cape-file)
  (add-to-list 'completion-at-point-functions #'cape-dabbrev))

(provide 'm-corfu)
