(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

;; 加载qiniu-mode
(autoload 'qiniu-mode "qiniu-mode" nil t)
(require 'qiniu-mode)

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
		      web-mode
		      ;; --- Minor Mode ---
		      nodejs-repl
		      exec-path-from-shell
		      org-pomodoro
		      ace-window
		      ;; --- Themes ---
		      ;; monokai-theme
		      ;; moe-theme
		      ;; solarized-theme
		      ;; color-theme-solarized
		      ;; dracula-theme
		      spacemacs-theme
		      ;; 中文输入法
		      chinese-pyim
		      popup
		      ;; 彩虹猫
		      nyan-mode
		      ;; 自动跳转
		      ace-jump-buffer
		      ;; 语法检查
		      flycheck
		      ;; git
		      magit
		      ;; 博客
		      hexo
		      ;; markdown
		      markdown-mode

		      youdao-dictionary
		      ;; 对齐
		      chinese-fonts-setup
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

;;(require 'chinese-fonts-setup)
;;(setq cfs-profiles
;;   '("program" "org-mode" "read-book"))

;; 绑定mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       '(("\\.markdown\\'" . markdown-mode))
       '(("\\.md\\'" . markdown-mode))
       '(("README\\.md\\'" . gfm-mode))
       auto-mode-alist))
;; 输入拼音
(require 'chinese-pyim)
(setq default-input-method "chinese-pyim")
(setq pyim-use-tooltip 'popup)
(setq pyim-dicts
      '((:name "pyim-bigdict.pyim" :file "~/.emacs.d/pyim/dicts/pyim-bigdict.pyim" :coding utf-8 :dict-type pinyin-dict)
        (:name "sogou.pyim" :file "~/.emacs.d/otherpackages/scel2pyim/sogou.pyim" :coding utf-8 :dict-type sogou-dict)))

;; hexo-mode
(require 'hexo)
;; hexo地址
(defun hexo-my-blog ()
    (interactive)
    (hexo "~/opt/sourcodBlog"))

;;;;;;;;;;;;;;;;;;
;; nyan-mode
;;;;;;;;;;;;;;;;;;

(require 'nyan-mode)
(nyan-mode t)
;;启动nyan-mode
(nyan-start-animation)
;;开始舞动吧（会耗cpu资源）
(setq-default nyan-wavy-trail t)


;;An entry without a cookie is treated just like priority ' B '.
;;So when create new task, they are default 重要且紧急
(setq org-agenda-custom-commands
      '(
	("w" . "任务安排")
	("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
	("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
	("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
	("b" "Blog" tags-todo "BLOG")
	("p" . "项目安排")
	("pw" tags-todo "PROJECT+WORK+CATEGORY=\"cocos2d-x\"")
	("pl" tags-todo "PROJECT+DREAM+CATEGORY=\"zilongshanren\"")
	("W" "Weekly Review"
	 ((stuck "")            ;; review stuck projects as designated by org-stuck-projects
	  (tags-todo "PROJECT") ;; review all projects (assuming you use todo keywords to designate projects)
	  ))))

(provide 'init-packages)
