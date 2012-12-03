;; don't use menu-bar
(if window-system (menu-bar-mode 1)
  (menu-bar-mode -1))

;; display line and column
(column-number-mode t)
(line-number-mode t)

;; don't beep
;; (setq visible-bell t)
(setq ring-bell-function (lambda()))

;; scroll width
(setq scroll-step 1)

(setq require-final-newline t)
(setq next-line-add-newlines nil)


