(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(electric-pair-inhibit-predicate (quote electric-pair-conservative-inhibit))
 '(electric-pair-mode t)
 '(js2-bounce-indent-p t)
 '(git-gutter:hide-gutter t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; addons

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(require 'git-gutter)
(global-git-gutter-mode +1)

(require 'smart-mode-line)
(sml/setup)
(sml/apply-theme 'nil)
;; (sml/apply-theme 'automatic)

(require 'flycheck)
(add-hook 'after-init-hook 'global-flycheck-mode)
;;(eval-after-load 'flycheck
;;  '(progn
;;	 (require 'flycheck-google-cpplint)
;;	 ;; Add Google C++ Style checker.
;;	 ;; In default, syntax checked by Clang and Cppcheck.
;;	 (flycheck-add-next-checker 'c/c++-clang
;;								'(warnings-only . c/c++-googlelint))))


(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(require 'irony)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(setq irony-additional-clang-options (quote ("-std=c++11" "-stdlib=libc++")))

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
;;(defun my-irony-mode-hook ()
;;  (define-key irony-mode-map [remap completion-at-point]
;;    'irony-completion-at-point-async)
;;  (define-key irony-mode-map [remap complete-symbol]
;;    'irony-completion-at-point-async))
;;(add-hook 'irony-mode-hook 'my-irony-mode-hook)

(require 'company-irony)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

(require 'yasnippet)
(yas-global-mode 1)

(require 'go-mode)
(add-hook 'before-save-hook #'gofmt-before-save)

;;(defun my-setup-includes ()
;;  (setq flycheck-clang-include-path '("/Users/src"
;;					  "/Users/include"))
;;  (setq flycheck-clang-language-standard "c++11")
;;  (setq flycheck-clang-standard-library "libc++")
;;  (setq flycheck-clang-definitions '("CC_TARGET_OS_MAC" "CC_ENABLE_CHIPMUNK_INTEGRATION" "CC_KEYBOARD_SUPPORT" "USE_FILE32API")))


;; EXAMPLE FOR PROJECT SETUP
;;(defun project-setup-includes ()
;;  (setq flycheck-clang-include-path '("/path/to/include"
;;									  "/path/to/include"))
;;  (setq flycheck-clang-language-standard "c++11")
;;  (setq flycheck-clang-standard-library "libc++")
;;  (setq flycheck-clang-definitions '("CC_TARGET_OS_MAC" "CC_ENABLE_CHIPMUNK_INTEGRATION" "CC_KEYBOARD_SUPPORT" "USE_FILE32API")))

;;(setq default-directory "/path/to/project")

;; (add-hook 'c-mode-common-hook 'my-setup-includes)

;; start google-c-style with emacs
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(require 'move-text)
(move-text-default-bindings)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(define-key global-map (kbd "C-;") 'iedit-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; emacs built-in
(add-hook 'after-change-major-mode-hook (lambda() (electric-indent-mode -1)))

(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(add-hook 'before-save-hook 'whitespace-cleanup)

(set-frame-font "PragmataPro 14" nil t)

(load-theme 'flatui t)

(setq ns-use-srgb-colorspace t)

(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(cua-mode)

(setq show-paren-delay 0)
(show-paren-mode 1)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(kill-buffer "*scratch*")
(setq ring-bell-function 'ignore)
(defalias 'yes-or-no-p 'y-or-n-p)

(defvar backup-dir (expand-file-name "~/.emacs.d/backup/"))
(defvar autosave-dir (expand-file-name "~/.emacs.d/auto-save/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t))) ;; doesnt work for some whatever reason

;;(toggle-frame-fullscreen)

(setq default-directory "~/")

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))

(exec-path-from-shell-copy-env "GOPATH")
(exec-path-from-shell-copy-env "PATH")
