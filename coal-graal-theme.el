;;; coal-graal-theme.el --- A dark theme inspired by Coal Graal -*- lexical-binding: t; -*-

;; Author: Claude
;; Version: 1.0.0
;; Package-Requires: ((emacs "29.1"))

;;; Commentary:
;; A port of the Coal Graal theme from Sublime Text to Emacs

;;; Code:

(deftheme coal-graal
  "A dark theme based on Coal Graal from Sublime Text.")

(let ((class '((class color) (min-colors 89)))
      ;; Color Palette
      (fg "#D8D9D1")
      (bg "#222222")
      (bg-hl "#282828")
      (selection "#6405D0")
      (comment "#B4DF61")
      (string "#ACC6D7")
      (constant "#EDB272")
      (number "#E4D962")
      (keyword "#A3AAD8")
      (function "#DFCC94")
      (type "#B998DF")
      (variable "#7AC0ED")
      (parameter "#85C6D9")
      (warning-bg "#CC1B27")
      (warning-fg "#DFDFD5")
      (success "#A5DF93")
      (error "#DFB3AC")
      (border "#444444")
      (powerline-active1 "#3E3E3E")
      (powerline-active2 "#343434")
      (powerline-inactive1 "#333333")
      (powerline-inactive2 "#292929"))

  (custom-theme-set-faces
   'coal-graal

   ;; Basic faces
   `(default ((,class (:foreground ,fg :background ,bg))))
   `(cursor ((,class (:background ,fg))))
   `(region ((,class (:background ,selection))))
   `(highlight ((,class (:background ,bg-hl))))
   `(hl-line ((,class (:background ,bg-hl))))
   `(vertical-border ((,class (:foreground ,border))))
   `(window-divider ((,class (:foreground ,border))))
   `(minibuffer-prompt ((,class (:foreground ,keyword :bold t))))
   `(fringe ((,class (:background ,bg))))
   `(shadow ((,class (:foreground "#949494"))))
   `(success ((,class (:foreground ,success))))
   `(warning ((,class (:foreground ,constant))))
   `(error ((,class (:foreground ,error))))
   `(match ((,class (:background ,selection))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,constant))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,constant))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,function))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword))))
   `(font-lock-string-face ((,class (:foreground ,string))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-variable-name-face ((,class (:foreground ,variable))))
   `(font-lock-warning-face ((,class (:foreground ,warning-fg :background ,warning-bg))))
   `(font-lock-negation-char-face ((,class (:foreground ,constant))))
   `(font-lock-preprocessor-face ((,class (:foreground ,keyword))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,constant))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,constant))))

   ;; Mode line
   `(mode-line ((,class (:foreground ,fg :background ,bg-hl :box (:line-width 1 :color ,border)))))
   `(mode-line-inactive ((,class (:foreground "#949494" :background ,bg :box (:line-width 1 :color ,border)))))
   `(mode-line-buffer-id ((,class (:foreground ,keyword :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,fg :weight bold))))
   `(mode-line-highlight ((,class (:foreground ,keyword :box nil))))

   ;; Powerline support
   `(powerline-active0 ((,class (:background ,bg-hl :foreground ,fg))))
   `(powerline-active1 ((,class (:background ,powerline-active1 :foreground ,fg))))
   `(powerline-active2 ((,class (:background ,powerline-active2 :foreground ,fg))))
   `(powerline-inactive0 ((,class (:background ,bg :foreground "#949494"))))
   `(powerline-inactive1 ((,class (:background ,powerline-inactive1 :foreground "#949494"))))
   `(powerline-inactive2 ((,class (:background ,powerline-inactive2 :foreground "#949494"))))

   ;; Powerline separators
   `(powerline-active1-trunc ((,class (:background ,powerline-active1 :foreground ,bg))))
   `(powerline-active2-trunc ((,class (:background ,powerline-active2 :foreground "#949494"))))
   `(powerline-inactive1-trunc ((,class (:background ,powerline-inactive1 :foreground "#949494"))))
   `(powerline-inactive2-trunc ((,class (:background ,powerline-inactive2 :foreground "#949494"))))

   ;; Line numbers
   `(line-number ((,class (:foreground "#949494" :background ,bg))))
   `(line-number-current-line ((,class (:foreground ,fg :background ,bg-hl))))

   ;; Search
   `(isearch ((,class (:foreground ,bg :background ,string))))
   `(isearch-fail ((,class (:foreground ,warning-fg :background ,warning-bg))))
   `(lazy-highlight ((,class (:foreground ,bg :background ,comment))))

   ;; Parentheses
   `(show-paren-match ((,class (:foreground ,bg :background ,keyword))))
   `(show-paren-mismatch ((,class (:foreground ,warning-fg :background ,warning-bg))))

   ;; Links
   `(link ((,class (:foreground ,variable :underline t))))
   `(link-visited ((,class (:foreground ,type :underline t))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,keyword))))
   `(dired-marked ((,class (:foreground ,warning-fg :bold t))))
   `(dired-flagged ((,class (:foreground ,error))))
   `(dired-header ((,class (:foreground ,type :bold t))))
   `(dired-ignored ((,class (:foreground "#949494"))))

   ;; Company (completion)
   `(company-tooltip ((,class (:foreground ,fg :background ,bg-hl))))
   `(company-tooltip-selection ((,class (:foreground ,fg :background ,selection))))
   `(company-scrollbar-bg ((,class (:background ,bg-hl))))
   `(company-scrollbar-fg ((,class (:background ,fg))))
   `(company-tooltip-common ((,class (:foreground ,keyword))))
   `(company-tooltip-common-selection ((,class (:foreground ,keyword))))
   `(company-tooltip-annotation ((,class (:foreground ,type))))
   `(company-preview ((,class (:background ,bg-hl))))
   `(company-preview-common ((,class (:foreground ,string :background ,bg-hl))))

   ;; Completions
   `(completions-common-part ((,class (:foreground ,keyword))))
   `(completions-annotations ((,class (:foreground "#949494"))))

   ;; Org mode
   `(org-level-1 ((,class (:foreground ,keyword :bold t :height 1.1))))
   `(org-level-2 ((,class (:foreground ,type :bold t))))
   `(org-level-3 ((,class (:foreground ,constant))))
   `(org-level-4 ((,class (:foreground ,string))))
   `(org-code ((,class (:foreground ,function))))
   `(org-verbatim ((,class (:foreground ,constant))))
   `(org-quote ((,class (:foreground ,variable :slant italic))))
   `(org-todo ((,class (:foreground ,error :bold t))))
   `(org-done ((,class (:foreground ,success :bold t))))
   `(org-block ((,class (:foreground ,fg :background ,bg-hl))))
   `(org-date ((,class (:foreground ,variable :underline t))))
   `(org-table ((,class (:foreground ,type))))
   `(org-document-title ((,class (:foreground ,keyword :bold t :height 1.2))))
   `(org-document-info ((,class (:foreground ,type))))
   `(org-document-info-keyword ((,class (:foreground ,comment))))
   `(org-link ((,class (:foreground ,variable :underline t))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,keyword :bold t))))
   `(magit-branch-local ((,class (:foreground ,function))))
   `(magit-branch-remote ((,class (:foreground ,string))))
   `(magit-hash ((,class (:foreground ,constant))))
   `(magit-diff-added ((,class (:foreground ,success))))
   `(magit-diff-removed ((,class (:foreground ,error))))
   `(magit-diff-context ((,class (:foreground "#949494"))))
   `(magit-diff-hunk-heading ((,class (:foreground ,fg :background ,bg-hl))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,fg :background ,powerline-active1))))
   `(magit-section-highlight ((,class (:background ,bg-hl))))

   ;; Markdown
   `(markdown-header-face ((,class (:foreground ,keyword :weight bold))))
   `(markdown-inline-code-face ((,class (:foreground ,constant))))
   `(markdown-pre-face ((,class (:foreground ,constant))))
   `(markdown-list-face ((,class (:foreground ,fg))))
   `(markdown-link-face ((,class (:foreground ,variable))))
   `(markdown-url-face ((,class (:foreground ,string :underline t))))
   `(markdown-header-delimiter-face ((,class (:foreground ,comment))))
   `(markdown-markup-face ((,class (:foreground ,comment))))

   ;; Web-mode
   `(web-mode-html-tag-face ((,class (:foreground ,keyword))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,variable))))
   `(web-mode-css-property-name-face ((,class (:foreground ,constant))))

   ;; Terminal colors (ansi-term)
   `(term-color-black ((,class (:foreground ,bg :background ,bg))))
   `(term-color-red ((,class (:foreground ,error :background ,error))))
   `(term-color-green ((,class (:foreground ,success :background ,success))))
   `(term-color-yellow ((,class (:foreground ,constant :background ,constant))))
   `(term-color-blue ((,class (:foreground ,variable :background ,variable))))
   `(term-color-magenta ((,class (:foreground ,type :background ,type))))
   `(term-color-cyan ((,class (:foreground ,string :background ,string))))
   `(term-color-white ((,class (:foreground ,fg :background ,fg))))

   ;; EShell
   `(eshell-prompt ((,class (:foreground ,keyword :bold t))))
   `(eshell-ls-directory ((,class (:foreground ,variable :bold t))))
   `(eshell-ls-executable ((,class (:foreground ,success :bold t))))
   `(eshell-ls-symlink ((,class (:foreground ,string :bold t)))))

  ;; Extra configurations
  (custom-theme-set-variables
   'coal-graal
   `(ansi-color-names-vector
     [,bg ,error ,success ,constant ,variable ,type ,string ,fg])))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'coal-graal)

;;; coal-graal-theme.el ends here
