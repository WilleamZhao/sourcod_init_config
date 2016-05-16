(load-theme 'monokai t)

;; 显示行号
(global-linum-mode 1)



;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)


;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 120)

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;设置光标为竖线  
(setq-default cursor-type 'bar)

;; insert
(delete-selection-mode 1)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;   显示时间设置   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上  
(setq display-time-24hr-format t);;时间使用24小时制  
(setq display-time-day-and-date t);;时间显示包括日期和具体时间  
(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置  
(setq display-time-interval 10);;时间的变化频率，单位多少来着？  
   
;;;;;;;;;;;;;;;;;;;;;;;;;;;  显示时间设置结束  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  

;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t)

;;关闭烦人的出错时的提示声
(setq visible-bell t)

;; 防止页面滚动时跳动
(setq scroll-margin 3 scroll-conservatively 10000)
;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。

(provide 'init-ui)
