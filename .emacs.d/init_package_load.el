;; Color theme
(require 'monokai-theme)

;; Undo Tree
(require 'undo-tree)
(global-undo-tree-mode 1)

;; Dired extra
(require 'dired+)
(toggle-diredp-find-file-reuse-dir 1)

;; Scope
(require 'ascope)

;; Project manage
(require 'projectile)
(projectile-global-mode)

;; ECB
;(require 'ecb)
;(ecb-activate)

;; Speedbar
;(load "~/.emacs.d/package/sr-speedbar.el")
;(require 'sr-speedbar)
;(setq speedbar-show-unknown-files t)
;(setq speedbar-use-images nil)
;(setq speedbar-smart-directory-expand-flag t)
;(setq speedbar-tag-hierarchy-method '(speedbar-simple-group-tag-hierarchy))
;(add-hook 'speedbar-reconfigure-keymaps-hook
;          '(lambda ()
;             (define-key speedbar-mode-map [delete] 'speedbar-item-delete)
;             (define-key speedbar-mode-map [backspace] 'speedbar-buffer-kill-buffer)
;             (define-key speedbar-mode-map [C-up] 'speedbar-up-directory)
;             (define-key speedbar-mode-map [C-down] 'speedbar-edit-line)
;             (define-key speedbar-mode-map [right] 'speedbar-flush-expand-line)
;             (define-key speedbar-mode-map [left] 'speedbar-contract-line)))
;(add-hook 'speedbar-timer-hook
;          (lambda ()
;            (save-excursion
;              (set-buffer speedbar-buffer)
;              (speedbar-flush-expand-line))))
;(setq sr-speedbar-auto-refresh t)
;(setq sr-speedbar-right-side nil)
;(sr-speedbar-toggle)

;; Yasnippet
(require 'yasnippet)
(yas-load-directory "~/.emacs.d/elpa/yasnippet-20130722.1832/snippets")
(yas-global-mode 1)
(yas-minor-mode-on)

;; Auto Complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20130503.2013/dict")
(ac-config-default)
(global-auto-complete-mode t)

;; Markdown
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(setq markdown-command "cd ~/.emacs.d/ && pandoc -s -S -f markdown -t html -H github.css")
