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


(provide 'init-general)
