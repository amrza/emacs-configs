;;; minimal-dark-theme.el --- A minimal theme based on xterm-256 color set

;; This file is not part of GNU Emacs.

;; Copyright (C) 2015 Amirreza Ghaderi
;; Authors: Amirreza Ghaderi <amirreza.blog@gmail.com>
;; Version: 0.9
;; Keywords: syntax, highlight, theme, minimal, xterm
;; URL:
;; Compatibility: GNU Emacs 24.x

;;; Commentary:

;; Im not a big fan of syntax highlighting! to me, syntax highlighting is not
;; only reduce code readability, but its also a distraction! of course many
;; programmers may not agree with this opinion, but for those who do,
;; 'minimal-dark' is a VERY minimalistic color theme which use xterm-256 color set
;; so it has a unified look in both GUI and in Terminal. there is also a
;; 'light' version of this color theme (minimal-light).

;;; License:
;; Use of this source code is governed by the 'Revised BSD License'
;; which can be found in the LICENSE file.

;;; Code:

(deftheme minimal-dark
  "A minimal theme based on xterm-256 color set [dark version]")

(let ((black016 "#000000")   ;; black
      (white231 "#ffffff")   ;; white
      (gray233  "#121212")   ;; background
      (gray246  "#949494")   ;; text, code
      (gray251  "#c6c6c6")   ;; keywords
      (gray239  "#4e4e4e")   ;; comments
      (gray234  "#1c1c1c")   ;; line numbers, current line
      (red160   "#d70000")   ;; match
      (blue066  "#5f8787"))  ;; strings

  ;; Set faces
  (custom-theme-set-faces
   'minimal-dark

   `(default ((t (:foreground ,gray246 :background ,gray233))))
   `(cursor  ((t (:background ,white231))))

   ;; Highlighting faces
   `(fringe    ((t (:background ,black016))))
   `(highlight ((t (:background ,black016))))
   `(region    ((t (:background ,black016))))

   ;; Font lock faces
   `(font-lock-string-face        ((t (:foreground ,blue066))))
   `(font-lock-comment-face       ((t (:foreground ,gray239))))
   `(font-lock-constant-face      ((t (:foreground ,gray246))))
   `(font-lock-function-name-face ((t (:foreground ,gray246))))
   `(font-lock-variable-name-face ((t (:foreground ,gray246))))
   `(font-lock-builtin-face       ((t (:foreground ,gray251))))
   `(font-lock-keyword-face       ((t (:foreground ,gray251))))
   `(font-lock-type-face          ((t (:foreground ,gray251))))

   ;;ido
   `(ido-first-match ((t (:foreground ,white231))))
   `(ido-only-match  ((t (:foreground ,white231))))
   `(ido-subdir      ((t (:foreground ,gray246 :weight bold ))))

   ;;parens
   `(show-paren-mismatch   ((t (:foreground ,blue066 :background ,black016 :weight bold))))
   `(show-paren-match      ((t (:foreground ,red160  :background ,black016 :weight bold))))

   ;; line numbers, current line, mode-line
   ;`(hl-line-face ((t (:background ,gray234 :weight bold))))
   `(hl-line      ((t (:background ,gray234))))
   `(linum        ((t (:background ,gray234))))
   `(mode-line    ((t (:foreground ,gray233 :background ,gray246 :box nil))))

   ;; web-mode
   `(web-mode-html-tag-face          ((t (:foreground ,gray251))))
   `(web-mode-html-attr-name-face    ((t (:foreground ,gray251))))
   `(web-mode-css-property-name-face ((t (:foreground ,gray251))))
   `(web-mode-keyword-face           ((t (:foreground ,gray251))))
   `(web-mode-builtin-face           ((t (:foreground ,gray251))))

   ;; Elixir
   `(elixir-atom-face        ((t (:foreground ,gray251))))

   )

  ;; Set variables
  (custom-theme-set-variables
   'minimal-dark
   ;`(other variables)
   )
)

(provide-theme 'minimal-dark)


;; Local Variables:
;; no-byte-compile: t
;; End:

;;; minimal-dark-theme.el ends here
