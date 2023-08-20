;   █▀▀ █▀▄▀█ ▄▀█ █▀▀ █▀
; ▄ ██▄ █ ▀ █ █▀█ █▄▄ ▄█

(global-hl-line-mode 1)
(menu-bar-mode -1) ;disable menu bar
(global-font-lock-mode t) ;syntax highlight
(setq make-backup-files nil) ;create no backup files
(global-display-line-numbers-mode)
(set-face-foreground 'line-number-current-line "white")
(setq-default truncate-lines t) ;turn off wrapping

;;;;;;;;;;enable mouse support
(global-font-lock-mode t)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ; Scroll one line at a time
(xterm-mouse-mode t) ; Enable mouse reporting
(global-set-key [mouse-4] '(lambda () (interactive) (scroll-down 1))) ; Bind mouse wheel up to scroll up
;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key [mouse-5] '(lambda () (interactive) (scroll-up 1))) ; Bind mouse wheel down to scroll down

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(doom-tokyo-night))
 '(custom-safe-themes
   '("60ada0ff6b91687f1a04cc17ad04119e59a7542644c7c59fc135909499400ab8" default))
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(doom-themes nerd-icons-completion all-the-icons-completion doom-modeline-now-playing doom-modeline nerd-icons mood-line simple-modeline nyan-mode vimrc-mode evil dracula-theme catppuccin-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;(load-theme 'dracula t)

(require 'doom-modeline)
(doom-modeline-mode 1)
;(setq doom-modeline-buffer-encoding nil)
(setq doom-modeline-unicode-fallback nil)
;;nerd-icons
(require 'nerd-icons)

;;support for vimfile...just in case
(require 'vimrc-mode)
(add-to-list 'auto-mode-alist '("\\.vim\\(rc\\)?\\'" . vimrc-mode))



;;;;HAHAHA
;(require 'evil)
;(evil-mode 1)
