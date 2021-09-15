
call plug#begin('~/.vim/plugged')

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Toggle between paste modes
set pastetoggle=<F3>

" Allow netrw to remove non-empty local directories
" let g:netrw_localrmdir='rm -r'

" Show row and column numbers
set ruler

" If pattern contains uppercase letter => case sensitive, otherwise, it is not
set ignorecase
set smartcase

syntax on
filetype plugin indent on

" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

colorscheme desert

"" expand in emmet using tab
"let g:user_emmet_expandabbr_key = '<C-tab>'

" Use ctrl+p shortcut for fzf
nmap <C-P> :FZF<CR>

" Ctrlp
let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|ios\|android\'

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Removing all trailing whitespace on save
" autocmd BufWritePre * %s/\s\+$//e

" Syntastic configs
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

let g:vim_jsx_pretty_colorful_config = 1

" Use new regular expression engine
set re=0

" Show file path and if edited
" set statusline=%f%m

" mappings
"inoremap < <><left>
"inoremap { {}<left>
"inoremap [ []<left>
"inoremap ( ()<left>

" set filetypes as typescript.tsx
"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
"au BufRead,BufNewFile *.ts   setfiletype typescript

" Eslint
"let g:syntastic_javascript_checkers = ["eslint"]
"let g:syntastic_javascript_eslint_exec = 'eslint_d'

" dark red
"hi jsxCloseTag guifg=#666667

" highlight text after column 80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" snippet

"" Define a directory where my snippets were to be located:
"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"" If you want :UltiSnipsEdit to split your window.
