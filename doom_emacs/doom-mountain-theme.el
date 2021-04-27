;;; doom-mountain-theme.el
(require 'doom-themes)

;;
(defgroup doom-mountain-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(def-doom-theme doom-mountain
  "An emacs port of Mountain theme"

  ;; name        default   256       16
  ((bg         '("#0f0f0f" "#0f0f0f" nil))
   (bg-alt     '("#262626" "#262626" nil))
   (bg-alt2    '("#4c4c4c" "#4c4c4c" nil)) ; bg2 (for region, selection etc.)

   (base0      '("#0f0f0f" "#0f0f0f" "black"      )) ; (self-defined)
   (base1      '("#191919" "#191919" "brightblack")) ; bg0_h
   (base2      '("#262626" "#262626" "brightblack")) ; bg0
   (base3      '("#393939" "#393939" "brightblack")) ; bg1
   (base4      '("#4c4c4c" "#4c4c4c" "brightblack")) ; bg3
   (base5      '("#767676" "#767676" "brightblack")) ; bg4
   (base6      '("#a0a0a0" "#a0a0a0" "brightblack")) ; gray
   (base7      '("#bfbfbf" "#bfbfbf" "brightblack")) ; fg2
   (base8      '("#cacaca" "#cacaca" "brightwhite")) ; fg0
   (fg         '("#f0f0f0" "#f0f0f0" "brightwhite")) ; fg/fg1
   (fg-alt     '("#e7e7e7" "#e7e7e7" "brightwhite")) ; fg2

   (grey       '("#4c4c4c" nil "brightblack"))
   (red        '("#ac8a8c" nil "red"))
   (salmon     '("#c49ea0" nil "red"))
   (magenta    '("#ac8aac" nil "magenta"))
   (violet     '("#c49ec4" nil "brightmagenta"))
   (orange     '("#c6a679" nil "orange"))
   (yellow     '("#aca98a" nil "yellow"))
   (green      '("#9ec49f" nil "green"))
   (dark-green '("#8aac8b" nil "green"))
   (dark-blue  '("#8f8aac" nil "brightblue"))
   (blue       '("#a39ec4" nil "brightblue"))
   (dark-cyan  '("#8aabac" nil "brightcyan"))
   (cyan       '("#9ec3c4" nil "brightcyan"))
   (teal       '("#9ec3c4" nil "brightcyan"))

   ;; face categories -- required for all themes
   (highlight      red)
   (vertical-bar   grey)
   (selection      bg-alt2)
   (builtin        salmon)
   (comments       grey)
   (doc-comments   (doom-lighten grey 0.25))
   (constants      red)
   (functions      dark-blue)
   (keywords       magenta)
   (methods        blue)
   (operators      fg)
   (type           yellow)
   (strings        dark-green)
   (variables      fg)
   (numbers        orange)
   (region         bg-alt2)
   (error          red)
   (warning        yellow)
   (success        dark-green)
   (vc-modified    orange)
   (vc-added       dark-green)
   (vc-deleted     red)

   ;; custom categories
   (level1 red)
   (level2 dark-blue)
   (level3 dark-green)
   (level4 yellow)
   (level5 magenta)
   (level6 dark-cyan)
   (level7 salmon)
   (level8 green)
   (level9 blue)

   (hidden     base1)
   (-modeline-bright nil)
   (-modeline-pad nil)

   (modeline-fg     nil)
   (modeline-fg-alt grey)

   (modeline-bg (doom-darken bg 0.15))
   (modeline-bg-l (doom-darken bg 0.15))
   (modeline-bg-inactive (doom-darken bg 0.15))
   (modeline-bg-inactive-l `(,(doom-darken (car bg) 0.15) ,@(cdr base1))))


  ;; --- extra faces ------------------------
  ((elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")

   ((line-number &override) :foreground grey)
   ((line-number-current-line &override) :foreground fg)

   (font-lock-comment-face :foreground comments)
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)
   (solaire-hl-line-face :background base2)
   (solaire-default-face :background bg)
   (default :background bg)
   (doom-modeline-bar :background bg)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))

   (doom-modeline-project-dir :bold t :foreground dark-blue)
   (doom-modeline-buffer-path :inherit 'bold :foreground magenta)
   (doom-modeline-buffer-file :inherit 'bold :foreground fg)
   (doom-modeline-buffer-modified :inherit 'bold :foreground orange)
   ;; Misc
   (doom-modeline-error :background bg)
   (doom-modeline-buffer-major-mode :foreground yellow :bold t)
   (doom-modeline-panel :background bg :foreground fg)

   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground magenta)
   (css-property             :foreground magenta)
   (css-selector             :foreground dark-green)

   ;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (doom-darken 'bg 0.075))

   ;; org-mode
   ((outline-1 &override) :foreground level1)
   (outline-2 :inherit 'outline-1 :foreground level2)
   (outline-3 :inherit 'outline-1 :foreground level3)
   (outline-4 :inherit 'outline-1 :foreground level4)
   (outline-5 :inherit 'outline-1 :foreground level5)
   (outline-6 :inherit 'outline-1 :foreground level6)
   (outline-7 :inherit 'outline-1 :foreground level7)

   (org-todo :foreground yellow :bold 'inherit :background (doom-darken base1 0.02))
   (org-done :foreground dark-green :strike-through nil :background base2 :bold t)
   (org-headline-done :foreground base4 :strike-through nil)
   ((org-tag &override) :foreground orange)
   (org-agenda-date :foreground dark-cyan)
   (org-agenda-dimmed-todo-face :foreground comments)
   (org-agenda-done :foreground base4)
   (org-agenda-structure :foreground red)
   ((org-block &override) :background base1 :foreground dark-blue)
   ((org-block-begin-line &override) :background base1 :foreground comments)
   (org-code :foreground yellow)
   (org-column :background base1)
   (org-column-title :background base1 :bold t :underline t)
   (org-date :foreground dark-cyan)
   (org-document-info :foreground dark-blue)
   (org-document-info-keyword :foreground comments)
   (org-ellipsis :foreground comments)
   (org-footnote :foreground dark-blue)
   (org-headline-base :foreground comments :strike-through t :bold nil)
   (org-link :foreground orange :underline t :weight 'bold)
   (org-priority :foreground dark-cyan)
   (org-scheduled :foreground dark-green)
   (org-scheduled-previously :foreground yellow)
   (org-scheduled-today :foreground orange)
   (org-sexp-date :foreground base4)
   (org-special-keyword :foreground yellow)
   (org-table :foreground violet)
   (org-upcoming-deadline :foreground yellow)
   (org-warning :foreground magenta)

   ;; tooltip and company
   (tooltip              :background bg-alt :foreground fg)
   (company-tooltip-selection     :background base3)

   ;; rjsx-mode
   (rjsx-tag :foreground magenta)
   (rjsx-attr :foreground dark-green :slant 'italic :weight 'medium)

   ;; js2-mode
   (js2-external-variable :foreground violet)
   (js2-function-param :foreground dark-cyan)
   (js2-jsdoc-html-tag-delimiter :foreground yellow)
   (js2-jsdoc-html-tag-name :foreground dark-blue)
   (js2-jsdoc-value :foreground yellow)
   (js2-private-function-call :foreground dark-cyan)
   (js2-private-member :foreground base7)

   ;; web-mode
   (web-mode-builtin-face :foreground orange)
   (web-mode-css-selector-face :foreground dark-green)
   (web-mode-html-attr-name-face :foreground dark-green)
   (web-mode-html-tag-bracket-face :inherit 'default)
   (web-mode-html-tag-face :foreground magenta :weight 'bold)
   (web-mode-preprocessor-face :foreground orange)

   ;; helm
   (helm-bookmark-w3m :foreground violet)
   (helm-buffer-not-saved :foreground violet)
   (helm-buffer-process :foreground orange)
   (helm-buffer-saved-out :foreground fg)
   (helm-buffer-size :foreground fg)
   (helm-candidate-number :foreground bg :background fg)
   (helm-ff-directory :foreground dark-green :weight 'bold)
   (helm-ff-executable :foreground dark-blue :inherit 'italic)
   (helm-ff-invalid-symlink :foreground magenta :weight 'bold)
   (helm-ff-prefix :foreground bg :background magenta)
   (helm-ff-symlink :foreground magenta :weight 'bold)
   (helm-grep-finish :foreground base2)
   (helm-grep-running :foreground dark-green)
   (helm-header :foreground base2 :underline nil :box nil)
   (helm-moccur-buffer :foreground green)
   (helm-separator :foreground violet)
   (helm-source-go-package-godoc-description :foreground yellow)
   ((helm-source-header &override) :foreground magenta)
   (helm-time-zone-current :foreground orange)
   (helm-time-zone-home :foreground violet)
   (helm-visible-mark :foreground bg :background base3)

   ;; highlight-quoted-mode
   (highlight-quoted-symbol :foreground dark-cyan)
   (highlight-quoted-quote  :foreground magenta)

   ;; vterm
   (vterm-color-default :foreground fg :background bg)
   (vterm-color-black :foreground base2 :background grey)
   (vterm-color-green :foreground dark-green :background green)
   (vterm-color-cyan :foreground dark-cyan :background cyan)
   (vterm-color-red :foreground red :background salmon)
   (vterm-color-yellow :foreground yellow :background "#c4c19e")
   (vterm-color-blue :foreground dark-blue :background blue)
   (vterm-color-magenta :foreground magenta :background violet)
   (vterm-color-white :foreground "#e7e7e7" :background "#f5f5f5")
   )

  ;; --- extra variables ---------------------
  ()
  )

;;; doom-mountain-theme.el ends here
