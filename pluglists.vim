"=====插件
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"vim-plug插件
call plug#begin('~/.config/nvim/plugged')

"pretty
Plug 'akinsho/nvim-bufferline.lua'
" Plug 'taigacute/spaceline.vim'
Plug 'glepnir/galaxyline.nvim'
Plug 'Avimitin/nerd-galaxyline'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'artanikin/vim-synthwave84'
" Plug 'arzg/vim-colors-xcode'
" Plug 'Th3Whit3Wolf/space-nvim'
" Plug 'bkegley/gloombuddy'
" Plug 'Mofiqul/dracula.nvim'
" Plug 'stonefeld/nordokai'
" Plug 'shaunsingh/solarized.nvim'
" Plug 'glepnir/zephyr-nvim'
" Plug 'sainnhe/everforest'
" Plug 'theniceboy/nvim-deus'
" Plug 'ghifarit53/tokyonight-vim'
" Plug 'navarasu/onedark.nvim'
Plug 'Th3Whit3Wolf/one-nvim'


"autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" lsp
Plug 'neovim/nvim-lspconfig'
Plug 'gfanto/fzf-lsp.nvim'


"html,css,js
Plug 'AndrewRadev/tagalong.vim'                                     " 同时修改html标签


"markdown
" Plug 'theniceboy/bullets.vim', { 'for': ['vim-plug', 'markdown'] }
" Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for' :['markdown', 'vim-plug'] }
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }


" undo tree
Plug 'mbbill/undotree'


"taglist
" Plug 'liuchengxu/vista.vim'
Plug 'simrat39/symbols-outline.nvim'


"format
" Plug 'Chiel92/vim-autoformat'


"align
Plug 'junegunn/vim-easy-align'                                      " 对齐


"Editor Enhancement
Plug 'kien/rainbow_parentheses.vim'                                 " 括号高亮
" Plug 'tomtom/tcomment_vim'                                          " 注释
Plug 'tpope/vim-commentary'                                         " 注释
Plug 'jiangmiao/auto-pairs'                                         " 自动匹配括号
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'                                       " 多光标
Plug 'RRethy/vim-illuminate'                                        " 高亮附近相同的词
" Plug 'AndrewRadev/splitjoin.vim'                                    " gS单行转多行,gJ多行转单行
Plug 'tpope/vim-repeat'                                             " 重复操作
Plug 'tpope/vim-speeddating'                                        " 递增减
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-expand-region'                                    " +,_,增加可视模式选择的文本
Plug 'MattesGroeger/vim-bookmarks'
Plug 'gcmt/wildfire.vim'                                            " enter 快速选择文本
" Plug 'Yggdroot/indentLine'                                          " 缩进线
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'famiu/bufdelete.nvim'


"textobj
Plug 'kana/vim-textobj-user'                                        " 文本对象
Plug 'kana/vim-textobj-line'                                        " 行文本对象
Plug 'coderifous/textobj-word-column.vim'                           " 列文本对象
Plug 'junegunn/vim-after-object'                                    " -, :, #, =
Plug 'vim-scripts/argtextobj.vim'                                     " argument
Plug 'rhysd/vim-textobj-anyblock'                                    " b instead ', (), {}, [] and <>
Plug 'wellle/targets.vim'


"subversive
" Plug 'svermeulen/vim-subversive'                                    " 快速替换
" Plug 'tpope/vim-abolish'                                            " subversive depend
Plug 'markonm/traces.vim'                                           " 预览:s/old/new/
" Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }


"search
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'haya14busa/incsearch.vim'                                     " 模糊搜素
Plug 'haya14busa/incsearch-fuzzy.vim'                               " 模糊搜素
Plug 'junegunn/vim-slash'                                           " 优化搜索，移动光标后清除高亮
Plug 'osyo-manga/vim-anzu'                                          " 显示当前搜索
" Plug 'Yggdroot/LeaderF'


"git
Plug 'iberianpig/tig-explorer.vim'
Plug 'rbgrouleff/bclose.vim'
" Plug 'APZelos/blamer.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'


"move
Plug 'andymass/vim-matchup'                                         " %快速跳转
Plug 'easymotion/vim-easymotion'                                    " 快速跳转
Plug 'psliwka/vim-smoothie'
Plug 'rhysd/clever-f.vim'                                           " 增强f,F
Plug 't9md/vim-choosewin'                                           " 跳转窗口
" Plug 'tommcdo/vim-exchange'                                         " cx{motion} 交互文本
Plug 'justinmk/vim-sneak'
Plug 'pechorin/any-jump.vim'                                        "函数跳转


"diff
" Plug 'ZSaberLv0/ZFVimDirDiff'                                        " 文件对比
" Plug 'AndrewRadev/linediff.vim'                                     " 两个代码块diff visual模式下Linediff
" Plug 'chrisbra/vim-diff-enhanced'


" translator
" Plug 'iamcco/dict.vim'
"Plug 'VincentCordobes/vim-translate'
"Plug 'voldikss/vim-translator'


"输入法
" Plug 'ZSaberLv0/ZFVimIM'
" Plug 'ZSaberLv0/ZFVimIM_pinyin'
" Plug 'ZSaberLv0/ZFVimJob'                                           " optional, for async db update
" Plug 'ZSaberLv0/ZFVimIM_pinyin_huge'
"Plug 'vim-scripts/fcitx.vim'


" treesitter
Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'romgrk/nvim-treesitter-context'                               "显示当前函数
Plug 'windwp/nvim-ts-autotag'                                       " 关闭 tag 标签
Plug 'JoosepAlviste/nvim-ts-context-commentstring'                  " 注释


"others
Plug 'lambdalisue/suda.vim'                                         " sudo 写入
Plug 'vim-utils/vim-man'                                            " vim open man for :Vman
Plug 'yianwillis/vimcdoc'                                           " vim中文文档
Plug 'sheerun/vim-polyglot'                                         " 语法扩展
Plug 'airblade/vim-rooter'                                          " 切换项目根目录
Plug 'KabbAmine/vCoolor.vim'                                        " 调色板
Plug 'skywind3000/quickmenu.vim'                                    " 帮助菜单
Plug 'makerj/vim-pdf'
Plug 'DataWraith/auto_mkdir'                                        " 自动创建中间的目录结构
Plug 'tpope/vim-unimpaired'                                         " []代替互补的快捷键,如[b,]b代替bn,bp
Plug 'voldikss/vim-floaterm'                                        " 悬浮终端
Plug 'junegunn/vim-peekaboo'                                        " 寄存器
Plug 'glepnir/dashboard-nvim'
" Plug 'TaDaa/vimade'                                                   " 非活动窗口变灰
" Plug 'voldikss/vim-codelf'                                          " 变量命名
" Plug 'mhinz/vim-startify'                                           " 开始页面
" Plug 'mtth/scratch.vim'                                             " 临时buffer
" Plug 'ntpeters/vim-better-whitespace'
" Plug 'hotoo/pangu.vim'                                                " 中文排版
" Plug 'chrisbra/NrrwRgn'                                             " 固定内容
" Plug 'wellle/visual-split.vim'                                      " 将文本固定到分屏上
" Plug 't9md/vim-textmanip'                                           " ctrl-h,j,k,l to move text
" Plug 'matze/vim-move'                                               " alt-h,j,k,l to move text
" Plug 'nicwest/vim-http'
" Plug 'romgrk/searchReplace.vim'
" Plug 'nvim-telescope/telescope.nvim'


call plug#end()

