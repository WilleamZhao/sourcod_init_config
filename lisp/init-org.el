; 将Document/sourcod/org/gtd/todo.org替换为todo.org实际路径
(setq org-agenda-files (list "~/Documents/sourcod/org/gtd"))

(global-set-key "\C-ca" 'org-agenda)
(provide 'init-org)
