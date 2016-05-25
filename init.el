(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; 加载包
(require 'init-packages)

;; 加载字体
(require 'init-fonts)

;; 加载ui
(require 'init-ui)

;; 加载通用组件
(require 'init-general)

;; 加载org-mode配置
(require 'init-org)

;; 加载绑定快捷键
(require 'init-keybindings)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cfs--current-profile-name "org-mode" t)
 '(spacemacs-theme-custom-colors
   (quote
    ((act1 . "#ff0000")
     (act2 . "#0000ff")
     (base . "#ffffff")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
