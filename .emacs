(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http" . "localhost:3128")
        ("https" . "localhost:3128")))

(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(set-background-color "cornsilk")
(set-frame-font "DejaVu Sans Mono-8")
(setq default-frame-alist '((width . 164) (height . 50)))
(set-face-attribute 'default nil :height 120)
(menu-bar-mode -1)
(tool-bar-mode 0) ;; Remove the icons on top

(setq backup-directory-alist `((".*" . ,temporary-file-directory)))

(when (fboundp 'winner-mode) (winner-mode 1))
(global-set-key (kbd "C-x g") 'magit-status)
(require 'grep-a-lot)
(grep-a-lot-setup-keys)
(global-set-key [pause] 'next-error) ;; convenient for frequent use of 'grep-a-lot'
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq-default indent-tabs-mode nil)
;; whitespace mode
;;(setq-default whitespace-style '(face tabs spaces trailing lines space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark)
;; (setq-default whitespace-style '(face trailing))
(setq-default whitespace-style '(face trailing tabs))
(global-whitespace-mode)

(setq js2-basic-offset 2)
(setq js-indent-level 2)
(setq css-indent-offset 2)
(setq js-switch-indent-offset 4)
(setq js2-indent-switch-body t)


(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; (setq package-selected-packages
;;       '(
;;         ac-js2
;;         ag
;;         auto-complete
;;         bind-key
;;         grep-a-lot
;;         js2-mode
;;         magit
;;         ))
;; (package-install-selected-packages)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (sicp magit grep-a-lot bind-key auto-complete ag ac-js2))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
