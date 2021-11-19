;; ------------------------------------------- ;;
;; -----keymappings--------------------------- ;;
;; ------------------------------------------- ;;
;; rapidly open configuration file
(defun open-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; bind <f2> to above function 'open-init-file'
(global-set-key (kbd "<f2>") 'open-init-file)

;; suggestion for following functions:
;; - find-function        -> (C-h C-f)
;; - find-variable        -> (C-h C-v)
;; - find-function-on key -> (C-h C-k)

;; ------------------------------------------- ;;
;; -----menu settings------------------------- ;;
;; ------------------------------------------- ;;
;; recent file opened in menu quickly
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
;; shortcut for opening recent files
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; ------------------------------------------- ;;
;; -----normal settings----------------------- ;;
;; ------------------------------------------- ;;
;; close tool bar
(tool-bar-mode -1)

;; close scroll bar widget
(scroll-bar-mode -1)

;; show line numbers
(global-linum-mode 1)

;; change cursor style
(setq-default cursor-type 'bar)

;; close startup help page
(setq inhibit->splash-screen 1)

;; close indent(will be removed later)
;;(electric-indent-mode -1)

;; change font size
(set-face-attribute 'default nil :height 110)

;; delete selection if type
(delete-selection-mode 1)
 
;; ------------------------------------------- ;;
;; -----packages settings--------------------- ;;
;; ------------------------------------------- ;;

;; =====MELPA repository settings============= ;;
(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/")))
  ;; Following is the official website settings:
  ;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  ;; Comment/uncommnet this line to enable MELPA Stable if desired. See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  ;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
  (package-initialize))

;; =====Other packages settings=============== ;;
;; open global 'Company' completion
(global-company-mode 1)
;; auto-generated in installation packages
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(math-symbol-lists company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
