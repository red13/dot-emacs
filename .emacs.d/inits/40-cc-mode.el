;; c-mode setting
(require 'cc-mode)

;; c-mode
(add-hook 'c-mode-common-hook
	    '(lambda()
            (setq truncate-lines t)
            (setq truncate-partial-width-windows t)
            (setq c-basic-offset 4 indect-tabs-mode nil)
            (define-key c-mode-map "\C-c\C-c" 'compile)))

