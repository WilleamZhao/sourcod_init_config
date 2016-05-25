;; 输入法绑定
;; 点石成金
(global-set-key (kbd "M-i") 'pyim-convert-pinyin-at-point)
;; 切换输入法
(global-set-key (kbd "C-<SPC>") 'toggle-input-method)



;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
;; (global-set-key (kbd "<f2>") 'open-init-file)

(global-set-key (kbd "C-c C-o") 'open-gtd-file)

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

;; 绑定打开hexo博客快捷键
(global-set-key (kbd "C-c h") 'hexo-my-blog)

;; 绑定上传七牛快捷键
(global-set-key (kbd "C-x C-j") 'sourcod/hexo-scrot)
(provide 'init-keybindings)
