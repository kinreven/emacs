;; Color theme
(require 'monokai-theme)

;; Uniqulfy buffername
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

;; Ido mode
(require 'ido)
(require 'ido-ubiquitous)
(require 'flx-ido)
(ido-mode 1)
(ido-ubiquitous-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq flx-ido-threshhold 8000)

;; Smex
(require 'smex)

;; Undo Tree
(require 'undo-tree)
(global-undo-tree-mode 1)

;; Dired extra
(require 'dired+)
(toggle-diredp-find-file-reuse-dir 1)

;; Smartparens
(require 'smartparens-config)
(setq sp-base-key-bindings 'paredit)
(setq sp-autoskip-closing-pair 'always)
(smartparens-global-mode t)

;; Windows number
(require 'window-number)
(window-number-meta-mode 1)

;; Scope
(require 'ascope)

;; Project manage
(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)

;; Yasnippet
(require 'yasnippet)
(yas-load-directory "~/.emacs.d/elpa/yasnippet-20130820.1719/snippets")
(yas-global-mode 1)
(yas-minor-mode-on)

;; Auto Complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20130724.1750/dict")
(ac-config-default)
(global-auto-complete-mode t)

;;; Auto Complete Clang
;(require 'auto-complete-clang)
;(setq ac-auto-start t)
;(setq ac-quick-help-delay 0.5)
;;; (ac-set-trigger-key "TAB")
;;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
;(define-key ac-mode-map  [(control tab)] 'auto-complete)
;(defun my-ac-config ()
;  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
;  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;  (add-hook 'css-mode-hook 'ac-css-mode-setup)
;  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
;  (global-auto-complete-mode t))
;(defun my-ac-cc-mode-setup ()
;  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
;(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;;; ac-source-gtags
;(my-ac-config)

;; Markdown
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(setq markdown-command "cd ~/.emacs.d/ && pandoc -s -S -f markdown -t html -H github.css")

