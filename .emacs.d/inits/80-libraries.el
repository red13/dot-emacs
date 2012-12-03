;; name: auto-install
;; path: http://www.emacswiki.org/emacs/download/auto-install.el
(setq load-path (append '("~/.emacs.d/auto-install") load-path))
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)

;; name: auto-save-buffers
;; path: http://0xcc.net/misc/auto-save/auto-save-buffers.el
(require 'auto-save-buffers)
(run-with-idle-timer 0.5 t 'auto-save-buffers)

;; name: dynamic macro
;; path: 
;; (defconst *dmacro-key* "\C-t" "repeat key asign")
;; (global-set-key *dmacro-key* 'dmacro-exec)
;; (autoload 'dmacro-exec "dmacro" nil t)

;; name: navi2ch
;; path: 
;; (setq load-path (append '("~/.emacs.d/navi2ch-1.8.4") load-path))
;; (require 'navi2ch)

;; name: emacs-w3m
;; path: 
(require 'w3m-load)

;; name: yasnippet
;; path: 
(setq load-path (append '("~/.emacs.d/yasnippet") load-path))
(require 'yasnippet)
(yas/initialize)
(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)

;; (require 'slime)
(setq load-path (append '("~/.emacs.d/slime") load-path))
(setq inferior-lisp-program "/bin/clisp")
(slime-setup)

;; M-x auto-install-batch anything
;; (require 'anything-startup)

;; (require 'popwin)
;; (setq display-buffer-function 'popwin:display-buffer)

