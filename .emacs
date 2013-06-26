(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(line-number-mode t)
 '(inhibit-startup-message t)
 '(show-paren-mode t)
 '(cua-mode t nil (cua-base))
 '(current-language-environment "UTF-8")
 '(ecb-options-version "2.40")
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(set-default-font "Monokai 14")
 )

;; Title
(setq frame-title-format '("" buffer-file-name ""))

;; User Config
(setq user-full-name "Kevin Ren")
(setq user-mail-address "kin***@gmail.com")

;; Disable backup
(setq-default make-backup-files nil)

;; Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

;; Date and Time
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time-mode t)

;; Dired
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;;Edit
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default cursor-type 'box)
(global-visual-line-mode 1)

;; Color theme
(add-to-list 'load-path "~/.emacs.d/elisp/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
;(color-theme-classic)
;(color-theme-tty-dark)
;(color-theme-euphoria)
;(color-theme-jonadabian)
;(color-theme-dark-green)
;; Molokai Customize
(load "~/.emacs.d/elisp/monokai-theme.el")
(color-theme-monokai)

;; C mode
(add-hook 'c-mode-hook
'(lambda ()
(linum-mode 1)
(setq c-basic-offset 4)
(setq tab-width 4)
(indent-tabs-mode nil)))

;; Cscope
(load "~/.emacs.d/elisp/xcscope.el")
(require 'xcscope)

;; SR-speedbar
(load "~/.emacs.d/elisp/sr-speedbar.el")
(require 'sr-speedbar)
(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
(sr-speedbar-toggle)

;; Auto Complete
(add-to-list 'load-path "~/.emacs.d/elisp/auto-complete-1.3.1")
(require 'auto-complete-config)
(ac-config-default)

;; CEDET
(add-to-list 'load-path "~/.emacs.d/elisp/cedet-1.1")
(require 'cedet)

;; ECB
;(add-to-list 'load-path "~/.emacs.d/elisp/ecb-master")
;(require 'ecb)
;(ecb-activate)

;; Shortcut Key
(global-set-key (kbd "C-\\") 'other-window)
(global-set-key (kbd "C-p") 'next-buffer)
(global-set-key (kbd "C-n") 'previous-buffer)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-w") 'kill-buffer)
(global-set-key (kbd "C-b") 'list-buffers)
