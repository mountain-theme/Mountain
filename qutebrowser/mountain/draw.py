def konda(c, options = {}):
    palette = {
        'background': '#0f0f0f',
        'background-alt': '#0f0f0f',
        'background-attention': '#050505',
        'border': '#0f0f0f',
        'current-line': '#191919',
        'selection': '#191919',
        'foreground': '#f0f0f0',
        'foreground-alt': '#e7e7e7',
        'foreground-attention': '#f0f0f0',
        'comment': '#4c4c4c',
        'cyan': '#8aabac',
        'green': '#8aac8b',
        'orange': '#c6a679',
        'pink': '#c49ec4',
        'purple': '#ac8aac',
        'red': '#ac8a8c',
        'yellow': '#aca98a'
    } 

    spacing = options.get('spacing', {
        'vertical': 5,
        'horizontal': 5
    })

    padding = options.get('padding', {
        'top': spacing['vertical'],
        'right': spacing['horizontal'],
        'bottom': spacing['vertical'],
        'left': spacing['horizontal']
    })

    c.colors.completion.category.bg = palette['background']

    c.colors.completion.category.border.bottom = palette['border']

    c.colors.completion.category.border.top = palette['border']

    c.colors.completion.category.fg = palette['foreground']

    c.colors.completion.even.bg = palette['background']

    c.colors.completion.odd.bg = palette['background-alt']

    c.colors.completion.fg = palette['foreground']

    c.colors.completion.item.selected.bg = palette['selection']

    c.colors.completion.item.selected.border.bottom = palette['selection']

    c.colors.completion.item.selected.border.top = palette['selection']

    c.colors.completion.item.selected.fg = palette['foreground']

    c.colors.completion.match.fg = palette['orange']

    c.colors.completion.scrollbar.bg = palette['background']

    c.colors.completion.scrollbar.fg = palette['foreground']

    c.colors.downloads.bar.bg = palette['background']

    c.colors.downloads.error.bg = palette['background']

    c.colors.downloads.error.fg = palette['red']

    c.colors.downloads.stop.bg = palette['background']

    c.colors.downloads.system.bg = 'none'

    c.colors.hints.bg = palette['background']

    c.colors.hints.fg = palette['purple']

    c.hints.border = '1px solid ' + palette['background-alt']

    c.colors.hints.match.fg = palette['foreground-alt']

    c.colors.keyhint.bg = palette['background']

    c.colors.keyhint.fg = palette['purple']

    c.colors.keyhint.suffix.fg = palette['selection']

    c.colors.messages.error.bg = palette['background']

    c.colors.messages.error.border = palette['background-alt']

    c.colors.messages.error.fg = palette['red']

    c.colors.messages.info.bg = palette['background']

    c.colors.messages.info.border = palette['background-alt']

    c.colors.messages.info.fg = palette['comment']

    c.colors.messages.warning.bg = palette['background']

    c.colors.messages.warning.border = palette['background-alt']

    c.colors.messages.warning.fg = palette['red']

    c.colors.prompts.bg = palette['background']

    c.colors.prompts.border = '1px solid ' + palette['background-alt']

    c.colors.prompts.fg = palette['cyan']

    c.colors.prompts.selected.bg = palette['selection']

    c.colors.statusbar.caret.bg = palette['background']

    c.colors.statusbar.caret.fg = palette['orange']

    c.colors.statusbar.caret.selection.bg = palette['background']

    c.colors.statusbar.caret.selection.fg = palette['orange']

    c.colors.statusbar.command.bg = palette['background']

    c.colors.statusbar.command.fg = palette['pink']

    c.colors.statusbar.command.private.bg = palette['background']

    c.colors.statusbar.command.private.fg = palette['foreground-alt']

    c.colors.statusbar.insert.bg = palette['background-attention']

    c.colors.statusbar.insert.fg = palette['foreground-attention']

    c.colors.statusbar.normal.bg = palette['background']

    c.colors.statusbar.normal.fg = palette['foreground']

    c.colors.statusbar.passthrough.bg = palette['background']

    c.colors.statusbar.passthrough.fg = palette['orange']

    c.colors.statusbar.private.bg = palette['background-alt']

    c.colors.statusbar.private.fg = palette['foreground-alt']

    c.colors.statusbar.progress.bg = palette['background']

    c.colors.statusbar.url.error.fg = palette['red']

    c.colors.statusbar.url.fg = palette['foreground']

    c.colors.statusbar.url.hover.fg = palette['cyan']

    c.colors.statusbar.url.success.http.fg = palette['green']

    c.colors.statusbar.url.success.https.fg = palette['green']

    c.colors.statusbar.url.warn.fg = palette['yellow']

    c.statusbar.padding = padding

    c.colors.tabs.bar.bg = palette['selection']

    c.colors.tabs.even.bg = palette['selection']

    c.colors.tabs.even.fg = palette['foreground']

    c.colors.tabs.indicator.error = palette['red']

    c.colors.tabs.indicator.start = palette['orange']

    c.colors.tabs.indicator.stop = palette['green']

    c.colors.tabs.indicator.system = 'none'

    c.colors.tabs.odd.bg = palette['selection']

    c.colors.tabs.odd.fg = palette['foreground']

    c.colors.tabs.selected.even.bg = palette['background']

    c.colors.tabs.selected.even.fg = palette['foreground']

    c.colors.tabs.selected.odd.bg = palette['background']

    c.colors.tabs.selected.odd.fg = palette['foreground']

    c.tabs.padding = padding
    c.tabs.indicator.width = 1
    c.tabs.favicons.scale = 1

