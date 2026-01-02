(use-package elcord
  :defer 2
  :after emacs
  :config
  (setq elcord-use-major-mode-as-main-icon t
        elcord-quiet t
	elcord-display-buffer-details t
	elcord-display-buffer-name t
        elcord-idle-message "AFK AHHHHHHHH"
        elcord-idle-time 300)

  (elcord-mode 1))
