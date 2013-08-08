;; iBuffer
(autoload 'ibuffer "ibuffer" "List buffers." t)
(global-set-key (kbd "C-x C-b") 'ibuffer)

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

;; Undo Tree
(global-set-key (kbd "C-u") 'undo-tree-undo)
(global-set-key (kbd "M-u") 'undo-tree-redo)

;; Projectile
(global-set-key (kbd "C-c o") 'projectile-find-file)
(global-set-key (kbd "C-c f") 'projectile-find-file-in-directory)
(global-set-key (kbd "C-c g") 'projectile-grep)

;; CScope
(global-set-key (kbd "C-/") 'ascope-find-functions-calling-this-function)
(global-set-key (kbd "C-.") 'ascope-find-global-definition)
(global-set-key (kbd "C-,") 'ascope-pop-mark)
(global-set-key (kbd "C-'") 'ascope-init)
(global-set-key (kbd "C-;") 'ascope-find-this-symbol)

;; redefine emacs keybinding
(global-set-key (kbd "C-\\") 'other-window)
(global-set-key (kbd "C-t") 'set-mark-command)
(global-set-key (kbd "M-t") 'set-mark-command)

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
