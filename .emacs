(setq load-path (append '("~/.emacs.d") load-path))

;; https://gist.github.com/1021706
(require 'init-loader)
(init-loader-load)
