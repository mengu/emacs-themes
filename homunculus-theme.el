;;; homunculus-theme.el --- Homunculus light theme -*- lexical-binding: t; -*-

;; Author: Claude
;; Version: 1.0
;; Package-Requires: ((emacs "29.1"))

;;; Commentary:
;; Homunculus is a light theme ported from the Kate editor theme created by
;; shenlebantongying.

;;; Code:

(deftheme homunculus
  "A light theme based on the Homunculus theme for Kate editor.")

(let ((class '((class color) (min-colors 89)))
      ;; Editor colors
      (bg-main "#f7f3f3")
      (bg-highlight "#daecf7")
      (bg-selection "#bcbcbc")
      (bg-search "#e0af82")
      (bg-bracket-match "#fceae2")
      (fg-main "#303030")
      (fg-dimmed "#a0a0a0")
      (line-number "#a0a0a0")
      (current-line-number "#1e1e1e")
      (separator "#d5d5d5")
      (border "#d5d5d5")

      ;; Text styles
      (keyword "#5317ac")
      (builtin "#644a9b")
      (constant "#aa5500")
      (comment "#505050")
      (string "#2544bb")
      (special-string "#854001")
      (verbatim-string "#2544bb")
      (variable "#0057ae")
      (function "#721045")
      (type "#0057ae")
      (preprocessor "#006e28")
      (control-flow "#005f88")
      (operator "#b455b4")
      (number "#b08000")
      (char "#924c9d")
      (special-char "#3daee9")
      (lisp-bracket "#005f88")
      (warning-fg "#bf0303")
      (warning-bg "#f7e6e6")
      (error-fg "#bf0303")
      (success-fg "#006e28")
      (doc "#2a486a")
      (annotation "#ca60ca")
      (import "#813e00")

      ;; Powerline colors
      (powerline-active1 "#c6e0f0")
      (powerline-active2 "#e0e9ef")
      (powerline-inactive1 "#e5e5e5")
      (powerline-inactive2 "#efefef"))

  (custom-theme-set-faces
   'homunculus

   ;; Basic faces
   `(default ((,class (:foreground ,fg-main :background ,bg-main))))
   `(bold ((,class (:weight bold))))
   `(italic ((,class (:slant italic))))
   `(bold-italic ((,class (:weight bold :slant italic))))
   `(region ((,class (:background ,bg-selection))))
   `(cursor ((,class (:background ,fg-main))))
   `(fringe ((,class (:background ,bg-main))))
   `(hl-line ((,class (:background ,bg-highlight))))
   `(line-number ((,class (:foreground ,line-number))))
   `(line-number-current-line ((,class (:foreground ,current-line-number))))
   `(vertical-border ((,class (:foreground ,border))))
   `(window-divider ((,class (:foreground ,border))))
   `(highlight ((,class (:background ,bg-search))))
   `(shadow ((,class (:foreground ,fg-dimmed))))
   `(success ((,class (:foreground ,success-fg))))
   `(warning ((,class (:foreground ,constant))))
   `(error ((,class (:foreground ,error-fg))))
   `(match ((,class (:background ,bg-selection))))
   `(minibuffer-prompt ((,class (:foreground ,keyword :bold t))))

   ;; Font-lock faces
   `(font-lock-builtin-face ((,class (:foreground ,builtin))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,constant))))
   `(font-lock-doc-face ((,class (:foreground ,doc))))
   `(font-lock-function-name-face ((,class (:foreground ,function))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword))))
   `(font-lock-negation-char-face ((,class (:foreground ,operator))))
   `(font-lock-preprocessor-face ((,class (:foreground ,preprocessor))))
   `(font-lock-string-face ((,class (:foreground ,string))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-variable-name-face ((,class (:foreground ,variable))))
   `(font-lock-warning-face ((,class (:foreground ,warning-fg))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,special-char))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,special-char))))

   ;; Search
   `(isearch ((,class (:background ,bg-search :foreground ,fg-main))))
   `(isearch-fail ((,class (:background ,warning-bg :foreground ,warning-fg))))
   `(lazy-highlight ((,class (:background ,bg-search :foreground ,fg-main))))

   ;; Parentheses
   `(show-paren-match ((,class (:background ,bg-bracket-match))))
   `(show-paren-mismatch ((,class (:background ,warning-bg :foreground ,warning-fg))))

   ;; Mode line
   `(mode-line ((,class (:background ,bg-highlight :foreground ,fg-main :box (:line-width 1 :color ,border)))))
   `(mode-line-inactive ((,class (:background ,bg-main :foreground ,fg-dimmed :box (:line-width 1 :color ,border)))))
   `(mode-line-buffer-id ((,class (:foreground ,keyword :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,fg-main :weight bold))))
   `(mode-line-highlight ((,class (:foreground ,keyword :box nil))))

   ;; Powerline support
   `(powerline-active0 ((,class (:background ,bg-highlight :foreground ,fg-main))))
   `(powerline-active1 ((,class (:background ,powerline-active1 :foreground ,fg-main))))
   `(powerline-active2 ((,class (:background ,powerline-active2 :foreground ,fg-main))))
   `(powerline-inactive0 ((,class (:background ,bg-main :foreground ,fg-dimmed))))
   `(powerline-inactive1 ((,class (:background ,powerline-inactive1 :foreground ,fg-dimmed))))
   `(powerline-inactive2 ((,class (:background ,powerline-inactive2 :foreground ,fg-dimmed))))

   ;; Powerline separators
   `(powerline-active1-trunc ((,class (:background ,powerline-active1 :foreground ,bg-main))))
   `(powerline-active2-trunc ((,class (:background ,powerline-active2 :foreground ,fg-dimmed))))
   `(powerline-inactive1-trunc ((,class (:background ,powerline-inactive1 :foreground ,fg-dimmed))))
   `(powerline-inactive2-trunc ((,class (:background ,powerline-inactive2 :foreground ,fg-dimmed))))

   ;; Links
   `(link ((,class (:foreground ,variable :underline t))))
   `(link-visited ((,class (:foreground ,type :underline t))))

   ;; Company (completion)
   `(company-tooltip ((,class (:background ,bg-highlight :foreground ,fg-main))))
   `(company-tooltip-selection ((,class (:background ,bg-selection))))
   `(company-tooltip-common ((,class (:foreground ,keyword))))
   `(company-tooltip-common-selection ((,class (:foreground ,keyword))))
   `(company-tooltip-annotation ((,class (:foreground ,type))))
   `(company-scrollbar-bg ((,class (:background ,bg-highlight))))
   `(company-scrollbar-fg ((,class (:background ,fg-main))))
   `(company-preview ((,class (:background ,bg-highlight))))
   `(company-preview-common ((,class (:foreground ,string :background ,bg-highlight))))

   ;; Completions
   `(completions-common-part ((,class (:foreground ,keyword))))
   `(completions-annotations ((,class (:foreground ,fg-dimmed))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,builtin))))
   `(dired-ignored ((,class (:foreground ,comment))))
   `(dired-flagged ((,class (:foreground ,error-fg))))
   `(dired-header ((,class (:foreground ,type :bold t))))
   `(dired-marked ((,class (:foreground ,warning-fg :bold t))))

   ;; Org-mode
   `(org-level-1 ((,class (:foreground ,keyword :weight bold :height 1.1))))
   `(org-level-2 ((,class (:foreground ,builtin :weight bold))))
   `(org-level-3 ((,class (:foreground ,function :weight bold))))
   `(org-level-4 ((,class (:foreground ,variable))))
   `(org-link ((,class (:foreground ,string :underline t))))
   `(org-todo ((,class (:foreground ,warning-fg :weight bold))))
   `(org-done ((,class (:foreground ,success-fg :weight bold))))
   `(org-block ((,class (:foreground ,fg-main :background ,(if (>= emacs-major-version 27) (face-attribute 'default :background) "#f0f0f0")))))
   `(org-date ((,class (:foreground ,variable :underline t))))
   `(org-table ((,class (:foreground ,type))))
   `(org-code ((,class (:foreground ,function))))
   `(org-verbatim ((,class (:foreground ,constant))))
   `(org-quote ((,class (:foreground ,variable :slant italic))))
   `(org-document-title ((,class (:foreground ,keyword :bold t :height 1.2))))
   `(org-document-info ((,class (:foreground ,type))))
   `(org-document-info-keyword ((,class (:foreground ,comment))))

   ;; Markdown
   `(markdown-header-face ((,class (:foreground ,keyword :weight bold))))
   `(markdown-inline-code-face ((,class (:foreground ,type))))
   `(markdown-pre-face ((,class (:foreground ,constant))))
   `(markdown-list-face ((,class (:foreground ,fg-main))))
   `(markdown-link-face ((,class (:foreground ,variable))))
   `(markdown-url-face ((,class (:foreground ,string :underline t))))
   `(markdown-header-delimiter-face ((,class (:foreground ,comment))))
   `(markdown-markup-face ((,class (:foreground ,comment))))

   ;; Magit
   `(magit-section-heading ((,class (:foreground ,keyword :weight bold))))
   `(magit-hash ((,class (:foreground ,constant))))
   `(magit-branch-local ((,class (:foreground ,function))))
   `(magit-branch-remote ((,class (:foreground ,preprocessor))))
   `(magit-diff-added ((,class (:foreground ,success-fg))))
   `(magit-diff-removed ((,class (:foreground ,error-fg))))
   `(magit-diff-context ((,class (:foreground ,fg-dimmed))))
   `(magit-diff-hunk-heading ((,class (:foreground ,fg-main :background ,bg-highlight))))
   `(magit-diff-hunk-heading-highlight ((,class (:foreground ,fg-main :background ,powerline-active1))))
   `(magit-section-highlight ((,class (:background ,bg-highlight))))

   ;; Web-mode
   `(web-mode-html-tag-face ((,class (:foreground ,keyword))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,variable))))
   `(web-mode-css-property-name-face ((,class (:foreground ,builtin))))

   ;; Terminal colors (ansi-term)
   `(term-color-black ((,class (:foreground ,fg-main :background ,fg-main))))
   `(term-color-red ((,class (:foreground ,error-fg :background ,error-fg))))
   `(term-color-green ((,class (:foreground ,success-fg :background ,success-fg))))
   `(term-color-yellow ((,class (:foreground ,constant :background ,constant))))
   `(term-color-blue ((,class (:foreground ,variable :background ,variable))))
   `(term-color-magenta ((,class (:foreground ,type :background ,type))))
   `(term-color-cyan ((,class (:foreground ,string :background ,string))))
   `(term-color-white ((,class (:foreground ,bg-main :background ,bg-main))))

   ;; EShell
   `(eshell-prompt ((,class (:foreground ,keyword :bold t))))
   `(eshell-ls-directory ((,class (:foreground ,variable :bold t))))
   `(eshell-ls-executable ((,class (:foreground ,success-fg :bold t))))
   `(eshell-ls-symlink ((,class (:foreground ,string :bold t))))

   ;; Lisp-specific faces
   `(lisp-parens ((,class (:foreground ,lisp-bracket)))))

  ;; Extra configurations
  (custom-theme-set-variables
   'homunculus
   `(ansi-color-names-vector
     [,fg-main ,error-fg ,success-fg ,constant ,variable ,type ,string ,bg-main])))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'homunculus)
(provide 'homunculus-theme)

;;; homunculus-theme.el ends here
