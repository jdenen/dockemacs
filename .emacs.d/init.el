;; MELPA setup
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; use-package
(package-refresh-contents)
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))
(require 'use-package)

;; Startup settings
(setq inhibit-startup-screen  t
      inhibit-startup-message t
      inhibit-splash-screen   t
      initial-scratch-message nil
      initial-major-mode      'emacs-lisp-mode
      user-full-name          "Johnson Denen"
      user-mail-address       "johnson.denen@gmail.com")

;; Prompts
(fset 'yes-or-no-p 'y-or-n-p)

;; Debug
(setq debug-on-error t)

;; Git
(use-package magit
  :ensure t)

;; El Mock
(use-package el-mock
  :ensure t)

;; Undo
(use-package undo-tree
  :ensure t
  :diminish undo-tree-mode
  :init (global-undo-tree-mode t))

;; Parens
(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :init
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode t)))

;; Commenting
(use-package smart-comment
  :ensure t
  :bind ("M-;" . smart-comment))

;; Discover
(use-package discover
  :ensure t)

;; mastodon.el
(use-package mastodon
  :load-path "/home/johnson/code/me/mastodon.el/lisp")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (discover smart-comment smartparens undo-tree projectile git-timemachine magit ample-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
