;;; sequoia-moonlight-theme.el --- A dark theme inspired by Sequoia Moonlight -*- lexical-binding: t; -*-

;; Author: Claude
;; Version: 1.0.0
;; Package-Requires: ((emacs "30.1"))
;; Keywords: faces, theme, dark
;; URL: https://github.com/mengu/emacs-themes
;; Original theme: https://github.com/Sequoia-Theme/vs-code/tree/main

;;; Commentary:
;; A dark theme with a cool color palette converted from the VSCode Sequoia Moonlight theme.
;; Requires Emacs 30 or newer.

;;; Code:

(deftheme sequoia-moonlight
  "A dark theme with a cool color palette inspired by Sequoia Moonlight.")

(let ((class '((class color) (min-colors 89)))
      ;; Core colors
      (bg-main "#0F1014")
      (bg-alt "#111216")
      (bg-hover "#131317")
      (bg-highlight "#817c9c14")
      (bg-selection "#817c9c26")
      (bg-highlight-med "#817c9c4d")

      (fg-main "#868690")
      (fg-dim "#575861")
      (fg-dimmer "#43444D")

      ;; Accent colors
      (orange "#ffbb88")
      (pink "#f58ee0")
      (purple "#c58fff")
      (blue "#8eb6f5")
      (gray "#9898a6")
      (white "#fdfdfe")

      ;; Special
      (red "#f58ee0")        ;; using pink as red
      (green "#8eb6f5")      ;; using blue as green
      (yellow "#9898a6")     ;; using gray as yellow
      (cyan "#ffbb88")       ;; using orange as cyan
      (magenta "#fdfdfe")    ;; using white as magenta

      (border "#817c9c26")
      (success "#c58fff")
      (warning "#9898a6")
      (error "#f58ee0"))

  (custom-theme-set-faces
   'sequoia-moonlight

   ;; Core UI
   `(default ((,class (:background ,bg-main :foreground ,fg-main))))
   `(cursor ((,class (:background ,purple))))
   `(region ((,class (:background "#3a3a5e" :extend t))))
   `(secondary-selection ((,class (:background "#2a2a4e" :extend t))))
   `(highlight ((,class (:background ,bg-highlight))))
   `(vertical-border ((,class (:foreground ,border))))
   `(window-divider ((,class (:foreground ,border))))
   `(window-divider-first-pixel ((,class (:foreground ,border))))
   `(window-divider-last-pixel ((,class (:foreground ,border))))
   `(fringe ((,class (:background ,bg-main))))
   `(shadow ((,class (:foreground ,fg-dim))))
   `(line-number ((,class (:foreground ,fg-dim))))
   `(line-number-current-line ((,class (:foreground ,fg-main))))

   ;; Syntax
   `(font-lock-comment-face ((,class (:foreground ,fg-dimmer))))
   `(font-lock-doc-face ((,class (:foreground ,fg-dimmer))))
   `(font-lock-keyword-face ((,class (:foreground ,blue))))
   `(font-lock-builtin-face ((,class (:foreground ,purple))))
   `(font-lock-function-name-face ((,class (:foreground ,orange))))
   `(font-lock-variable-name-face ((,class (:foreground ,orange))))
   `(font-lock-type-face ((,class (:foreground ,purple))))
   `(font-lock-constant-face ((,class (:foreground ,blue))))
   `(font-lock-string-face ((,class (:foreground ,gray))))
   `(font-lock-warning-face ((,class (:foreground ,warning))))

   ;; Parenthesis matching
   `(show-paren-match ((,class (:foreground ,fg-dim :background nil :underline t))))
   `(show-paren-mismatch ((,class (:foreground ,error :background nil :underline t))))

   ;; Mode line
   `(mode-line ((,class (:background ,bg-main :foreground ,fg-dim))))
   `(mode-line-inactive ((,class (:background ,bg-main :foreground ,fg-dim))))
   `(mode-line-highlight ((,class (:box (:line-width -1 :color ,border)))))

   ;; Search
   `(isearch ((,class (:background ,bg-highlight-med :foreground ,fg-main))))
   `(isearch-fail ((,class (:background ,error :foreground ,white))))
   `(lazy-highlight ((,class (:background ,bg-highlight :foreground ,fg-main))))

   ;; Minibuffer
   `(minibuffer-prompt ((,class (:foreground ,blue))))

   ;; Links
   `(link ((,class (:foreground ,white :underline t))))
   `(link-visited ((,class (:foreground ,white :underline t :weight normal))))

   ;; Completions
   `(completions-common-part ((,class (:foreground ,orange))))
   `(completions-annotations ((,class (:foreground ,fg-dim))))

   ;; Company
   `(company-tooltip ((,class (:background ,bg-alt :foreground ,fg-dim))))
   `(company-tooltip-common ((,class (:foreground ,orange))))
   `(company-tooltip-selection ((,class (:background ,bg-selection :foreground ,fg-main))))
   `(company-tooltip-annotation ((,class (:foreground ,fg-dim))))
   `(company-scrollbar-fg ((,class (:background ,bg-highlight-med))))
   `(company-scrollbar-bg ((,class (:background ,bg-highlight))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,blue))))
   `(dired-symlink ((,class (:foreground ,purple))))

   ;; Modeline
   `(mode-line ((,class (:background ,bg-main :foreground ,fg-dim))))
   `(mode-line-buffer-id ((,class (:foreground ,fg-main :weight bold))))
   `(mode-line-inactive ((,class (:background ,bg-alt :foreground ,fg-dim))))

   ;; Terminal colors
   `(term-color-black ((,class (:foreground "#131317" :background "#131317"))))
   `(term-color-red ((,class (:foreground ,pink :background ,pink))))
   `(term-color-green ((,class (:foreground ,blue :background ,blue))))
   `(term-color-yellow ((,class (:foreground ,gray :background ,gray))))
   `(term-color-blue ((,class (:foreground ,purple :background ,purple))))
   `(term-color-magenta ((,class (:foreground ,white :background ,white))))
   `(term-color-cyan ((,class (:foreground ,orange :background ,orange))))
   `(term-color-white ((,class (:foreground ,fg-main :background ,fg-main))))

   ;; Magit
   `(magit-section-highlight ((,class (:background ,bg-highlight))))
   `(magit-section-heading ((,class (:foreground ,blue :weight bold))))
   `(magit-section-secondary-heading ((,class (:foreground ,purple :weight bold))))
   `(magit-branch-remote ((,class (:foreground ,success))))
   `(magit-branch-local ((,class (:foreground ,blue))))
   `(magit-branch-current ((,class (:foreground ,blue :box t))))
   `(magit-head ((,class (:foreground ,blue :box t))))
   `(magit-refname ((,class (:foreground ,fg-main))))
   `(magit-tag ((,class (:foreground ,orange))))
   `(magit-hash ((,class (:foreground ,fg-dim))))
   `(magit-log-author ((,class (:foreground ,purple))))
   `(magit-log-date ((,class (:foreground ,fg-dim))))
   `(magit-log-graph ((,class (:foreground ,fg-dimmer))))
   `(magit-process-ok ((,class (:foreground ,success))))
   `(magit-process-ng ((,class (:foreground ,error))))
   `(magit-diff-added ((,class (:foreground ,success :background nil :extend t))))
   `(magit-diff-added-highlight ((,class (:foreground ,success :background ,bg-highlight :extend t))))
   `(magit-diff-removed ((,class (:foreground ,error :background nil :extend t))))
   `(magit-diff-removed-highlight ((,class (:foreground ,error :background ,bg-highlight :extend t))))
   `(magit-diff-context ((,class (:foreground ,fg-dim :extend t))))
   `(magit-diff-context-highlight ((,class (:foreground ,fg-dim :background ,bg-highlight :extend t))))
   `(magit-diff-hunk-heading ((,class (:background ,bg-alt :foreground ,fg-dim :extend t))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,bg-alt :foreground ,fg-main :extend t))))
   `(magit-diff-hunk-heading-selection ((,class (:background ,bg-alt :foreground ,orange :extend t))))
   `(magit-diff-lines-heading ((,class (:background ,orange :foreground ,bg-main :extend t))))
   `(magit-diff-revision-summary ((,class (:foreground ,blue :weight bold))))
   `(magit-diffstat-added ((,class (:foreground ,success))))
   `(magit-diffstat-removed ((,class (:foreground ,error))))

   ;; Org
   `(org-document-title ((,class (:foreground ,orange :weight bold :height 1.2))))
   `(org-document-info ((,class (:foreground ,fg-main))))
   `(org-level-1 ((,class (:foreground ,blue :weight bold :height 1.1))))
   `(org-level-2 ((,class (:foreground ,purple :weight bold))))
   `(org-level-3 ((,class (:foreground ,orange :weight bold))))
   `(org-level-4 ((,class (:foreground ,pink))))
   `(org-level-5 ((,class (:foreground ,white))))
   `(org-level-6 ((,class (:foreground ,gray))))
   `(org-level-7 ((,class (:foreground ,fg-main))))
   `(org-level-8 ((,class (:foreground ,fg-dim))))
   `(org-block ((,class (:background ,bg-alt :extend t))))
   `(org-block-begin-line ((,class (:foreground ,fg-dimmer :extend t))))
   `(org-block-end-line ((,class (:foreground ,fg-dimmer :extend t))))
   `(org-code ((,class (:foreground ,orange))))
   `(org-verbatim ((,class (:foreground ,gray))))
   `(org-quote ((,class (:background ,bg-alt :extend t))))
   `(org-checkbox ((,class (:foreground ,blue))))
   `(org-checkbox-statistics-todo ((,class (:foreground ,blue))))
   `(org-checkbox-statistics-done ((,class (:foreground ,success))))
   `(org-todo ((,class (:foreground ,error :weight bold))))
   `(org-done ((,class (:foreground ,success :weight bold))))
   `(org-table ((,class (:foreground ,purple))))
   `(org-date ((,class (:foreground ,blue))))
   `(org-link ((,class (:foreground ,white :underline t))))

   ;; Which-key
   `(which-key-key-face ((,class (:foreground ,white))))
   `(which-key-group-description-face ((,class (:foreground ,blue))))
   `(which-key-command-description-face ((,class (:foreground ,purple))))

   ;; Tab bar
   `(tab-bar ((,class (:background ,bg-main))))
   `(tab-bar-tab ((,class (:background ,bg-highlight :foreground ,fg-main :box (:line-width 2 :color ,orange)))))
   `(tab-bar-tab-inactive ((,class (:background ,bg-main :foreground ,fg-dim))))

   ;; Eshell
   `(eshell-prompt ((,class (:foreground ,blue :weight bold))))

   ;; Flycheck
   `(flycheck-info ((,class (:underline (:style wave :color ,success)))))
   `(flycheck-warning ((,class (:underline (:style wave :color ,warning)))))
   `(flycheck-error ((,class (:underline (:style wave :color ,error)))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,blue))))
   `(dired-ignored ((,class (:foreground ,fg-dim))))
   `(dired-flagged ((,class (:foreground ,error))))
   `(dired-header ((,class (:foreground ,orange :weight bold))))
   `(dired-mark ((,class (:foreground ,blue :weight bold))))
   `(dired-marked ((,class (:foreground ,orange :weight bold))))
   `(dired-symlink ((,class (:foreground ,purple))))

   ;; Native comp
   `(compilation-info ((,class (:foreground ,success))))
   `(compilation-warning ((,class (:foreground ,warning))))
   `(compilation-error ((,class (:foreground ,error))))

   ;; Tree-sitter
   `(tree-sitter-hl-face:attribute ((,class (:foreground ,white))))
   `(tree-sitter-hl-face:constant.builtin ((,class (:foreground ,orange))))
   `(tree-sitter-hl-face:escape ((,class (:foreground ,orange))))
   `(tree-sitter-hl-face:function ((,class (:foreground ,orange))))
   `(tree-sitter-hl-face:function.call ((,class (:foreground ,orange))))
   `(tree-sitter-hl-face:label ((,class (:foreground ,white))))
   `(tree-sitter-hl-face:method.call ((,class (:foreground ,orange))))
   `(tree-sitter-hl-face:operator ((,class (:foreground ,blue))))
   `(tree-sitter-hl-face:property ((,class (:foreground ,orange))))
   `(tree-sitter-hl-face:property.definition ((,class (:foreground ,orange))))
   `(tree-sitter-hl-face:punctuation ((,class (:foreground ,fg-dim))))
   `(tree-sitter-hl-face:punctuation.bracket ((,class (:foreground ,fg-dim))))
   `(tree-sitter-hl-face:punctuation.delimiter ((,class (:foreground ,fg-dim))))
   `(tree-sitter-hl-face:punctuation.special ((,class (:foreground ,fg-dim))))
   `(tree-sitter-hl-face:string.special ((,class (:foreground ,gray))))
   `(tree-sitter-hl-face:tag ((,class (:foreground ,purple))))
   `(tree-sitter-hl-face:type.parameter ((,class (:foreground ,white))))

   ;; Custom for Emacs 30
   `(completions-highlight ((,class (:background ,bg-highlight))))
   `(help-key-binding ((,class (:background ,bg-alt :foreground ,white))))
   `(button ((,class (:foreground ,orange :weight bold :underline t))))
   `(success ((,class (:foreground ,success))))
   `(warning ((,class (:foreground ,warning))))
   `(error ((,class (:foreground ,error))))
   `(custom-variable-tag ((,class (:foreground ,blue))))
   `(custom-group-tag ((,class (:foreground ,blue :weight bold :height 1.1))))
   `(variable-pitch ((,class (:family "Sans Serif"))))
   `(fixed-pitch ((,class (:family "Monospace"))))

   ;; Margin
   `(line-number ((,class (:foreground ,fg-dim))))
   `(line-number-current-line ((,class (:foreground ,fg-main))))
   `(fill-column-indicator ((,class (:foreground ,fg-dimmer))))

   ;; Vertico/Marginalia/Consult
   `(vertico-current ((,class (:background ,bg-selection))))
   `(marginalia-documentation ((,class (:foreground ,fg-dim))))
   `(consult-file ((,class (:foreground ,blue))))

   ;; Orderless
   `(orderless-match-face-0 ((,class (:foreground ,orange :weight bold))))
   `(orderless-match-face-1 ((,class (:foreground ,purple :weight bold))))
   `(orderless-match-face-2 ((,class (:foreground ,blue :weight bold))))
   `(orderless-match-face-3 ((,class (:foreground ,pink :weight bold))))

   ;; Corfu
   `(corfu-default ((,class (:background ,bg-alt))))
   `(corfu-current ((,class (:background ,bg-selection))))
   `(corfu-bar ((,class (:background ,bg-highlight-med))))
   `(corfu-border ((,class (:background ,border))))
   `(corfu-annotations ((,class (:foreground ,fg-dim))))

   ;; EWW
   `(eww-invalid-certificate ((,class (:foreground ,error))))
   `(eww-valid-certificate ((,class (:foreground ,success))))
   `(eww-form-checkbox ((,class (:background ,bg-alt :foreground ,fg-main))))
   `(eww-form-select ((,class (:background ,bg-alt :foreground ,fg-main))))
   `(eww-form-submit ((,class (:background ,orange :foreground ,bg-main))))
   `(eww-form-text ((,class (:background ,bg-alt :foreground ,fg-main))))

   ;; Eglot
   `(eglot-highlight-symbol-face ((,class (:background ,bg-highlight :underline t))))

   ;; Eldoc
   `(eldoc-highlight-function-argument ((,class (:foreground ,orange :weight bold))))

   ;; Markdown
   `(markdown-header-face-1 ((,class (:foreground ,blue :weight bold :height 1.2))))
   `(markdown-header-face-2 ((,class (:foreground ,purple :weight bold :height 1.1))))
   `(markdown-header-face-3 ((,class (:foreground ,orange :weight bold))))
   `(markdown-header-face-4 ((,class (:foreground ,pink :weight bold))))
   `(markdown-code-face ((,class (:background ,bg-alt))))
   `(markdown-pre-face ((,class (:background ,bg-alt))))
   `(markdown-inline-code-face ((,class (:foreground ,orange))))
   `(markdown-link-face ((,class (:foreground ,white))))

   ;; Other
   `(hl-line ((,class (:background ,bg-highlight))))
   `(tooltip ((,class (:background ,bg-alt :foreground ,fg-dim))))

   ;; Menus
   `(menu ((,class (:background ,bg-alt :foreground ,fg-main))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'sequoia-moonlight)
(provide 'sequoia-moonlight-theme)

;;; sequoia-moonlight-theme.el ends here
