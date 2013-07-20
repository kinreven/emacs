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
;; Chinese Font
(if window-system
	(dolist (charset '(kana han symbol cjk-misc bopomofo))
		(set-fontset-font (frame-parameter nil 'font)
			              charset
                          (font-spec :family "Hei" :size 14)))
 )

;; Title
(setq frame-title-format '("" buffer-file-name ""))

;; User Config
(setq user-full-name "Kevin Ren")
(setq user-mail-address "kin***@gmail.com")

;; Disable backup
(setq-default make-backup-files nil)

;; Ring bell
(setq ring-bell-function 'ignore) 

;; Scracth meesage
(setq initial-scratch-message nil)

;; Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

;; Date and Time
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time-mode t)

;; Dired
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;; Compress package
(auto-compression-mode 1)

;;Edit
(setq kill-ring-max 200) 
(setq enable-recursive-minibuffers t) 
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default cursor-type 'box)

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

;; CEDET
(add-to-list 'load-path "~/.emacs.d/elisp/cedet-master")
(require 'cedet)

;; C mode
(add-hook 'c-mode-hook
'(lambda ()
(linum-mode 1)
(hs-minor-mode 1) 
(setq c-basic-offset 4)
(setq tab-width 4)
(setq indent-tabs-mode nil)))

;; Cscope
(load "~/.emacs.d/elisp/xcscope.el")
(require 'xcscope)

;; SR-speedbar
(load "~/.emacs.d/elisp/sr-speedbar.el")
(require 'sr-speedbar)
(setq speedbar-show-unknown-files t)
(setq speedbar-use-images nil)
(setq speedbar-smart-directory-expand-flag t)
(setq speedbar-tag-hierarchy-method '(speedbar-simple-group-tag-hierarchy)) 
(add-hook 'speedbar-reconfigure-keymaps-hook
          '(lambda ()
             (define-key speedbar-mode-map [delete] 'speedbar-item-delete)
             (define-key speedbar-mode-map [backspace] 'speedbar-buffer-kill-buffer)
             (define-key speedbar-mode-map [C-up] 'speedbar-up-directory)
             (define-key speedbar-mode-map [C-down] 'speedbar-edit-line)
             (define-key speedbar-mode-map [right] 'speedbar-flush-expand-line)
             (define-key speedbar-mode-map [left] 'speedbar-contract-line)))
(add-hook 
 'speedbar-timer-hook 
 (lambda () 
   (save-excursion 
     (set-buffer speedbar-buffer) 
     (speedbar-flush-expand-line)))) 
(setq sr-speedbar-auto-refresh t)
(setq sr-speedbar-right-side nil)
;(setq sr-speedbar-skip-other-window-p t)
(sr-speedbar-toggle)

;; Yasnippet
(add-to-list 'load-path "~/.emacs.d/elisp/yasnippet-master")
(require 'yasnippet)
(yas-load-directory "~/.emacs.d/elisp/yasnippet-master/snippets")
(yas-global-mode 1)
(yas-minor-mode-on)

;; Auto Complete
(add-to-list 'load-path "~/.emacs.d/elisp/auto-complete-master")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/auto-complete-master/dict")
(global-auto-complete-mode t)
(ac-config-default)

;; ECB
;(add-to-list 'load-path "~/.emacs.d/elisp/ecb-master")
;(require 'ecb)
;(ecb-activate)

;; Makedown-mode
(load "~/.emacs.d/elisp/markdown-mode.el") 
(autoload 'markdown-mode "markdown-mode" 
   "Major mode for editing Markdown files" t) 
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode)) 
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode)) 
(add-to-list 'auto-mode-alist '("\\.mdown\\'" . markdown-mode)) 
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode)) 
(setq markdown-command "cd ~/.emacs.d && pandoc -s -S -f markdown -t html -H github.css")

;; Org-mode
(setq load-path (cons "~/.emacs.d/elisp/org-8.0.3/lisp" load-path))
(require 'org-install)

;; iBuffer 
(global-set-key (kbd "C-x C-b") 'ibuffer) 
(autoload 'ibuffer "ibuffer" "List buffers." t) 
(global-set-key (kbd "C-x C-d") 'ido-dired) 

;; Shortcut Key
;(global-set-key (kbd "C-]") 'sr-speedbar-select-window)
(global-set-key (kbd "C-|") 'previous-multiframe-window) 
(global-set-key (kbd "C-\\") 'next-multiframe-window)
(global-set-key (kbd "C-p") 'next-buffer)
(global-set-key (kbd "C-n") 'previous-buffer)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "M-w") 'kill-buffer)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "C-=") 'enlarge-window)
(global-set-key (kbd "C--") 'enlarge-window-horizontally)
(global-set-key (kbd "C-/") 'cscope-find-functions-calling-this-function)
(global-set-key (kbd "C-?") 'cscope-find-this-symbol)
(global-set-key (kbd "C-.") 'cscope-find-global-definition)
(global-set-key (kbd "C->") 'cscope-find-this-text-string)
(global-set-key (kbd "C-<") 'cscope-find-this-file)
(global-set-key (kbd "C-,") 'cscope-pop-mark)
(global-set-key (kbd "C-t") 'cscope-index-files)

(global-set-key [f5] 'eshell)
(global-set-key [f6] 'calendar)

;; Terminal key  remapping
;(define-key global-map (kbd "\r") [return])

;; Global Mode
(global-visual-line-mode 1)
(ido-mode 1)
(recentf-mode 1) 
(desktop-save-mode 1) 

;; I prefer cmd key for meta
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)