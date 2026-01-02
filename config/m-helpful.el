(use-package helpful
  :defer t
  :commands (helpful-callable helpful-variable helpful-key helpful-command)
  :init
  (global-set-key [remap describe-function] #'helpful-callable)
  (global-set-key [remap describe-variable] #'helpful-variable))
(provide 'm-helpful)
