(setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
			 ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))
(package-initialize) ;; You might already have this line


(use-package highlight-parentheses
	       :ensure t)


(use-package recentf
  :ensure t
  :bind ("C-x C-r" . recentf-open-files)
 )




(setq make-backup-files nil)
(global-hl-line-mode t)
(global-highlight-changes-mode t)

(require 'linum)
(global-linum-mode t)
(setq linum-format (lambda (line) (propertize (format (let ((w (length (number-to-string (count-lines (point-min) (point-max)))))) (concat "%"
   (number-to-string w) "d ")) line) 'face 'linum)))(require 'linum)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package highlight-parentheses go-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
