(package-initialize)
(require 'package)
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)

(dolist (package '(use-package))
   (unless (package-installed-p package)
       (package-install package)))

(global-set-key (kbd "C-#") 'comment-region)
(global-set-key (kbd "C-'") 'uncomment-region)

(setq frame-title-format "emacs") 
(tool-bar-mode -1)
(scroll-bar-mode -1)
(ido-mode)
(setq visible-bell 1)
(windmove-default-keybindings)
(setq enable-recursive-minibuffers t)
(electric-pair-mode 1)

(use-package zenburn-theme
  :ensure t)

(load-theme 'zenburn t)

(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
  (add-hook 'org-shiftup-final-hook 'windmove-up)
  (add-hook 'org-shiftleft-final-hook 'windmove-left)
  (add-hook 'org-shiftdown-final-hook 'windmove-down)
  (add-hook 'org-shiftright-final-hook 'windmove-right)

(use-package counsel
  :ensure t
  )

(use-package swiper
  :ensure try
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (global-set-key "\C-s" 'swiper)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "<f6>") 'ivy-resume)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> l") 'counsel-load-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    (global-set-key (kbd "C-c g") 'counsel-git)
    (global-set-key (kbd "C-c j") 'counsel-git-grep)
    (global-set-key (kbd "C-c k") 'counsel-ag)
    (global-set-key (kbd "C-x l") 'counsel-locate)
    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))

(add-to-list 'package-archives
                 '("melpa" . "http://melpa.org/packages/"))

(require 'all-the-icons)
(insert (all-the-icons-icon-for-file "foo.js"))
(global-set-key [f8] 'neotree-toggle)
(setq neo-smart-open t)

(server-start)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq-default ispell-program-name "aspell")

(elpy-enable)
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
(define-key global-map (kbd "C-c o") 'iedit-mode)
(setq python-shell-completion-native-enable nil)

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    ))
(global-set-key (kbd "M-a") 'auto-complete-mode)

(global-set-key (kbd "M-y") 'helm-swoop)

(require 'helm-config)



(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x r b") 'helm-bookmarks)
(global-set-key (kbd "M-k") 'helm-show-kill-ring)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(use-package emmet-mode
  :ensure t)

(use-package impatient-mode
  :ensure t)

(use-package web-mode
  :ensure t)
(setq web-mode-enable-current-element-highlight t)
