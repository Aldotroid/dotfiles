" Required for plugin management
call plug#begin('~/.local/share/nvim/plugged')

" Node.js development
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'cohama/lexima.vim' " Auto close parentheses and repeat by dot dot dot...

" bottom line
Plug 'itchyny/lightline.vim'

" Markdown
Plug 'preservim/vim-markdown'

" Terraform
Plug 'hashivim/vim-terraform'

" File navigation
Plug 'dyng/ctrlsf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Code check (ALE = Asynchronous Lint Engine)
Plug 'w0rp/ale'
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Go development
Plug 'fatih/vim-go'

" Protobuf
Plug 'uarun/vim-protobuf'

" Python development
Plug 'davidhalter/jedi-vim'
Plug 'python-mode/python-mode'

" Class outline viewer
Plug 'majutsushi/tagbar'

" Silver searcher integration
Plug 'mileszs/ack.vim'

" Git
Plug 'airblade/vim-gitgutter'

" Debugging
Plug 'puremourning/vimspector'

" Indentation
Plug 'Yggdroot/indentLine'

" Color schemes
Plug 'dracula/vim'

" Highlight colors in buffers
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

" yats - Javascript
let g:yats_host_keyword = 1
set re=0

let g:python3_host_prog = '$HOME/.asdf/shims/python'

" Norcalli's setup
lua require'colorizer'.setup()

" Terraform - Autoformat files
let g:terraform_fmt_on_save = 1
