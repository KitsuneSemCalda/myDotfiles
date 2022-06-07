    " Global Setting
"   Editor Setting

syntax on
filetype on
filetype plugin on
filetype indent on

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set nu!
set incsearch
set ignorecase
set smartcase
set smarttab
set expandtab
set nobackup
set nowritebackup
set splitright
set splitbelow
set autoread
set mouse=a
set signcolumn=yes
set nocompatible

"   Value Settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=8
set colorcolumn=100
set cmdheight=2
set updatetime=100

"   Mapping Setting
map <C-q> :wq!<CR>
map <C-s> :w!<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Plugin Download
call plug#begin(stdpath('config').'/plugged')
    " Themes Plugin
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tomasr/molokai'


    "Miscellaneous Plugin
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ObserverOfTime/coloresque.vim'
    Plug 'Pocco81/AutoSave.nvim'
    Plug 'andweeb/presence.nvim'


    " Language Plugin
    Plug 'sheerun/vim-polyglot'
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
    Plug 'mfussenegger/nvim-lint'
    Plug 'nvim-treesitter/nvim-treesitter'


call plug#end()

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

if (has("nvim"))
    " ALE
    let g:ale_linters = {
    \}

    let g:ale_fixers = {
    \   '*': ['trim_whitespace'],
    \}
    let g:ale_fix_on_save = 1
    " COC
    let g:coc_global_extensions = ['coc-snippets','coc-tsserver','coc-go','coc-rust-analyzer','coc-clangd']
endif

" Config Colors
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

" Config Symbols
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" Config Plugins
let g:airline_theme = 'minimalist'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
let g:molokai_original = 0
let g:rehash256 = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['css'] = s:blue
let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
let g:NERDTreePatternMatchHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red
let g:WebDevIconsDefaultFolderSymbolColor = s:beige
let g:WebDevIconsDefaultFileSymbolColor = s:blue
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusUntrackedFilesMode = 'all'

colorscheme molokai

let NERDTreeShowHidden=1

" Lua config

lua << EOF

local presence = require("presence"):setup({
	client_id   = "793271441293967371",
    auto_update = true,
	neovim_image_text = "The One True Text Editor",
	main_image = "neovim",
	log_level = nil,
	debounce_timeout = 10,
	enable_line_number = true,
	blacklist = {},
	buttons = true,
	file_assets = {},
    editing_text = "Editing %s",
    file_explorer_text = "Browsing %s",
    git_commit_text = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text = "Reading %s",
    workspace_text  = "Working on %s",
    line_number_text = "Line %s out of %s",
})

local autosave = require("autosave")
autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        conditions = {
            exists = true,
            filename_is_not = {},
            filetype_is_not = {},
            modifiable = true
        },
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
        debounce_delay = 135
    }
)
EOF

