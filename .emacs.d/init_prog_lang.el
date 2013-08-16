(defun my-c-mode-common-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (c-toggle-hungry-state 1)
             ;(c-toggle-auto-newline 1)             
             (c-set-style "stroustrup" )
             (modify-syntax-entry ?_ "w" c-mode-syntax-table)
             (define-key c-mode-base-map (kbd "C-c -") 'hs-hide-all)
             (define-key c-mode-base-map (kbd "C-c =") 'hs-show-all)
             (define-key c-mode-base-map (kbd "C-c [") 'hs-hide-block)
             (define-key c-mode-base-map (kbd "C-c ]") 'hs-show-block)
             (define-key c-mode-base-map [(return)] 'newline-and-indent)
             (define-key c-mode-base-map [(tab)] 'indent-for-tab-command))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(defun my-perl-mode-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (modify-syntax-entry ?_ "w" perl-mode-syntax-table)
             (define-key perl-mode-map (kbd "C-c -") 'hs-hide-all)
             (define-key perl-mode-map (kbd "C-c =") 'hs-show-all)
             (define-key perl-mode-map (kbd "C-c [") 'hs-hide-block)
             (define-key perl-mode-map (kbd "C-c ]") 'hs-show-block)
             (define-key perl-mode-map [(return)] 'newline-and-indent)
             (define-key perl-mode-map [(tab)] 'indent-for-tab-command))

(add-hook 'perl-mode-hook 'my-perl-mode-hook)

(defun my-emacs-lisp-mode-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (modify-syntax-entry ?- "w" emacs-lisp-mode-syntax-table)
             (define-key emacs-lisp-mode-map (kbd "C-c -") 'hs-hide-all)
             (define-key emacs-lisp-mode-map (kbd "C-c =") 'hs-show-all)
             (define-key emacs-lisp-mode-map (kbd "C-c [") 'hs-hide-block)
             (define-key emacs-lisp-mode-map (kbd "C-c ]") 'hs-show-block)
             (define-key emacs-lisp-mode-map [(return)] 'newline-and-indent)
             (define-key emacs-lisp-mode-map [(tab)] 'indent-for-tab-command))

(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)

(defun my-sh-mode-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (modify-syntax-entry ?_ "w" sh-mode-syntax-table)
             (define-key sh-mode-map (kbd "C-c -") 'hs-hide-all)
             (define-key sh-mode-map (kbd "C-c =") 'hs-show-all)
             (define-key sh-mode-map (kbd "C-c [") 'hs-hide-block)
             (define-key sh-mode-map (kbd "C-c ]") 'hs-show-block)
             (define-key sh-mode-map [(return)] 'newline-and-indent)
             (define-key sh-mode-map [(tab)] 'indent-for-tab-command))

(add-hook 'sh-mode-hook 'my-sh-mode-hook)
