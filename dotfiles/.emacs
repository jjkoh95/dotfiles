(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; evil mode
(require 'evil)
(evil-mode 1)

;; show numberline
;;(global-linum-mode t)
(global-display-line-numbers-mode)

;; tab to spaces
(setq-default indent-tabs-mode nil)

;; disable backups
(setq make-backup-files nil)
(setq auto-save-default nil)

(global-hl-line-mode 1)
