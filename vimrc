" http://vimdoc.sourceforge.net/htmldoc/starting.html#vimrc

call pathogen#infect()
call pathogen#helptags()

set nocompatible " use vim defaults
set scrolloff=3 " keep 3 lines when scrolling
set ai " set auto-indenting on for programming

set expandtab " expand tabs to spaces
set tabstop=4 " number of spaces in a tab
set shiftwidth=2 " number of spaces to autoindent

set showcmd " display incomplete commands
set nobackup " do not keep a backup file
set number " show line numbers
set ruler " show the current row and column

set foldmethod=indent " enable folding
" set foldmethod=syntax

set hlsearch " highlight searches
set incsearch " do incremental searching
set showmatch " jump to matches when entering regexp
set ignorecase " ignore case when searching
set smartcase " no ignorecase if Uppercase char present

set visualbell t_vb= " turn off error beep/flash
set novisualbell " turn off visual bell

set backspace=indent,eol,start " make that backspace key work the way it should

syntax on " turn syntax highlighting on by default
filetype on " detect type of file
filetype indent on " load indent file for specific file type

set t_RV= " http://bugs.debian.org/608242, http://groups.google.com/group/vim_dev/browse_thread/thread/9770ea844cec3282

set cinoptions=>2s,{1s,n-s,^-s

autocmd FileType python     setlocal textwidth=78 tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType h,c,cpp    setlocal textwidth=78 tabstop=4 softtabstop=2 shiftwidth=2 expandtab cindent
autocmd FileType js         setlocal textwidth=78 tabstop=4 softtabstop=2 shiftwidth=2 expandtab cindent
autocmd FileType make       setlocal noexpandtab

highlight Comment ctermfg=Blue
