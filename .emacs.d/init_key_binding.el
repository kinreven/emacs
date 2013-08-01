;; iBuffer
(global-set-key (kbd "C-x b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

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
(global-set-key (kbd "C-z") 'undo-tree-undo) 
(global-set-key (kbd "C-S-z") 'undo-tree-redo)

;; Projectile
(global-set-key (kbd "M-o") 'projectile-find-file)
(global-set-key (kbd "M-O") 'projectile-find-file-in-directory)
(global-set-key (kbd "M-f") 'projectile-grep)

;; CScope
(global-set-key (kbd "M-/") 'ascope-find-functions-calling-this-function)
(global-set-key (kbd "M-?") 'ascope-find-this-symbol)
(global-set-key (kbd "M-.") 'ascope-find-global-definition)
(global-set-key (kbd "M->") 'ascope-find-this-text-string)
(global-set-key (kbd "M-<") 'ascope-init)
(global-set-key (kbd "M-,") 'ascope-pop-mark)

;; Buffer manage
(global-set-key (kbd "C-p") 'next-buffer)
(global-set-key (kbd "C-n") 'previous-buffer)
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-b") 'switch-to-buffer)
(global-set-key (kbd "C-w") 'save-buffers-kill-terminal)
(global-set-key (kbd "M-w") 'kill-buffer)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "C-a") 'mark-whole-buffer)

;; Redefine up/down/left/right
(defun window-move-up (&optional arg)
  "Current window move-up 2 lines."
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
(global-set-key (kbd "M-i") 'previous-line)
(global-set-key (kbd "M-k") 'next-line)
(global-set-key (kbd "M-j") 'backward-char)
(global-set-key (kbd "M-l") 'forward-char)
(global-set-key (kbd "C-i") 'backward-paragraph)
(global-set-key (kbd "C-k") 'forward-paragraph)
(global-set-key (kbd "C-j") 'backward-word)
(global-set-key (kbd "C-l") 'forward-word)
(global-set-key (kbd "M-p") 'window-move-up)        
(global-set-key (kbd "M-n") 'window-move-down)

;; Window manage
(global-set-key (kbd "C-|") 'previous-multiframe-window)
(global-set-key (kbd "C-\\") 'next-multiframe-window)
(global-set-key (kbd "C-=") 'enlarge-window)
(global-set-key (kbd "C--") 'enlarge-window-horizontally)
(global-set-key (kbd "M-=") 'shrink-window)
(global-set-key (kbd "M--") 'shrink-window-horizontally)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "M-1") 'delete-other-windows)

;; Frame manage
(global-set-key (kbd "M-N") 'new-frame)
(global-set-key (kbd "M-W") 'delete-frame)

;; Function key
(global-set-key [f5] (lambda () (interactive) (eshell)))
;; serial port on *nix
(global-set-key [f6] (lambda () (interactive) (serial-term "/dev/ttyS0" 0)))
;; serial port on Win32
;(global-set-key [f6] (lambda () (interactive) (serial-term "COM1" 115200)))
