(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

;; cl - Common Lisp Extension  
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      ;; --- Auto-completion ---
		      company
		      ;; --- Better Editor ---
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      ;; --- Major Mode ---
		      js2-mode
		      ;; --- Minor Mode ---
		      nodejs-repl
		      exec-path-from-shell
		      ;; --- Themes ---
		      monokai-theme
		      ;; 中文输入法
		      chinese-pyim
		      popup
		      ;; 彩虹猫
		      nyan-mode
		      ;; 自动跳转
		      ace-jump-buffer
		      ;; solarized-theme
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; 输入拼音
(require 'chinese-pyim)
(setq default-input-method "chinese-pyim")
(global-set-key (kbd "M-i") 'pyim-convert-pinyin-at-point)
(global-set-key (kbd "C-<SPC>") 'toggle-input-method)

(setq pyim-use-tooltip 'popup)
(setq pyim-dicts
      '((:name "pyim-bigdict.pyim" :file "~/.emacs.d/pyim/dicts/pyim-bigdict.pyim" :coding utf-8 :dict-type pinyin-dict)
        (:name "sogou.pyim" :file "~/.emacs.d/otherpackages/scel2pyim/sogou.pyim" :coding utf-8 :dict-type sogou-dict)))

;;;;;;;;;;;;;;;;;;
;; nyan-mode
;;;;;;;;;;;;;;;;;;

;; 这里你要将路径改为你的东西放置的文件夹
(require 'nyan-mode)
(nyan-mode t)
;;启动nyan-mode
(nyan-start-animation)
;;开始舞动吧（会耗cpu资源）
(setq-default nyan-wavy-trail t)

(provide 'init-packages)
