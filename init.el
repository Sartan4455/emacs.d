(require 'package)
(setq save-interprogram-paste-before-kill t)

;; some updates to defaults
(progn
; (ido-mode t)
; (setq ido-enable-flex-matching t)

;  (menu-bar-mode -1)
;  (when (fboundp 'tool-bar-mode)
;    (tool-bar-mode -1))
;  (when (fboundp 'scroll-bar-mode)
;    (scroll-bar-mode -1))

  (autoload 'zap-up-to-char "misc"
    "Kill up to, but not including ARGth occurrence of CHAR." t)

  ;(require 'uniquify)
  ;(setq uniquify-buffer-name-style 'forward)

  (require 'saveplace)
  (setq-default save-place t)

  (global-set-key (kbd "M-/") 'hippie-expand)
  (global-set-key (kbd "C-x C-b") 'ibuffer)
  (global-set-key (kbd "M-z") 'zap-up-to-char)

  (global-set-key (kbd "C-s") 'isearch-forward-regexp)
  (global-set-key (kbd "C-r") 'isearch-backward-regexp)
  (global-set-key (kbd "C-M-s") 'isearch-forward)
  (global-set-key (kbd "C-M-r") 'isearch-backward)

  (show-paren-mode 1)
  (setq-default indent-tabs-mode nil)
  (setq select-enable-clipboard t
        select-enable-primary t
        save-interprogram-paste-before-kill t
        apropos-do-all t
        mouse-yank-at-point t
        require-final-newline t
;       visible-bell t
        load-prefer-newer t
        ediff-window-setup-function 'ediff-setup-windows-plain
        save-place-file (concat user-emacs-directory "places")
				)
	)

(provide 'better-defaults)



;;(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
 ;;                        ("marmalade" . "https://marmalade-repo.org/packages/")))

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(elpy-enable)
(setq elpy-rpc-backend "jedi")
;;(let ((default-directory "/home/darren/.emacs.d/elpa/"))
;;  (normal-top-level-add-subdirs-to-load-path))

 (add-to-list 'load-path "/home/darren/.emacs.d/lisp/")
;(require 'auto-complete-config)
;(add-to-list 'ac-dictionary-directories "~/.emacs/lisp/ac-dict")
;(ac-config-default)

;; PC Function Keys
(global-set-key [f1] 'goto-line)
;;(global-set-key [(shift f1)] 'view-emacs-FAQ)
(global-set-key [f2] 'comment-region)
(global-set-key [(shift f2)] 'universal-argument) ;uncomment is Shift-F2 F2
;;(global-set-key [f3] 'shell)
(global-set-key [f4] 'indent-region)
;;(global-set-key [(shift f4)] 'wrap-all-lines)
;;(global-set-key [f5] 'bury-buffer)
(global-set-key [(shift f5)] 'list-colors-display)
;; WARNING: f6 is set by pc-selection-mode
;;(global-set-key [(shift f6)] ')
;;(global-set-key [f7] 'insert-perl-print)
(global-set-key [(shift f7)] 'bye-bye-newlines)
;;(global-set-key [f8] 'run-perl)
;;(global-set-key [(shift f8)] 'debug-perl)
(global-set-key [f9] 'split-window-vertically)
(global-set-key [f10] 'delete-other-windows) ; unsplit window
(global-set-key [f11] 'replace-regexp)
(global-set-key [f12] 'undo)
(global-set-key [(shift f12)] 'open-dot-emacs)

;;js mode
; js2-mode is now a better minor mode

;;(autoload 'javascript-mode "javascript-mode" "JavaScript mode" t)
;;(autoload 'javascript-mode "javascript" nil t)
(fset 'perl-mode 'cperl-mode)
(autoload 'css-mode "css-mode" "Mode for editing CSS files" t)


;; extra minor mode for sqml
;(require 'xml-lite)											;
;(load "/usr/share/emacs/site-lisp/nxhtml/autostart")


(load-theme 'atom-one-dark t)
;;(load-theme 'solarized-light t)
;(load-theme 'sanityinc-solarized-light t)

;; Make control+pageup/down scroll the other buffer
																				;(global-set-key [(control next)] 'scroll-other-window)
																				;(global-set-key [(control prior)] 'scroll-other-window-down)

;; Set titles for frame and icon (%f == file name, %b == buffer name)
(setq-default frame-title-format (list "%f"))
(setq-default icon-title-format "Emacs - %b")

;; ---------------------------------------------------------------------------
																				; Highlighting
;; ---------------------------------------------------------------------------
;; highlight region between point and mark
																				;(transient-mark-mode t)
;; highlight during query
(setq query-replace-highlight t)
;; highlight incremental search
(setq search-highlight t)

;; Show matching parenthesis. How can you live without it.
(show-paren-mode t)

;; Don't add new lines to the end of a file when using down-arrow key
(setq next-line-add-newlines nil)

;; Start off in "C:/" dir.
																				;(cd "C:/")

;; Dont show the GNU splash screen
(setq inhibit-startup-message t)

;; Make all "yes or no" prompts show "y or n" instead
(fset 'yes-or-no-p 'y-or-n-p)

;; Open unidentified files in text mode
(setq major-mode 'text-mode)

;; always highlight scalars
;;(setq cperl-highlight-variables-indiscriminately t)


;; ---------------------------------------------------------------------------
;;Key Bindings
;; ---------------------------------------------------------------------------
;; Windows-like selection and key bindings, but don't replace marked text when writing
																				;(pc-bindings-mode)
																				;(pc-selection-mode)
;;;;;;;;;;;;;;;;;;
(global-set-key [mouse-3] 'imenu)

																				;(setq my-author-name (getenv "USER"))
																				;(setq user-full-name (getenv "USER"))
																				;(setq default-directory "C:/")

;; ---------------------------------------------------------------------------
;; Current line & column of cursor in the mode line (bar at the bottom)
;; ---------------------------------------------------------------------------
(line-number-mode 1)
(setq column-number-mode t)
;; show current function in modeline
(which-function-mode t)

;; delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; always overwrite
(setq-default overwrite-mode nil)

;; ---------------------------------------------------------------------------
;; Do only one line scrolling.
;; ---------------------------------------------------------------------------
(setq scroll-step 1)

;; ---------------------------------------------------------------------------
;; Don't wrap long lines.
;; ---------------------------------------------------------------------------
(set-default 'truncate-lines nil)

;; ---------------------------------------------------------------------------
;; Make the region visible (but only up to the next operation on it)
;; ---------------------------------------------------------------------------
(setq transient-mark-mode nil)
;; Code Folding
;;(add-hook 'cperl-mode-hook 'outline-minor-mode)


;; don't make pesky backup files
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))

;; don't use version numbers for backup files
;; (setq version-control 'never)
;; not sure what these do
;;(setq text-mode-hook 'turn-on-auto-fill)

;(put 'eval-expression 'disabled nil)



																				;cperl
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#839496" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#002b36"))
 '(auto-save-default nil)
 '(browse-url-browser-function (quote browse-url-default-browser))
 '(browse-url-firefox-program "~/firefox/firefox")
 '(case-fold-search t)
 '(column-number-mode t)
 '(comment-column 0)
 '(comment-end "" t)
 '(comment-line-break-function (quote comment-indent-new-line) t)
 '(comment-start nil t)
 '(comment-start-skip nil t)
 '(compilation-message-face (quote default))
 '(cperl-clobber-mode-lists t)
 '(cperl-close-paren-offset -2)
 '(cperl-comment-column 0)
 '(cperl-electric-backspace-untabify nil)
 '(cperl-font-lock t)
 '(cperl-hairy nil)
 '(cperl-highlight-variables-indiscriminately t)
 '(cperl-indent-left-aligned-comments nil)
 '(cperl-indent-level 2)
 '(cperl-indent-parens-as-block t)
 '(cperl-speed (quote please-ignore-this-line) t)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(current-language-environment "Latin-1")
 '(custom-safe-themes
   (quote
    ("503385a618581dacd495907738719565243ab3e6f62fec8814bade68ef66e996" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(default-input-method "latin-1-prefix")
 '(delete-selection-mode t nil (delsel))
 '(describe-char-unidata-list
   (quote
    (name old-name general-category decomposition digit-value numeric-value iso-10646-comment)))
 '(ede-project-directories
   (quote
    ("/home/darren/dev/atpsa/gui/dsweb" "/home/darren/dev/atpsa/gui/codesniff")))
 '(fci-rule-color "#073642")
 '(find-file-run-dired t)
 '(global-font-lock-mode t nil (font-lock))
 '(hide-ifdef-read-only nil)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hs-hide-comments-when-hiding-all t)
 '(imenu-auto-rescan t)
 '(imenu-max-items 100)
 '(inhibit-read-only t t)
 '(initial-scratch-message nil)
 '(large-file-warning-threshold nil)
 '(magit-diff-use-overlays nil)
 '(message-yank-prefix "> ")
 '(mode-require-final-newline nil)
 '(mouse-wheel-mode t nil (mwheel))
 '(mouse-wheel-progressive-speed nil)
 '(mouse-yank-at-point nil)
 '(nxml-slash-auto-complete-flag t)
 '(package-selected-packages
   (quote
    (magit ivy pyvenv rpm-spec-mode php-extras php-mode syslog-mode log4j-mode js2-mode cmake-mode ac-php)))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(recentf-auto-cleanup (quote never))
 '(recentf-max-saved-items 1)
 '(recentf-mode nil nil (recentf))
 '(select-enable-primary t)
 '(show-paren-mode t nil (paren))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(tab-stop-list
   (quote
    (2 4 8 16 24 32 40 48 56 64 72 80 88 96 104 112 120)))
 '(tab-width 2)
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil nil (tool-bar))
 '(undo-limit 200000)
 '(undo-strong-limit 300000)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil)
 '(view-read-only t)
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496"))))




;(setq save-place-file "~/.emacs.d/saveplace") ;; keep my ~/ clean
;(setq-default save-place t)                   ;; activate it for all buffers
;(require 'saveplace)                          ;; get the package

;; In abbrev mode, inserting an abbreviation causes it to expand
;; and be replaced by its expansion.
																				; (setq-default abbrev-mode t)
																				; (read-abbrev-file "~/.abbrev_defs")
																				; (setq save-abbrevs t)


;; ---------------------------------------------------------------------------
;; Bind major editing modes to certain file extensions
;;----------------------------------------------------------------------------
(setq auto-mode-alist
      '(("\\.[Cc][Oo][Mm]\\'" . text-mode)
				("\\.js$" . js2-mode)
				("\\.bat\\'" . bat-generic-mode)
				("\\.\\(sql\\|out\\)\\'" . sql-mode)
				("\\.inf\\'" . inf-generic-mode)
        ("\\.rc\\'" . rc-generic-mode)
        ("\\.reg\\'" . reg-generic-mode)
        ("\\.te?xt\\'" . text-mode)
        ("\\.c\\'" . c-mode)
        ("\\.h\\'" . c++-mode)
        ("\\.el\\'" . emacs-lisp-mode)
        ("\\.l\\'" . lisp-mode)
        ("\\.lisp\\'" . lisp-mode)
        ("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode)
				("\\.cgi$"  . cperl-mode)
				("\\.s?html?\\'" . web-mode)
        ("\\.idl\\'" . c++-mode)
        ("\\.cc\\'" . c++-mode)
        ("\\.hh\\'" . c++-mode)
        ("\\.hpp\\'" . c++-mode)
        ("\\.C\\'" . c++-mode)
        ("\\.H\\'" . c++-mode)
        ("\\.cpp\\'" . c++-mode)
        ("\\.[cC][xX][xX]\\'" . c++-mode)
        ("\\.hxx\\'" . c++-mode)
        ("\\.c\\+\\+\\'" . c++-mode)
        ("\\.h\\+\\+\\'" . c++-mode)
        ("\\.m\\'" . objc-mode)
        ("\\.java\\'" . java-mode)
        ("\\.ma?k\\'" . makefile-mode)
        ("\\(M\\|m\\|GNUm\\)akefile\\(\\.in\\)?" . makefile-mode)
        ("\\.am\\'" . makefile-mode)
        ("\\.mms\\'" . makefile-mode)
        ("\\.texinfo\\'" . texinfo-mode)
        ("\\.te?xi\\'" . texinfo-mode)
        ("ChangeLog\\'" . change-log-mode)
        ("change\\.log\\'" . change-log-mode)
        ("changelo\\'" . change-log-mode)
        ("ChangeLog\\.[0-9]+\\'" . change-log-mode)
        ("changelog\\'" . change-log-mode)
        ("changelog\\.[0-9]+\\'" . change-log-mode)
        ("\\$CHANGE_LOG\\$\\.TXT" . change-log-mode)
        ("\\.[ck]?sh\\'\\|\\.shar\\'\\|/\\.z?profile\\'" . sh-mode)
        ("\\(/\\|\\`\\)\\.\\(bash_profile\\|z?login\\|bash_login\\|z?logout\\)\\'" . sh-mode)
        ("\\(/\\|\\`\\)\\.\\(bash_logout\\|[kz]shrc\\|bashrc\\|t?cshrc\\|esrc\\)\\'" . sh-mode)
        ("\\(/\\|\\`\\)\\.\\([kz]shenv\\|xinitrc\\|startxrc\\|xsession\\)\\'" . sh-mode)
        ("\\.article\\'" . text-mode)
        ("\\.letter\\'" . text-mode)
        ("\\.lsp\\'" . lisp-mode)
        ("\\.awk\\'" . awk-mode)
        ("\\.tar\\'" . tar-mode)
        ("\\.\\(arc\\|zip\\|lzh\\|zoo\\|jar\\)\\'" . archive-mode)
        ("\\.\\(ARC\\|ZIP\\|LZH\\|ZOO\\|JAR\\)\\'" . archive-mode)
        ("\\`/tmp/Re" . text-mode)
        ("/Message[0-9]*\\'" . text-mode)
        ("\\`/tmp/fol/" . text-mode)
        ("\\.y\\'" . c-mode)
        ("\\.lex\\'" . c-mode)
        ("\\.sgml?\\'" . sgml-mode)
        ("\\.xml\\'" . sgml-mode)
        ("\\.dtd\\'" . sgml-mode)
        ("\\.ds\\(ss\\)?l\\'" . dsssl-mode)
        ("\\.idl\\'" . c++-mode)
        ("[]>:/\\]\\..*emacs\\'" . emacs-lisp-mode)
        ("\\`\\..*emacs\\'" . emacs-lisp-mode)
        ("[:/]_emacs\\'" . emacs-lisp-mode)
        ("\\.ml\\'" . lisp-mode)
        ("\\.ssi\\'" . web-mode)
        ("\\.css\\'" . css-mode)
        ;; php
        ("\\.php$" . php-mode)
        ("\\.php3$" . php-mode)
        ;; spec
        ("\\.spec$" . rpm-spec-mode)
        ;; python
        ("\\.py$" . python-mode)

        ))

;; blue coat settings
;;(add-to-list'load-path "~/.emacs.d")


;(load "php-mode")

;;(global-ede-mode 1)
;;(semantic-mode 1)
;; ---------------------------------------------------------------------------
;;			MENU CUSTOMISATION
;; ---------------------------------------------------------------------------
;;Add a 'Perl' menu
;; (define-key global-map [menu-bar perl-menu]
;;   (cons "Perl" (make-sparse-keymap "Perl")))
;; (define-key-after (lookup-key global-map [menu-bar perl-menu])
;;   [goto-line-label] '("Goto Line" . goto-line) t)
;; (define-key-after (lookup-key global-map [menu-bar perl-menu])
;;   [comment-region-label] '("Comment Highlighted Region" . comment-region) t)
;; (define-key-after (lookup-key global-map [menu-bar perl-menu])
;;   [indent-region-label] '("Indent Highlighted Region   (f4)" . indent-region) t)
;; (define-key-after (lookup-key global-map [menu-bar perl-menu])
;;   [wrap-all-lines-label] '("Wrap Lines" . wrap-all-lines) t)
;; (define-key-after (lookup-key global-map [menu-bar perl-menu])
;;   [query-replace-label] '("Replace                            (f11)" . query-replace) t)
;; (define-key-after (lookup-key global-map [menu-bar perl-menu])
;;   [unix-to-dos-label] '("Reformat UNIX -> DOS" . unix-dos) t)
;; (define-key-after (lookup-key global-map [menu-bar perl-menu])
;;   [dos-to-unix-label] '("Reformat DOS -> UNIX" . dos-unix) t)
;; (define-key-after (lookup-key global-map [menu-bar perl-menu])
;;   [perl-menu-separator5] '("--" . perl-menu-separator5) t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;			F U N C T I O N S
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Get rid of new lines
(defun bye-bye-newlines () (interactive) (goto-char (point-min))
  (while (search-forward "\n" nil t) (replace-match ""))
  (goto-char (point-min))
  (while (re-search-forward "[ \t]+" nil t)
    (replace-match " ")
    )
  (goto-char (point-min))
	)
;;Convert DOS cr-lf to UNIX newline
(defun dos-unix () (interactive) (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))
;;Convert UNIX newline to DOS cr-lf
(defun unix-dos () (interactive) (goto-char (point-min))
  (while (search-forward "\n" nil t)
    (replace-match "\r\n")))
(defun open-dot-emacs ()
  "opening-dot-emacs"
  (interactive)									;this makes the function a command too
  (find-file "~/.emacs")
	)

;(put 'downcase-region 'disabled nil)
;(add-hook 'js-mode-hook 'js2-mode)
;(put 'upcase-region 'disabled nil)
(add-hook 'cperl-mode-hook
          (lambda()
            (require 'perl-completion)
          ;;  (perl-completion-mode t)
            ))
;(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'elpy-mode)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)


;; Show all line numbering by default (you can turn this off if you would like)

(add-hook 'text-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'linum-mode)

;; Adjust Spacing
(setq linum-format "%d  ")
(require 'git-gutter-fringe)
(global-git-gutter-mode +1)
(setq git-gutter-fr:side 'right-fringe)

;;(require 'helm-config)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(use-package dumb-jump
  :bind (("M-g o" . dumb-jump-go-other-window)
         ("M-g j" . dumb-jump-go)
         ("M-g i" . dumb-jump-go-prompt)
         ("M-g x" . dumb-jump-go-prefer-external)
         ("M-g z" . dumb-jump-go-prefer-external-other-window))
  :config (setq dumb-jump-selector 'ivy) ;;(setq dumb-jump-selector 'helm)
  :ensure)


(require 'helm-ls-git)
;;(global-set-key (kbd "C-x C-o") 'helm-ls-git-ls)
(global-set-key (kbd "C-x C-d") 'helm-browse-project)

(ivy-mode 1)

(defun ora-swiper ()
  (interactive)
  (if (and (buffer-file-name)
           (not (ignore-errors
                  (file-remote-p (buffer-file-name))))
           (if (eq major-mode 'org-mode)
               (> (buffer-size) 60000)
             (> (buffer-size) 300000)))
      (progn
        (save-buffer)
        (counsel-grep))
    (swiper)))

(global-set-key "\C-s" 'ora-swiper)


;;(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(global-set-key (kbd "C-c C-r") 'ivy-resume)
;; search with ag instead of
(setq counsel-grep-base-command "ag --nocolor %s %s")