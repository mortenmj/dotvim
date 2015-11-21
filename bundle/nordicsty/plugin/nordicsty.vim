" Vim plugin to fit the Nordic Semiconductor coding style and help development
" Last Change:  2015 Oct 15
" Maintainer:   Morten Mjelva <morten.mjelva@nordicsemiconductor.com>
" License:      Distributed under the same terms as Vim itself.
"
" Based heavily on the linuxsty plugin by Vivien Didelot <vivien.didelot@saviorfairelinux.com>
"

if exists("g:loaded_nordicsty")
    finish
endif
let g:loaded_nordicsty = 1

set wildignore+=*.ko,*.mod.c,*.order,modules.builtin
set eol

augroup nordicsty
    autocmd!

    autocmd FileType c,cpp call s:NordicFormatting()
    autocmd FileType c,cpp call s:NordicKeywords()
    autocmd FileType c,cpp call s:NordicHighlighting()
    autocmd FileType diff,kconfig setlocal tabstop=4
augroup END

function s:NordicFormatting()
    setlocal tabstop=4
    setlocal shiftwidth=4
    setlocal softtabstop=4
    setlocal textwidth=100
    setlocal expandtab

    setlocal cindent
    setlocal formatoptions=tcqlron
    setlocal cinoptions=:0,l1,t0,g0
endfunction

function s:NordicKeywords()
    syn keyword cTodo contained TODO FIXME
    syn keyword cType __INLINE
    syn keyword cType sizeof
    syn match cStructure "\<\w\+_t\>"
endfunction

function s:NordicHighlighting()
    highlight default link NordicError ErrorMsg

    syn match NordicError / \+\ze\t/     " spaces before tab
    syn match NordicError /\s\+$/        " trailing whitespaces
    "syn match NordicError /\%101v.\+/    " virtual column 101 and more
endfunction

" vim: ts=4 et sw=4
