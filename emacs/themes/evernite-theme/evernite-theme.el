;;; evernite-theme.el --- evernite theme

;; Author: Haofan Jiang 
;; URL: https://github.com/holofunctor

;;; Commentary:

;;; Code:

(deftheme evernite "Everlasting nights")

;;; Colors

(defvar evernite-default-colors-alist
  '(("nite-color-fg"               . "#F0FFF0")
    ("nite-color-fg-light"         . "#F0FFF0")
    ("nite-color-fg-dark"          . "#F0FFF0")
    ("nite-color-bg"               . "#24283B")
    ("nite-color-bg-light"         . "#35394C")
    ("nite-color-bg-dark"          . "#1A1B26")
    ("nite-color-black"            . "#000000")
    ("nite-color-gray"             . "#565F89")
    ("nite-color-white"            . "#FFFFFF")
    ("nite-color-red"              . "#DC143C")
    ("nite-color-pink"             . "#F7768E")
    ("nite-color-orange"           . "#FF9E64")
    ("nite-color-yellow"           . "#FFD700")
    ("nite-color-green"            . "#00FA9A")
    ("nite-color-green-light"      . "#00FA9A")
    ("nite-color-green-lighter"    . "#00FA9A")
    ("nite-color-green-dark"       . "#00FA9A")
    ("nite-color-turquoise"        . "#40E0D0")
    ("nite-color-cyan"             . "#00FFFF")
    ("nite-color-blue"             . "#7AA2F7")
    ("nite-color-indigo"           . "#4078C0")
    ("nite-color-violet"           . "#BB9AF7"))

  "List of evernite colors (NAME . HEX).
  `+N' suffixes indicate a color is lighter.
  `-N' suffixes indicate a color is darker.")

(defmacro evernite-with-color-variables (&rest body)
  (declare (indent 0))
  `(let ((class '((class color) (minicolors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   evernite-default-colors-alist))
     ,@body))

;;; Theme Faces
(evernite-with-color-variables
  (custom-theme-set-faces
   'evernite
   ;; built-in
   `(button ((t (:foreground ,nite-color-blue :underline nil :weight normal))))
   `(comint-highlight-input ((t (:foreground nil :background nil))))
   `(comint-highlight-prompt ((t (:foreground nil :background nil))))
   `(compilation-column-number ((t (:foreground nil :background nil))))
   `(compilation-error ((t (:foreground nil :background nil))))
   `(compilation-info ((t (:foreground nil :background nil))))
   `(compilation-line-number ((t (:foreground nil :background nil))))
   `(compilation-mode-line-exit ((t (:inherit mode-line))))
   `(compilation-mode-line-fail ((t (:inherit mode-line))))
   `(compilation-mode-line-run ((t (:inherit mode-line))))
   `(compilation-warning ((t (:foreground nil :background nil))))
   `(cursor ((t (:foreground nil :background ,nite-color-white))))
   `(default ((t (:font "SauceCodePro Nerd Font Mono" :foreground ,nite-color-fg :background ,nite-color-bg :height 160))))
   `(fixed-pitch ((t (:font "SauceCodePro Nerd Font Mono" :foreground ,nite-color-fg :background ,nite-color-bg :height 160))))
   `(fringe ((t (:foreground ,nite-color-gray :background ,nite-color-bg))))
   `(header-line ((t (:inherit mode-line))))
   `(hi-yellow ((t (:foreground ,nite-color-red :background nil))))
   `(isearch ((t (:foreground nil :background ,nite-color-gray))))
   `(isearch-fail ((t (:foreground nil :background ,nite-color-orange))))
   `(italic ((t (:foreground nil :background nil :underline nil))))
   `(lazy-highlight ((t (:foreground nil :background ,nite-color-gray))))
   `(link ((t (:foreground nil :background nil :underline nil))))
   `(link-visited ((t (:foreground nil :background nil :underline nil))))
   `(linum ((t (:foreground ,nite-color-gray :background ,nite-color-white :weight light))))
   `(line-number ((t (:inherit fixed-pitch :foreground ,nite-color-gray :background nil :weight light))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,nite-color-gray :background nil :weight normal))))
   `(horizontal-border ((t (:foreground ,nite-color-gray :background nil))))
   `(highlight ((t (:foreground ,nite-color-fg :background ,nite-color-bg-light))))
   `(match ((t (:foreground nil :background ,nite-color-gray))))
   `(minibuffer-prompt ((t (:foreground ,nite-color-violet :background nil))))
   `(mode-line ((t (:foreground ,nite-color-fg :background ,nite-color-bg :box nil))))
   `(mode-line-buffer-id ((t (:weight normal))))
   `(mode-line-inactive ((t (:inherit mode-line :box nil))))
   `(region ((t (:foreground ,nite-color-bg :background ,nite-color-fg))))
   `(secondary-selection ((t (:foreground nil :background ,nite-color-gray))))
   `(trailing-whitespace ((t (:foreground nil :background ,nite-color-red))))
   `(underline ((t (:foreground nil :background nil :underline nil))))
   `(variable-pitch ((t (:font "Helvetica Neue" :foreground ,nite-color-white :background ,nite-color-bg :height 160 :weight normal))))
   `(vertical-border ((t (:foreground ,nite-color-gray :background nil))))

   ;; font-lock-mode 
   `(font-lock-builtin-face ((t :foreground ,nite-color-blue :background nil)))
   `(font-lock-comment-delimiter-face ((t :foreground ,nite-color-gray :background nil :slant italic)))
   `(font-lock-comment-face ((t :foreground ,nite-color-gray :background nil :slant italic)))
   `(font-lock-constant-face ((t :foreground ,nite-color-orange :background nil)))
   `(font-lock-doc-face ((t :foreground ,nite-color-green :background nil)))
   `(font-lock-function-name-face ((t :foreground ,nite-color-violet :background nil)))
   `(font-lock-keyword-face ((t :foreground ,nite-color-pink :background nil)))
   `(font-lock-negation-char-face ((t :foreground nil :background nil)))
   `(font-lock-preprocessor-face ((t :foreground nil :background nil)))
   `(font-lock-regexp-grouping-backslash ((t :foreground nil :background nil)))
   `(font-lock-regexp-grouping-construct ((t :foreground nil :background nil)))
   `(font-lock-string-face ((t :foreground ,nite-color-green :background nil)))
   `(font-lock-type-face ((t :foreground ,nite-color-blue :background nil)))
   `(font-lock-variable-name-face ((t :foreground nil :background nil)))
   `(font-lock-warning-face ((t :foreground nil :background ,nite-color-orange)))

   ;; org-mode
   `(org-agenda-calendar-event ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-calendar-sexp ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-clocking ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-column-dateline ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-current-time ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-date ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-date-today ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-date-weekend ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-diary ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-dimmed-todo-face ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-done ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-filter-category ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-filter-regexp ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-filter-tags ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-restriction-lock ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-agenda-structure ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-archived ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-block ((t (:inherit fixed-pitch :background ,nite-color-bg-dark :extend t))))
   `(org-block-background ((t (:foreground nil :background ,nite-color-bg-dark :weight normal :extend t))))
   `(org-block-begin-line ((t (:inherit fixed-pitch :foreground ,nite-color-gray :background ,nite-color-bg-dark :weight light :extend t))))
   `(org-block-end-line ((t (:inherit fixed-pitch :foreground ,nite-color-gray :background ,nite-color-bg-dark :weight light :extend t))))
   `(org-checkbox ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-checkbox-statistics-done ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-checkbox-statistics-todo ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-clock-overlay ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-code ((t (:inherit fixed-pitch))))
   `(org-column ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-column-title ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-date ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-date-selected ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-default ((t (:inherit default))))
   `(org-document-info ((t (:inherit default))))
   `(org-document-info-keyword ((t (:inherit fixed-pitch))))
   `(org-document-title ((t (:inherit default))))
   `(org-done ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-drawer ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-ellipsis ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-footnote ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-formula ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-headline-done ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-hide ((t (:foreground ,nite-color-bg :background nil :weight normal))))
   `(org-indent ((t (:inherit '(org-hide fixed-pitch)))))
   `(org-latex-and-related ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-level-1 ((t (:inhert variable-pitch :height 1.5))))
   `(org-level-2 ((t (:inhert variable-pitch :height 1.3))))
   `(org-level-3 ((t (:inhert variable-pitch :height 1.2))))
   `(org-level-4 ((t (:inhert variable-pitch :height 1.1))))
   `(org-level-5 ((t (:inhert variable-pitch :height 1.1))))
   `(org-level-6 ((t (:inhert variable-pitch :height 1.1))))
   `(org-level-7 ((t (:inhert variable-pitch :height 1.1))))
   `(org-level-8 ((t (:inhert variable-pitch :height 1.1))))
   `(org-link ((t (:foreground ,nite-color-green :background nil :weight normal :underline t))))
   `(org-list-dt ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-macro ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-meta-line ((t (:inherit fixed-pitch))))
   `(org-mode-line-clock ((t (:inherit modeline))))
   `(org-mode-line-clock-overrun ((t (:inherit modeline))))
   `(org-priority ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-property-value ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-quote ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-scheduled ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-scheduled-previously ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-scheduled-today ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-sexp-date ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-special-keyword ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-table ((t (:inherit fixed-pitch :weight normal))))
   `(org-tag ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-tag-group ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-target ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-time-grid ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-todo ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-upcoming-deadline ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-verbatim ((t (:inherit fixed-pitch :foreground ,nite-color-green :background nil))))
   `(org-verse ((t (:foreground ,nite-color-black :background nil :weight normal))))
   `(org-warning ((t (:foreground ,nite-color-orange :background nil :weight normal))))

   ;; plugins

   ;; company-mode
   `(company-tooltip ((t (:foreground ,nite-color-fg :background ,nite-color-bg-dark))))
   `(company-tooltip-annotation ((t (:foreground ,nite-color-orange :background ,nite-color-bg-dark))))
   `(company-tooltip-annotation-selection ((t (:foreground ,nite-color-orange :background ,nite-color-bg-light))))
   `(company-tooltip-selection ((t (:foreground ,nite-color-fg :background ,nite-color-bg-light))))
   `(company-tooltip-mouse ((t (:background ,nite-color-bg-light))))
   `(company-tooltip-common ((t (:foreground ,nite-color-green-dark))))
   `(company-tooltip-common-selection ((t (:foreground ,nite-color-green-dark))))
   `(company-scrollbar-fg ((t (:background ,nite-color-bg-light))))
   `(company-scrollbar-bg ((t (:background ,nite-color-bg-dark))))
   `(company-preview ((t (:background ,nite-color-green-dark))))
   `(company-preview-common ((t (:foreground ,nite-color-green-dark :background ,nite-color-bg-light))))

   ;; ivy
   `(ivy-confirm-face ((t (:foreground ,nite-color-green :background ,nite-color-bg))))
   `(ivy-current-match ((t (:foreground ,nite-color-yellow :weight bold :underline t))))
   `(ivy-cursor ((t (:foreground ,nite-color-bg :background ,nite-color-fg))))
   `(ivy-match-required-face ((t (:foreground ,nite-color-red :background ,nite-color-bg))))
   `(ivy-minibuffer-match-face-1 ((t (:background ,nite-color-bg-dark))))
   `(ivy-minibuffer-match-face-2 ((t (:foreground ,nite-color-green-lighter))))
   `(ivy-minibuffer-match-face-3 ((t (:background ,nite-color-green))))
   `(ivy-minibuffer-match-face-4 ((t (:background ,nite-color-green-dark))))
   `(ivy-remote ((t (:foreground ,nite-color-blue :background ,nite-color-bg))))
   `(ivy-subdir ((t (:foreground ,nite-color-yellow :background ,nite-color-bg))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,nite-color-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,nite-color-green-dark))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,nite-color-yellow))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,nite-color-cyan))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,nite-color-green))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,nite-color-blue))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,nite-color-yellow))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,nite-color-green))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,nite-color-blue))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,nite-color-orange))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,nite-color-green))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,nite-color-blue))))
))

   

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide 'evernite-theme)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; evernight-theme.el ends here
