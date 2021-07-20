" set background=dark    " Setting dark mode
"colorscheme space_vim_theme
"colorscheme deus
" colorscheme one
"colorscheme dracula
"colorscheme snazzy
" colorscheme synthwave84
" colorscheme xcodewwdc
" let g:onedark_style = 'cool'
" colorscheme space_vim_theme
" colorscheme zephyr
" colorscheme dracula
hi MatchParen ctermbg=magenta guibg=#2C2560

" set termguicolors
" let g:tokyonight_style = 'storm'
" let g:tokyonight_enable_italic = 1
" colorscheme tokyonight
colorscheme one-nvim
" colorscheme onedark

"--
"== startify ----------------------------------
"--
" let g:startify_custom_header = [
" \'     ________________________________ ',
" \'    < talk is cheap,show me the code >',
" \'     -------------------------------- ',
" \'      \                              _',
" \'       \                            | \',
" \'        \                           | |',
" \'         \                          | |',
" \'          \    |\                   | |',
" \'           \  /, ~\                / /',
" \'             X     `-.....-------./ /',
" \'              ~-. ~  ~              |',
" \'                 \             /    |',
" \'                  \  /_     ___\   /',
" \'                  | /\ ~~~~~   \ |',
" \'                  | | \        || |',
" \'                  | |\ \       || )',
" \'                 (_/ (_/      ((_/',
" \ '',
" \ '',
" \]


"--
"== xtabline ----------------------------------
"--
" let g:xtabline_settings = {}
" let g:xtabline_settings.enable_mappings = 0
" let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
" let g:xtabline_settings.enable_persistance = 0
" let g:xtabline_settings.last_open_first = 1
" noremap to :XTabCycleMode<CR>
" noremap \p :XTabInfo<CR>


"--
"== vim-anzu----------------------------------
"--
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
" statusline
set statusline=%{anzu#search_status()}



" hi    Normal    guifg        guibg        ctermfg        ctermbg
"颜色    属性    gui前景色    gui背景色    终端前景色    终端背景色
hi FloatermBorder guibg=none guifg=#8a82ca

" hi DiffText guibg=none guifg=blue
" hi DiffDelete guibg=none guifg=red
" hi DiffChange guibg=none guifg=green
" hi DiffAdd guibg=none guifg=orange



let g:dashboard_custom_header = [
	\ '',
	\ '   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠞⠉⢉⣭⣿⣿⠿⣳⣤⠴⠖⠛⣛⣿⣿⡷⠖⣶⣤⡀⠀⠀⠀   ',
	\ '    ⠀⠀⠀⠀⠀⠀⠀⣼⠁⢀⣶⢻⡟⠿⠋⣴⠿⢻⣧⡴⠟⠋⠿⠛⠠⠾⢛⣵⣿⠀⠀⠀⠀  ',
	\ '    ⣼⣿⡿⢶⣄⠀⢀⡇⢀⡿⠁⠈⠀⠀⣀⣉⣀⠘⣿⠀⠀⣀⣀⠀⠀⠀⠛⡹⠋⠀⠀⠀⠀  ',
	\ '    ⣭⣤⡈⢑⣼⣻⣿⣧⡌⠁⠀⢀⣴⠟⠋⠉⠉⠛⣿⣴⠟⠋⠙⠻⣦⡰⣞⠁⢀⣤⣦⣤⠀  ',
	\ '    ⠀⠀⣰⢫⣾⠋⣽⠟⠑⠛⢠⡟⠁⠀⠀⠀⠀⠀⠈⢻⡄⠀⠀⠀⠘⣷⡈⠻⣍⠤⢤⣌⣀  ',
	\ '    ⢀⡞⣡⡌⠁⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⢿⡀⠀⠀⠀⠸⣇⠀⢾⣷⢤⣬⣉  ',
	\ '    ⡞⣼⣿⣤⣄⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠸⣿⣇⠈⠻  ',
	\ '    ⢰⣿⡿⢹⠃⠀⣠⠤⠶⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⣿⠀⠀⣿⠛⡄⠀  ',
	\ '    ⠈⠉⠁⠀⠀⠀⡟⡀⠀⠈⡗⠲⠶⠦⢤⣤⣤⣄⣀⣀⣸⣧⣤⣤⠤⠤⣿⣀⡀⠉⣼⡇⠀  ',
	\ '    ⣿⣴⣴⡆⠀⠀⠻⣄⠀⠀⠡⠀⠀⠀⠈⠛⠋⠀⠀⠀⡈⠀⠻⠟⠀⢀⠋⠉⠙⢷⡿⡇⠀  ',
	\ '    ⣻⡿⠏⠁⠀⠀⢠⡟⠀⠀⠀⠣⡀⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⢀⠈⠀⢀⣀⡾⣴⠃⠀  ',
	\ '    ⢿⠛⠀⠀⠀⠀⢸⠁⠀⠀⠀⠀⠈⠢⠄⣀⠠⠼⣁⠀⡱⠤⠤⠐⠁⠀⠀⣸⠋⢻⡟⠀⠀  ',
	\ '    ⠈⢧⣀⣤⣶⡄⠘⣆⠀⠀⠀⠀⠀⠀⠀⢀⣤⠖⠛⠻⣄⠀⠀⠀⢀⣠⡾⠋⢀⡞⠀⠀⠀  ',
	\ '    ⠀⠀⠻⣿⣿⡇⠀⠈⠓⢦⣤⣤⣤⡤⠞⠉⠀⠀⠀⠀⠈⠛⠒⠚⢩⡅⣠⡴⠋⠀⠀⠀⠀  ',
	\ '    ⠀⠀⠀⠈⠻⢧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣻⠿⠋⠀⠀⠀⠀⠀⠀  ',
	\ '    ⠀⠀⠀⠀⠀⠀⠉⠓⠶⣤⣄⣀⡀⠀⠀⠀⠀⠀⢀⣀⣠⡴⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀  ',
	\ '                                       ',
	\ '',
	\ ]



