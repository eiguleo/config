;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;;(package-initialize)

;;(require 'package)
;;(add-to-list 'package-archives
;;             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)




(setq inhibit-splash-screen 1)
(global-linum-mode 1)
(global-hl-line-mode 1)

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f5>") 'open-init-file)

(setq make-backup-files nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" default)))
 '(package-selected-packages
   (quote
    (elpy helm-ag iedit auto-yasnippet expand-region smartparens swiper counsel hungry-delete company monokai-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'monokai t)

(require 'hungry-delete)
(global-hungry-delete-mode)

(global-company-mode t)
;;(with-eval-after-load 'company
;;  (define-key company-active-map (kbd "M-n") nil )
;;  (define-key company-active-map (kbd "M-p") nil)
;;  (define-key company-active-map (kbd "C-n") #'company-select-next)
;;  (define-key company-active-map (kbd "C-p") #'company-select-previous)


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)


(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)


(require 'smartparens)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(global-set-key (kbd "M-s e") 'iedit-mode)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-c p s") 'helm-do-ag)

(elpy-enable)

;;(add-to-list 'load-path "/home/root/.emacs.d/elpa")
;;(require 'multi-term)
;;(setq multi-term-program "/bin/bash")
