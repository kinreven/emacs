(defun my-c-mode-hook ()
             (linum-mode 1)
             (hs-minor-mode 1)
             ;(c-toggle-auto-hungry-state 1)
             (setq c-basic-offset 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (define-key c-mode-base-map (kbd "M-[") 'hs-hide-all)
             (define-key c-mode-base-map (kbd "M-]") 'hs-show-all)
             (define-key c-mode-base-map (kbd "M-{") 'hs-hide-block)
             (define-key c-mode-base-map (kbd "M-}") 'hs-show-block)
             (define-key c-mode-base-map [(return)] 'newline-and-indent)
             (define-key c-mode-base-map [(tab)] (lambda ()
                                                    (interactive)
                                                    (if (looking-at "\\>")
                                                      (yas-expand nil)
                                                      (indent-for-tab-command)))))
(add-hook 'c-mode-hook 'my-c-mode-hook)