;; 不备份文件，不推荐  
(setq make-backup-files nil)

;; 括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号  
(show-paren-mode t)

;;不要总是没完没了的问yes or no, 为什么不能用 y/n   
(fset 'yes-or-no-p 'y-or-n-p)

;; 在行首 C-k 时，同时删除该行。
(setq-default kill-whole-line t)

;;设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数). 这样防止我不小心删掉重要的东西
(setq kill-ring-max 200)

;;进行语法加亮。
(setq global-font-lock-mode t)

;;让 Emacs 可以直接打开和显示图片。
(setq auto-image-file-mode t)

;;打开括号匹配显示模式
;;(show-paren-mode t)


;;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(setq show-paren-style 'parenthesis)


;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。
(setq frame-title-format "emacs@%b")


;;设置有用的个人信息,这在很多地方有用。
(setq user-full-name "willeamzhao")
(setq user-mail-address "zhaochunjie@sourcod.com")

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 打开gtd.otg文件
(defun open-gtd-file()
    (interactive)
  (find-file "~/Documents/sourcod/org/gtd/gtd.org"))


;; ====================
;; insert date and time

(defvar current-date-time-format "%a %b %d %H:%M:%S %Z %Y"
  "Format of date to insert with `insert-current-date-time' func
See help of `format-time-string' for possible replacements")

(defvar current-time-format "%a %H:%M:%S"
  "Format of date to insert with `insert-current-time' func.
Note the weekly scope of the command's precision.")

(defun insert-current-date-time ()
  "insert the current date and time into current buffer.
Uses `current-date-time-format' for the formatting the date/time."
       (interactive)
       (insert "==========\n")
;       (insert (let () (comment-start)))
       (insert (format-time-string current-date-time-format (current-time)))
       (insert "\n")
       )

(defun insert-current-time ()
  "insert the current time (1-week scope) into the current buffer."
       (interactive)
       (insert (format-time-string current-time-format (current-time)))
       (insert "\n")
       )

(global-set-key "\C-c\C-d" 'insert-current-date-time)

(global-set-key "\C-c\C-t" 'insert-current-time)

(defun now ()
  "Insert string for the current time formatted like '2:34 PM'."
  (interactive)                 ; permit invocation in minibuffer
  (insert (format-time-string "%y-%m-%d_%-H:%M:%S")))

;; 截图方法
(defun sourcod//insert-org-or-md-img-link (prefix imagename)
  (if (equal (file-name-extension (buffer-file-name)) "org")
      (insert (format "[[%s][%s%s]]" imagename prefix imagename))
    (insert (format "![%s](%s%s)" imagename prefix imagename))))

(defun sourcod/hexo-scrot (basename)
  (interactive "simgname name: ")
  (if (equal basename "")
      (setq basename (format-time-string "%y-%m-%d_%-H:%M:%S")))
  (setq fullpath
	(concat
	 ;; 相对路径 (file-name-directory (buffer-file-name) "../images/posts/"
	 ;; 图片存放地址 (绝对路径)
	 "/home/willeamzhao/Pictures/sourcod/images/"
	 (file-name-base (buffer-file-name))
	 "_"
	 basename
	 ))
  (setq relativepath
        (concat
	 (file-name-base (buffer-file-name))
	 "_"
	 basename
	 ".png"))
  
  (if (file-exists-p (file-name-directory fullpath))
      (progn
        (call-process "scrot" nil nil nil "-bs" (concat fullpath ".png"))
        (sourcod//insert-org-or-md-img-link "http://img.sourcod.com/" relativepath))
    (progn
      (call-process "scrot" nil nil nil "-bs" (concat basename ".png"))
      (sourcod//insert-org-or-md-img-link "~/" (concat basename ".png")))))

(provide 'init-general)
