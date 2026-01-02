(use-package copilot
  :defer t
  :commands (copilot-mode copilot-complete)
  :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
  :ensure t)
(use-package copilot-chat
  :defer t
  :commands (copilot-chat)
  :straight (:host github :repo "chep/copilot-chat.el" :files ("*.el"))
  :after (request org markdown-mode))
