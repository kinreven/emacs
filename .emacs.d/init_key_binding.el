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

;; Files
(global-set-key (kbd "C-x f") 'ido-find-file)
(global-set-key (kbd "C-o") 'ido-find-file)
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

;; Window layout 
(setq winner-dont-bind-my-keys t) 
(winner-mode t) 
(global-set-key (kbd "C-x p") 'winner-undo) 
(global-set-key (kbd "C-x n") 'winner-redo)

;; Movement
;(define-key key-translation-map (kbd "C-m") )
(keyboard-translate ?\C-i ?\H-i)
(keyboard-translate ?\C-m ?\H-m)
;; Rebind then accordantly: 
(global-set-key [?\H-m] 'set-mark-command)
(global-set-key [?\H-i] (kbd "C-p"))
(define-key key-translation-map (kbd "M-m") (kbd "C-@"))     
(define-key key-translation-map (kbd "C-k") (kbd "C-n"))
(define-key key-translation-map (kbd "C-j") (kbd "C-b"))
(define-key key-translation-map (kbd "C-l") (kbd "C-f"))
(define-key key-translation-map (kbd "M-j") (kbd "M-b"))
(define-key key-translation-map (kbd "M-l") (kbd "M-f"))
(define-key key-translation-map (kbd "M-i") (kbd "M-{"))
(define-key key-translation-map (kbd "M-k") (kbd "M-}"))
(define-key key-translation-map (kbd "C-M-i") (kbd "C-M-a"))
(define-key key-translation-map (kbd "C-M-k") (kbd "C-M-e"))
(define-key key-translation-map (kbd "C-M-j") (kbd "C-M-b"))
(define-key key-translation-map (kbd "C-M-l") (kbd "C-M-f"))

;; Delete with H
(setq help-char (string-to-char "<f1>"))                      ;; Bind ONLY F1 to help, not C-h
(define-key input-decode-map (kbd "C-h") (kbd "DEL"))         ;; Translate C-h to DEL ;; FIXME:  Should be in emacs 22, doens't work.
(define-key input-decode-map (kbd "M-h") (kbd "M-<DEL>"))     ;; Translate M-h to M-DEL

;; Mark region
(global-set-key (kbd "C-x l") 'mark-paragraph)
(global-set-key (kbd "C-x h") 'mark-whole-buffer)

;; Transpose
(global-set-key (kbd "C-t") 'transpose-lines)
(global-set-key (kbd "M-t") 'transpose-paragraphs)
