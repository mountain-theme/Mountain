" Custom statusline made for the minimal aesthetic of Mountain!

" Please note that this relies heavily on source code from the ever-generous
" r/unixporn mod JavaCafe :)

if exists("g:enable_mountain_statusline")&&g:enable_mountain_statusline==1
    let g:wintabs_ui_sep_inbetween = ""
    let g:wintabs_ui_sep_rightmost = ""
    let g:DevIconsEnableFolderExtensionPatternMatching = 1


    function! RedrawModeColors(mode) " {{{
    if a:mode == 'n'
        hi MyStatuslineAccent guifg=#0f0f0f gui=none guibg=#050505
        hi MyStatuslineAccentBody guifg=#0f0f0f gui=none guibg=#ac8a8c
    elseif a:mode == 'i'
        hi MyStatuslineAccent guibg=#0f0f0f gui=none guifg=#0f0f0f
        hi MyStatuslineAccentBody guifg=#050505 gui=none guibg=#8aac8b
    elseif a:mode == 'R'
        hi MyStatuslineAccent guibg=#0f0f0f gui=none guifg=#0f0f0f
        hi MyStatuslineAccentBody guifg=#050505 gui=none guibg=#8aabac
    elseif a:mode == 'v' || a:mode == 'V' || a:mode == '^V'
        hi MyStatuslineAccent guibg=#0f0f0f gui=none guifg=#0f0f0f
        hi MyStatuslineAccentBody guifg=#050505 gui=none guibg=#aca98a
    endif
    return ''
    endfunction


    function! SetFiletype(filetype) " {{{
    if a:filetype == ''
        return '-'
    else
        return a:filetype
    endif
    endfunction


    set statusline=%{RedrawModeColors(mode())}
    set statusline+=%#MyStatuslineAccent#
    set statusline+=%#MyStatuslineAccentBody#\ \ \ 
    set statusline+=%#MyStatuslineSeparator#
    set statusline+=%#MyStatuslineFilename#\ %.20f
    set statusline+=%#MyStatuslineFilename#\ %{&modified?'[+]':''}
    set statusline+=%#MyStatuslineSeparator#\ %#reset#


    set statusline+=%=
    set statusline+=%#MyStatuslineLineCol#
    set statusline+=%#MyStatuslineLineColBody#\ %2l
    set statusline+=\/%#MyStatuslineLineColBody#%2c
    set statusline+=%#MyStatuslineLineCol#
    set statusline+=\ 
    set statusline+=%#MyStatuslinePercentage#\|
    set statusline+=%#MyStatuslinePercentageBody#\ %P
    set statusline+=\/\%#MyStatuslinePercentageBody#%L
    set statusline+=%#MyStatuslinePercentage#
    set statusline+=\ 
    set statusline+=%#MyStatuslineFiletype#
    set statusline+=%#MyStatuslineFiletypeBody#\ %{WebDevIconsGetFileTypeSymbol()}\ %{SetFiletype(&filetype)}\ 
    set statusline+=%#MyStatuslineFiletype#


    hi MyStatuslineFilename guifg=#f0f0f0 gui=none guibg=#191919

    hi StatusLine          guifg=none       guibg=#0f0f0f  gui=NONE
    hi StatusLineNC        guifg=#050505    guibg=#c49ea0  gui=none

    hi MyStatuslineSeparator guifg=#191919 gui=none guibg=#191919 
    hi reset guibg=#0f0f0f

    hi MyStatuslineFiletype guibg=#0f0f0f gui=NONE guifg=#191919
    hi MyStatuslineFiletypeBody guibg=#ac8aac gui=none guifg=#050505

    hi MyStatuslinePercentage guibg=#191919 gui=NONE guifg=#f0f0f0
    hi MyStatuslinePercentageBody guibg=#191919 gui=none guifg=#f0f0f0

    hi MyStatuslineLineCol guibg=#191919 gui=NONE guifg=#f0f0f0
    hi MyStatuslineLineColBody guibg=#191919 gui=none guifg=#f0f0f0
endif
