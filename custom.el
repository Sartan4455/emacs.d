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
    ("e9460a84d876da407d9e6accf9ceba453e2f86f8b86076f37c08ad155de8223c" "503385a618581dacd495907738719565243ab3e6f62fec8814bade68ef66e996" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(default-input-method "latin-1-prefix")
 '(delete-selection-mode t nil (delsel))
 '(describe-char-unidata-list
   (quote
    (name old-name general-category decomposition digit-value numeric-value iso-10646-comment)))
 '(ede-project-directories
   (quote
    ("/home/darren/dev/atpsa/gui/dsweb" "/home/darren/dev/atpsa/gui/codesniff")))
 '(elpy-rpc-python-command "python3")
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
    (0blayout ag counsel-bbdb counsel use-package dumb-jump realgud flymake-python-pyflakes elpygen web-mode helm helm-ls-git expand-region git-gutter-fringe anaconda-mode json-mode atom-one-dark-theme geben elpy atom-dark-theme solarized-theme magit ivy pyvenv rpm-spec-mode php-extras php-mode syslog-mode log4j-mode js2-mode cmake-mode ac-php)))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(python-shell-interpreter "python3")
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
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
