" set background=dark    " Setting dark mode
" colorscheme synthwave84
" colorscheme xcodewwdc
" let g:onedark_style = 'cool'
hi MatchParen ctermbg=magenta guibg=#2C2560

" set termguicolors
" let g:tokyonight_style = 'storm'
" let g:tokyonight_enable_italic = 1
" colorscheme tokyonight

" colorscheme one-nvim
" colorscheme onedark
" colorscheme space-nvim
" colorscheme base16-onedark
" colorscheme spacebuddy
" colorscheme onebuddy
colorscheme zephyr

" colorscheme pinkmare
" hi RedSign guibg=none
" hi OrangeSign guibg=none
" hi YellowSign guibg=none
" hi GreenSign guibg=none
" hi CyanSign guibg=none
" hi BlueSign guibg=none
" hi PurpleSign guibg=none
" hi SignColumn guibg=none


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



" let g:dashboard_custom_header = [
" 	\ "",
" 	\"  __               _                       ",
" 	\"/ _| ___  ___  __| | ___   ___  _ __ ___  ",
" 	\"| |_ / _ \/ _ \/ _` |/ _ \ / _ \| '_ ` _ \ ",
" 	\"|  _|  __/  __/ (_| | (_) | (_) | | | | | |",
" 	\"|_|  \___|\___|\__,_|\___/ \___/|_| |_| |_|",
" 	\ "",
" 	\ ]

