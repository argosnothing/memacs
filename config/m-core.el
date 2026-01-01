;; -*- lexical-binding: t; -*-
(define-key minibuffer-local-map (kbd "C-h") #'backward-kill-word)
(define-key minibuffer-local-completion-map (kbd "C-h") #'backward-kill-word)
(define-key minibuffer-local-must-match-map (kbd "C-h") #'backward-kill-word)
(define-key minibuffer-local-filename-completion-map (kbd "C-h") #'backward-kill-word)
(electric-pair-mode 1)
(show-paren-mode 1)
(provide 'm-core)
