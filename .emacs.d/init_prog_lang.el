(defun my-c-mode-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             ;(c-toggle-auto-hungry-state 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (define-key c-mode-map (kbd "M-[") 'hs-hide-all)
             (define-key c-mode-map (kbd "M-]") 'hs-show-all)
             (define-key c-mode-map (kbd "M-{") 'hs-hide-block)
             (define-key c-mode-map (kbd "M-}") 'hs-show-block)
             (define-key c-mode-map [(return)] 'newline-and-indent)
             (define-key c-mode-map [(tab)] 'indent-for-tab-command))

(add-hook 'c-mode-hook 'my-c-mode-hook)

(defun my-perl-mode-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             ;(c-toggle-auto-hungry-state 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (define-key perl-mode-map (kbd "M-[") 'hs-hide-all)
             (define-key perl-mode-map (kbd "M-]") 'hs-show-all)
             (define-key perl-mode-map (kbd "M-{") 'hs-hide-block)
             (define-key perl-mode-map (kbd "M-}") 'hs-show-block)
             (define-key perl-mode-map [(return)] 'newline-and-indent)
             (define-key perl-mode-map [(tab)] 'indent-for-tab-command))

(add-hook 'perl-mode-hook 'my-perl-mode-hook)

(defun my-emacs-lisp-mode-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             ;(c-toggle-auto-hungry-state 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (define-key emacs-lisp-mode-map (kbd "M-[") 'hs-hide-all)
             (define-key emacs-lisp-mode-map (kbd "M-]") 'hs-show-all)
             (define-key emacs-lisp-mode-map (kbd "M-{") 'hs-hide-block)
             (define-key emacs-lisp-mode-map (kbd "M-}") 'hs-show-block)
             (define-key emacs-lisp-mode-map [(return)] 'newline-and-indent)
             (define-key emacs-lisp-mode-map [(tab)] 'indent-for-tab-command))

(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)

(defun my-sh-mode-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             ;(c-toggle-auto-hungry-state 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (define-key sh-mode-map (kbd "M-[") 'hs-hide-all)
             (define-key sh-mode-map (kbd "M-]") 'hs-show-all)
             (define-key sh-mode-map (kbd "M-{") 'hs-hide-block)
             (define-key sh-mode-map (kbd "M-}") 'hs-show-block)
             (define-key sh-mode-map [(return)] 'newline-and-indent)
             (define-key sh-mode-map [(tab)] 'indent-for-tab-command))

(add-hook 'sh-mode-hook 'my-sh-mode-hook)
