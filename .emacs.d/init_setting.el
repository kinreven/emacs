(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(line-number-mode t)
 '(inhibit-startup-message t)
 '(show-paren-mode t)
 '(current-language-environment "UTF-8")
 '(ecb-options-version "2.40")
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 )

;; Basic Configurations
(setq frame-title-format '("" buffer-file-name ""))
(setq user-full-name "Kevin Ren")
(setq user-mail-address "kinreven@gmail.com")
(setq ring-bell-function 'ignore) 
(setq initial-scratch-message nil)
(fset 'yes-or-no-p 'y-or-n-p)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time-mode t)
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)
(setq kill-ring-max 200)
(setq enable-recursive-minibuffers t)
(setq term-buffer-maximum-size 0)
(setq uniquify-buffer-name-style 'forward)
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)
(setq track-eol t)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default cursor-type 'box)
(setq-default make-backup-files nil)
