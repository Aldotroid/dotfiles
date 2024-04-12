set nocompatible

source ~/.config/nvim/plug.vim

syntax on

" Colorscheme
colorscheme dracula

" Lightline
let g:lightline = { 'colorscheme': 'dracula' }

" Markdown
let g:vim_markdown_folding_disabled = 1 " Don't autofold
autocmd FileType markdown setl conceallevel=2
autocmd FileType markdown setl concealcursor=""

" Documentation for below options can be seen with :help <option>
" Use 2 spaces instead of tabs
set expandtab
set tabstop=2
set shiftwidth=2

set backspace=indent,eol,start

" Show ruler
set ruler

" Copy indent from current line when starting a new line
set autoindent

" When a bracket is inserted, briefly jump to the matching one
set showmatch

" If in INSERT, REPLACE or VISUL mode, put a message on the last line.
set showmode

" When on, a <TAB> in fron of a line inserts blanks according to 'shiftwidth'
set smarttab

" comma-separated list of screen columns that are highlighted with ColorColumn
" hl-ColorColumn
set colorcolumn=80

" Defines what bases VIM will consider for numbers when using the CTRL-A and
" CTRL-X commands for adding to and substracting from a number respectively
" Currently excluding octal
set nrformats-=octal

" Round indent to multiple of 'shiftwidth'
set shiftround

" While typing a search command, show where the pattern, as it was typed so
" far, matches.
set incsearch

" When there is a previous search pattern, highlight all its matches.
set hlsearch

" Ignore case in search patterns.
set ignorecase

" Override the ignorecase option if the search pattern contains upper case
" characters
set smartcase

" Set encoding
set encoding=utf-8

" Show line numbers
set number

set nobackup
set nowritebackup
set noswapfile

set title

" Transparency
highlight Normal ctermbg=none guibg=none

" https://github.com/tmux/tmux/issues/1246
" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Buffers
nnoremap <silent>[b :bprevious<cr>
nnoremap <silent>]b :bnext<cr>
nnoremap <silent>[B :bfirst<cr>
nnoremap <silent>]B :blast<cr>

" Tabs
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove<cr>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>
