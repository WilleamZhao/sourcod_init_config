;; (autoload 'qiniu-mode "~/.emacs.d/lisp/qiniu-mode.el" t nil)
;; 上传到七牛云存储

;; qiniu commitslist
;; account 	设置或显示当前用户的AccessKey和SecretKey
;; zone 	切换当前设置帐号所在的机房区域，仅账号拥有该指定区域机房时有效
;; dircache 	输出本地指定路径下所有的文件列表
;; listbucket 	列举七牛空间里面的所有文件
;; alilistbucket 	列举阿里OSS空间里面的所有文件
;; prefop 	查询七牛数据处理的结果
;; fput 	以文件表单的方式上传一个文件
;; rput 	以分片上传的方式上传一个文件
;; qupload 	同步数据到七牛空间， 带同步进度信息，和数据上传完整性检查
;; qdownload 	从七牛空间同步数据到本地，支持只同步某些前缀的文件，支持增量同步
;; stat 	查询七牛空间中一个文件的基本信息
;; delete 	删除七牛空间中的一个文件
;; move 	移动或重命名七牛空间中的一个文件
;; copy 	复制七牛空间中的一个文件
;; chgm 	修改七牛空间中的一个文件的MimeType
;; fetch 	从Internet上抓取一个资源并存储到七牛空间中
;; sync 	从Internet上抓取一个资源并存储到七牛空间中，适合大文件的场合
;; prefetch 	更新七牛空间中从源站镜像过来的文件
;; batchdelete 	批量删除七牛空间中的文件，可以直接根据listbucket的结果来删除
;; batchchgm 	批量修改七牛空间中文件的MimeType
;; batchcopy 	批量复制七牛空间中的文件到另一个空间
;; batchmove 	批量移动七牛空间中的文件到另一个空间
;; batchrename 	批量重命名七牛空间中的文件
;; batchrefresh 批量刷新七牛空间中的文件的访问外链
;; batchsign 	批量根据资源的公开外链生成资源的私有外链
;; checkqrsync 	检查qrsync的同步结果，主要通过比对dircache和listbucket的结果
;; b64encode 	base64编码工具，可选是否使用UrlSafe方式，默认UrlSafe
;; b64decode 	base64解码工具，可选是否使用UrlSafe方式，默认UrlSafe
;; urlencode 	url编码工具
;; urldecode 	url解码工具
;; ts2d 	将timestamp(单位秒)转为UTC+8:00中国日期，主要用来检查上传策略的deadline参数
;; tms2d 	将timestamp(单位毫秒)转为UTC+8:00中国日期
;; tns2d 	将timestamp(单位100纳秒)转为UTC+8:00中国日期
;; d2ts 	将日期转为timestamp(单位秒)
;; ip 	        根据淘宝的公开API查询ip地址的地理位置
;; qetag 	根据七牛的qetag算法来计算文件的hash
;; unzip 	解压zip文件，支持UTF-8编码和GBK编码
;; privateurl 	生成私有空间资源的访问外链
;; saveas 	实时处理的saveas链接快捷生成工具
;; reqid 	七牛自定义头部X-Reqid解码工具
;; m3u8delete 	根据流媒体播放列表文件删除七牛空间中的流媒体切片
;; buckets 	获取当前账号下所有的空间名称
;; domains 	获取指定空间的所有关联域名
;; cdnwho 	根据IP地址查询对应的CDN厂商信息，可以用来做域名解析分析



(defun qiniu-account()
  (interactive)
  (shell-command ""))

(defun qiniu-zone ()
  (interactive)
  (shell-command ""))

(defun qiniu-dircache ()
  (interactive)
  (shell-command ""))

(defun qiniu-listbucket ()
  (interactive)
  (shell-command ""))

(defun qiniu-alilistbucket ()
  (interactive)
  (shell-command ""))

(defun qiniu-prefop ()
  (interactive)
  (shell-command ""))

(defun qiniu-fput ()
  (interactive)
  (shell-command ""))

(defun qiniu-rput ()
  (interactive)
  (shell-command ""))

(defun qiniu-upload ()
  (interactive)
  (shell-command "qshell qupload /home/willeamzhao/opt/qshell/qupload.conf"))

(defun qiniu-qdownload ()
  (interactive)
  (shell-command ""))

(defun qiniu-stat ()
  (interactive)
  (shell-command ""))

(defun qiniu-delete ()
  (interactive)
  (shell-command ""))

(defun qiniu-move ()
  (interactive)
  (shell-command ""))

(defun qiniu-copy ()
  (interactive)
  (shell-command ""))

(defun qiniu-chgm ()
  (interactive)
  (shell-command ""))

(defun qiniu-fetch ()
  (interactive)
  (shell-command ""))

(defun qiniu-sync ()
  (interactive)
  (shell-command ""))

(defun qiniu-prefetch ()
  (interactive)
  (shell-command ""))

(defun qiniu-batchdelete ()
  (interactive)
  (shell-command ""))

(defun qiniu-batchchgm ()
  (interactive)
  (shell-command ""))

(defun qiniu-batchcopy ()
  (interactive)
  (shell-command ""))

(defun qiniu-batchmove ()
  (interactive)
  (shell-command ""))

(defun qiniu-batchrename ()
  (interactive)
  (shell-command ""))
(defun qiniu-batchrefresh ()
  (interactive)
  (shell-command ""))

(defun qiniu-batchsign ()
  (interactive)
  (shell-command ""))

(defun qiniu-checkqrsync ()
  (interactive)
  (shell-command ""))

(defun qiniu-b64encode ()
  (interactive)
  (shell-command ""))

(defun qiniu-b64decode ()
  (interactive)
  (shell-command ""))

(defun qiniu-urlencode ()
  (interactive)
  (shell-command ""))

(defun qiniu-urldecode ()
  (interactive)
  (shell-command ""))

(defun qiniu-ts2d ()
  (interactive)
  (shell-command ""))

(defun qiniu-tms2d ()
  (interactive)
  (shell-command ""))

(defun qiniu-tns2d ()
  (interactive)
  (shell-command ""))

(defun qiniu-d2ts ()
  (interactive)
  (shell-command ""))

(defun qiniu-ip ()
  (interactive)
  (shell-command ""))

(defun qiniu-qetag ()
  (interactive)
  (shell-command ""))

(defun qiniu-unzip ()
  (interactive)
  (shell-command ""))

(defun qiniu-privateurl ()
  (interactive)
  (shell-command ""))

(defun qiniu-saveas ()
  (interactive)
  (shell-command ""))

(defun qiniu-reqid ()
  (interactive)
  (shell-command ""))

(defun qiniu-m3u8delete ()
  (interactive)
  (shell-command ""))

(defun qiniu-buckets ()
  (interactive)
  (shell-command ""))

(defun qiniu-domains ()
  (interactive)
  (shell-command ""))

(defun qiniu-cdnwho ()
  (interactive)
  (shell-command ""))

;; (autoload 'qiniu-upload "~/.emacs.d/lisp/qiniu-mode.el" nil t)
;; (autoload 'qiniu-mode "~/.emacs.d/lisp/qiniu-mode.el" nil t)

(provide 'qiniu-mode)
