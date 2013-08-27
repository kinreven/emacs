;; iBuffer
(autoload 'ibuffer "ibuffer" "List buffers." t)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; iMenu 
(global-set-key (kbd "C-x g") 'imenu)

;; Smex
(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))
(global-set-key [(shift meta x)] (lambda ()
                                   (interactive)
                                   (or (boundp 'smex-cache)
                                       (smex-initialize))
                                   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
                                   (smex-major-mode-commands)))
;; Dired Plus
(add-hook 'dired-mode-hook (lambda () (interactive) (define-key dired-mode-map [backspace] (kbd "^"))))

;; Undo Tree
(global-set-key (kbd "C-u") 'undo-tree-undo)
(global-set-key (kbd "M-u") 'undo-tree-redo)

;; Projectile
(global-set-key (kbd "C-c o") 'projectile-find-file)
(global-set-key (kbd "C-c f") 'projectile-find-file-in-directory)
(global-set-key (kbd "C-c g") 'projectile-grep)
(global-set-key (kbd "C-c m") 'projectile-multi-occur)

;; CScope
(global-set-key (kbd "C-/") 'ascope-find-functions-calling-this-function)
(global-set-key (kbd "C-.") 'ascope-find-global-definition)
(global-set-key (kbd "C-,") 'ascope-pop-mark)
(global-set-key (kbd "C-'") 'ascope-find-this-text-string)
(global-set-key (kbd "C-;") 'ascope-find-this-symbol)
(global-set-key (kbd "C-c l") 'ascope-init)
(global-set-key (kbd "C-c i") 'ascope-reinit)

;; Window layout 
(setq winner-dont-bind-my-keys t) 
(winner-mode t) 
(global-set-key (kbd "C-c u") 'winner-undo) 
(global-set-key (kbd "C-c r") 'winner-redo)

;; Files
(global-set-key (kbd "C-x f") 'ido-find-file)
(global-set-key (kbd "C-x s") 'save-buffer)
(global-set-key (kbd "C-x C-s") 'save-some-buffers)
(global-set-key (kbd "C-x c") 'save-buffers-kill-emacs)

;; Windows move up/down
(defun window-move-up (&optional arg)
"Current window move-up 3 lines."
(interactive "P")
(if arg
(scroll-up arg)
(scroll-up 3)))
(defun window-move-down (&optional arg)
"Current window move-down 3 lines."
(interactive "P")
(if arg
(scroll-down arg)
(scroll-down 3)))
(global-set-key (kbd "M-n") 'window-move-up)
(global-set-key (kbd "M-p") 'window-move-down)

;; Set Mark
(global-set-key (kbd "C-l") 'set-mark-command)
(global-set-key (kbd "M-l") 'set-mark-command)
;; Mark region
(defun mark-current-line ()
  "Select the current line"
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position)))
(global-set-key (kbd "C-x l") 'mark-current-line)
(global-set-key (kbd "C-M-l") 'mark-paragraph)

;; Delete with H
(setq help-char (string-to-char "<f1>"))
(define-key input-decode-map (kbd "C-h") (kbd "DEL"))
(define-key input-decode-map (kbd "M-h") (kbd "M-<DEL>"))

;; Transpose
(global-set-key (kbd "C-t") 'transpose-lines)
(global-set-key (kbd "M-t") 'transpose-paragraphs)

;; Goto line
(global-set-key (kbd "M-g") 'goto-line)

;; Default Regexp
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "M-%") 'query-replace-regexp)
(define-key isearch-mode-map (kbd "C-o") 'isearch-occur)

;; Align your code in a pretty way.
(global-set-key (kbd "C-x \\") 'align-regexp)

;; Function key
(global-set-key [f5] (lambda () (interactive) (eshell t)))
(global-set-key [f6] (lambda () (interactive) (serial-term "/dev/ttyS0" 0)))
(add-hook 'term-mode-hook (lambda () (interactive) (yas-minor-mode -1)))
