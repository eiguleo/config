

(use-package package
  :ensure t
  :init
  :config
  (setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
			   ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")))
  (package-initialize)

  )





(setq make-backup-files nil)

(use-package counsel
  :ensure t
  :config
  (counsel-mode 1)
  )

(use-package recentf
  :ensure t
  :config
  (recentf-mode 1)
  (setq recentf-max-saved-items 100)
  )

(use-package which-key
  :ensure t
  :init (which-key-mode)
  )

(use-package multiple-cursors
  :ensure t
  )


(use-package rainbow-mode
  :ensure t
  :config
  (rainbow-mode 1)
  )
