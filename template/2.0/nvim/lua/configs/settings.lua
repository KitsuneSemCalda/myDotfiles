#!/usr/bin/env lua

-- Files Config

vim.cmd([[ set encoding=utf-8 ]])
vim.cmd([[ set fileencoding=utf-8 ]])
vim.cmd([[ set fileencodings=utf-8 ]])

vim.cmd([[ filetype on ]])
vim.cmd([[ filetype plugin on ]])
vim.cmd([[ filetype indent on ]])

-- Editor Config

vim.cmd([[ set bomb ]])
vim.cmd([[ set binary ]])
vim.cmd([[ set nocompatible ]])

vim.cmd([[ set nu! ]])
vim.cmd([[ set incsearch ]])
vim.cmd([[ set wildmenu ]])
vim.cmd([[ set confirm ]])

vim.cmd([[set nobackup]])
vim.cmd([[set nowritebackup]])

-- Config Spacing

vim.cmd([[ set smarttab]])
vim.cmd([[ set expandtab]])

vim.cmd([[ set tabstop=4 ]])
vim.cmd([[ set softtabstop=4 ]])
vim.cmd([[ set shiftwidth=4 ]])
vim.cmd([[ set scrolloff=8 ]])
vim.cmd([[ set colorcolumn=100 ]])
vim.cmd([[ set cmdheight=2 ]])
vim.cmd([[ set updatetime=100 ]])

-- Setting Cases

vim.cmd([[ set ignorecase]])
vim.cmd([[ set smartcase]])

-- Config colors and themes
vim.cmd([[ set termguicolors ]])
vim.cmd([[ colorscheme moonlight ]])

vim.cmd([[let g:NERDTreeGitStatusIndicatorMapCustom = {
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
]])

vim.cmd([[
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

    let g:NERDTreeExtensionHighlightColor = {}     
    let g:NERDTreeExtensionHighlightColor['css'] = s:blue

    let g:NERDTreeExactMatchHighlightColor = {}
    let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange

    let g:NERDTreePatternMatchHighlightColor = {}
    let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red

    let g:WebDevIconsDefaultFolderSymbolColor = s:beige
    let g:WebDevIconsDefaultFileSymbolColor = s:blue
]])

vim.g.moonlight_italic_comments = true
vim.g.moonlight_italic_keywords = true
vim.g.moonlight_italic_functions = true
vim.g.moonlight_italic_variables = false
vim.g.moonlight_contrast = true
vim.g.moonlight_borders = false 
vim.g.moonlight_disable_background = false


