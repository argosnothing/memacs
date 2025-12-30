;;; keybinds.el -*- lexical-binding: t; -*-
(require 'm-rust)
(require 'm-elisp)
(require 'm-eglot)
(require 'dired)
(use-package which-key
  :init
  (setq which-key-idle-delay 0.4
        which-key-idle-secondary-delay 0.05
        which-key-max-description-length 32)
  :config
  (which-key-mode 1))
(use-package general
  :config
  (general-evil-setup t)
  (general-create-definer my/leader
    :states '(normal visual motion)
    :keymaps 'override
    :prefix "SPC"
    :global-prefix "C-SPC")

  (general-create-definer my/local-leader
    :states '(normal visual motion)
    :keymaps 'override
    :prefix "SPC m"))

(my/leader
  ;; Files
  "f"  '(:ignore t :which-key "files")
  "f f" #'find-file
  "f s" #'save-buffer
  "f r" #'recentf-open-files

  ;; Buffers
  "b"  '(:ignore t :which-key "buffers")
  "b b" #'switch-to-buffer
  "b d" #'kill-current-buffer
  "b n" #'next-buffer
  "b p" #'previous-buffer

  ;; Windows
  "w"  '(:ignore t :which-key "windows")
  "w v" #'split-window-right
  "w s" #'split-window-below
  "w d" #'delete-window
  "w m" #'delete-other-windows

  ;; Search
  "s"  '(:ignore t :which-key "search")
  "s s" #'isearch-forward
  "s r" #'query-replace

  ;; Toggles
  "t"  '(:ignore t :which-key "toggles")
  "t l" #'display-line-numbers-mode
  "t w" #'whitespace-mode

  ;; Quit / reload
  "q"  '(:ignore t :which-key "quit")
  "q q" #'save-buffers-kill-emacs
  "q r" #'restart-emacs

  "p" '(:ignore t :which-key "project")
  "p p" #'project-switch-project
  "p f" #'project-find-file
  "p s" #'consult-ripgrep
  "p k" #'project-forget-project

  ;; Search In Project
  "SPC" #'consult-project-extra-find
  )
(my/leader
  :keymaps 'emacs-lisp-mode-map
  "c k" #'helpful-at-point)
(my/leader
  :keymaps 'rust-mode-map
  "c D" #'consult-eglot-symbols
  "c e" #'consult-flymake
  "c k" #'eldoc)

(general-define-key
 :states '(normal visual motion emacs)
 "M-x" #'execute-extended-command
 "M-:" #'eval-expression
 "C-M-x" #'eval-defun
 "C-o" #'dired-jump)

(general-define-key
 :keymaps 'dired-mode-map
 :states '(normal motion)
 "h" #'dired-up-directory)

;; Better window movement
(general-define-key
 :states '(normal visual)
 "C-h" #'windmove-left
 "C-l" #'windmove-right
 "C-j" #'windmove-down
 "C-k" #'windmove-up)

(provide 'm-keybinds)
