
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-surround'
Plug 'vhdirk/vim-cmake'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/syntastic'
"Plug 'othree/yajs.vim'
Plug 'vim-airline/vim-airline'
"Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-smooth-scroll'
Plug 'ternjs/tern_for_vim'
"Plug 'wikitopian/hardmode'
Plug 'rhysd/vim-clang-format'
"Plug 'maksimr/vim-jsbeautify'
Plug 'Chiel92/vim-autoformat'
Plug 'vim-ruby/vim-ruby'
Plug 'mklabs/split-term.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'posva/vim-vue'

call plug#end()
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

"FZF
set rtp+=/usr/local/opt/fzf

"NVIM terminal
tnoremap <Esc> <C-\><C-n>
let g:neoterm_position = "horizontal"
set splitbelow

"File Identation

if has("autocmd")
  filetype indent on
endif
set autoindent
autocmd FileType cpp ClangFormatAutoEnable
"au BufWrite * :Autoformat
let mapleader = "\<Space>"

"Vim Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


"PLUGIN SPECIFIC SETTINGS
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap gt :bnext<CR>
nnoremap <leader>wq :w<cr>:bd<cr>
nnoremap <leader>q :bd<cr>
nnoremap <C-b> :w<enter> :! g++ -std=c++11 % <cr>
nnoremap <C-t> :Term10 <cr>

inoremap jj <esc>
inoremap jk <esc>
"""cnoreabbrev wq w<bar>bd
"""cnoreabbrev q bd

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
map <F9> :YcmCompleter FixIt<CR>

let NERDTreeShowHidden=1

let g:ClangFormatAutoEnable = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"airline plugin
" air-line
let g:airline_powerline_fonts = 1

let g:Powerline_symbols = 'fancy'
let g:airline#extensions#syntastic#enabled = 1
" indent: mixed indent within a line
" long:   overlong lines
" trailing: trailing whitespace
" mixed-indent-file: different indentation in different lines
let g:airline#extensions#whitespace#checks = ['mixed-indent-file']
let g:airline#extensions#tabline#enabled = 1
"IndentTab plugin
let g:indentLine_color_term = 239
let g:indentLine_char = '│'
set list lcs=tab:\|\

nnoremap <S-h> :call ToggleHiddenAll()<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_signs=1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_wq=1
let g:syntastic_javascript_checkers = ['eslint']


set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set number
set nosmd
set noru
set cmdheight=1
set mouse=a
set nocuc nocul
set lazyredraw
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

let &colorcolumn="80,".join(range(120,999),",")

set t_Co=256
colorscheme gruvbox
set background=dark
syntax on
