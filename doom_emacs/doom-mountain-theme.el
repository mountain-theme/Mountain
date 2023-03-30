;;; doom-mountain.el --- Mountain Theme for emacs -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;;; Commentary:
;;
;; Doom One theme but with mountain colors idk
;;
;;; Code:

(require 'doom-themes)

;;
;;; Variables

(defgroup doom-mountain-theme nil
  "Options for the `doom-mountain' theme."
  :group 'doom-themes)

(defcustom doom-mountain-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-mountain-theme
  :type '(choice integer boolean))

;;
;;; Theme definition

(def-doom-theme doom-mountain
  "Mountain Theme for Emacs"

  ;; name        default   256           16
  ((bg         '("#0f0f0f" "#0f0f0f"       "black"  ))
   (fg         '("#f0f0f0" "#f0f0f0"     "brightwhite"  ))

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#262626" "#262626"       "black"        ))
   (fg-alt     '("#e7e7e7" "#e7e7e7"     "white"        ))

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, base0 should be white and base8 should be black.
   (base0      '("#191919" "#191919"       "black"        ))
   (base1      '("#262626" "#262626"     "brightblack"  ))
   (base2      '("#393939" "#393939"     "brightblack"  ))
   (base3      '("#4c4c4c" "#4c4c4c"     "brightblack"  ))
   (base4      '("#767676" "#767676"     "brightblack"  ))
   (base5      '("#a0a0a0" "#a0a0a0"     "brightblack"  ))
   (base6      '("#bfbfbf" "#bfbfbf"     "brightblack"  ))
   (base7      '("#cacaca" "#cacaca"     "brightblack"  ))
   (base8      '("#e7e7e7" "#e7e7e7"     "white"        ))

   (grey       base3)
   (red        '("#ac8a8c" "#ac8a8c" "red"          ))
   (orange     '("#c6a679" "#c6a679" "brightred"    ))
   (green      '("#8aac8b" "#8aac8b" "green"        ))
   (teal       '("#9ec49f" "#9ec49f" "brightgreen"  ))
   (yellow     '("#aca98a" "#aca98a" "yellow"       ))
   (blue       '("#a5b4cb" "#a5b4cb" "brightblue"   ))
   (dark-blue  '("#8a98ac" "#8a98ac" "blue"         ))
   (magenta    '("#ac8aac" "#ac8aac" "brightmagenta"))
   (violet     '("#8f8aac" "#8f8aac" "magenta"      ))
   (cyan       '("#9ec3c4" "#9ec3c4" "brightcyan"   ))
   (dark-cyan  '("#8aacab" "#8aacab" "cyan"         ))
   (scream     '("#c49ea0" "#c49ea0" "brightred"    ))
   (hono       '("#ceb188" "#ceb188" "brightyellow" ))

   ;; face categories
   (highlight      violet)
   (vertical-bar   base0)
   (selection      base1)
   (builtin        blue)
   (comments       grey)
   (doc-comments   (doom-lighten grey 0.14))
   (constants      orange)
   (functions      violet)
   (keywords       magenta)
   (methods        blue)
   (operators      fg)
   (type           yellow)
   (strings        green)
   (variables      fg)
   (numbers        orange)
   (region         selection)
   (error          scream)
   (warning        hono)
   (success        teal)
   (vc-modified    fg-alt)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-bg     base1)
   (modeline-bg-alt base1)
   (modeline-fg     fg)
   (modeline-fg-alt base4)
   (-modeline-pad
    (when doom-mountain-padded-modeline
      (if (integerp doom-mountain-padded-modeline)
	  doom-mountain-padded-modeline
	4))))

  ;; --- faces ------------------------------
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground blue :bold bold)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
    ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground orange)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground magenta)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground teal)

   ;; vterm
   (vterm-color-default :foreground fg :background bg)
   (vterm-color-black :foreground base2 :background grey)
   (vterm-color-green :foreground green :background teal)
   (vterm-color-cyan :foreground dark-cyan :background cyan)
   (vterm-color-red :foreground red :background scream )
   (vterm-color-yellow :foreground yellow :background "#c4c19e")
   (vterm-color-blue :foreground dark-blue :background blue)
   (vterm-color-magenta :foreground magenta :background violet)
   (vterm-color-white :foreground "#e7e7e7" :background "#f5f5f5")

   ;;;; doom-modeline
   (doom-modeline-buffer-path       :foreground violet :bold bold)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path))

  ;; --- variables --------------------------
  ;; ()
  )

;;; doom-mountain.el ends here
