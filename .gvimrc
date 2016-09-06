"ubuntu"
set nocompatible " 关闭 vi 兼容模式
filetype off                  " required

:let mapleader=","
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin('~/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/emmet-vim'

Plugin 'git://github.com/scrooloose/nerdtree.git'

"显示文件结构
Plugin 'majutsushi/tagbar'

"语法检查
Plugin 'git://github.com/scrooloose/syntastic.git'

"vim状态栏
Plugin 'Lokaltog/vim-powerline'
"ack.vim查找插件"
Plugin 'https://github.com/mileszs/ack.vim.git'

"html5.vim
Plugin 'othree/html5.vim'

"自动补全"
" Plugin 'git://github.com/Valloric/YouCompleteMe.git'

"matchit
Plugin 'vim-scripts/matchit.zip'

"screen
Plugin 'git://github.com/ervandew/screen.git'

"插入符号
Plugin 'git://github.com/tpope/vim-surround.git'

"matchTagAlways 高亮匹配标签
Plugin 'git://github.com/Valloric/MatchTagAlways.git'

"js高亮
Plugin 'jelera/vim-javascript-syntax'

"自动缩进
Plugin 'pangloss/vim-javascript'

"mru恢复上次编辑
Plugin 'git://github.com/yegappan/mru.git'

"注释 tcomment"
Plugin 'git://github.com/tomtom/tcomment_vim.git'

"自动补全snipmate.vim
Plugin 'git://github.com/msanders/snipmate.vim.git'

"vim-easymotion"
Plugin 'git://github.com/easymotion/vim-easymotion.git'

"多行编辑 vim-multiple-cursors"
Plugin 'git://github.com/terryma/vim-multiple-cursors.git'

"重命名文件
Plugin 'danro/rename.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set regexpengine=1
syntax enable
syntax on " 自动语法高亮
colorscheme molokai
set number " 显示行号
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
" 高亮显示匹配的括号 
set showmatch 
" 自动格式化 
set formatoptions=tcrqn 
"set lines=35 columns=120 "设置窗口大小
" history文件中需要记录的行数 
set history=1000
"智能对齐方式 
" set smartindent 
"设置字体
set guifont=Monaco\ 13 
"gvim隐藏菜单栏
set guioptions=m
set autoindent
set cindent
set shortmess=atI " 启动的时候不显示那个援助乌干达儿童的提示 
set foldenable " 允许折叠
set foldmethod=manual " 手动折叠 
"关闭闪屏提醒
set vb t_vb=
"等待输入时间
:set timeoutlen=1500
"搜索忽略大小写
set ignorecase 
"括号匹配
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
nnoremap <silent> <F5> :NERDTreeToggle <CR>
:nnoremap <leader>d dd
:vnoremap - U
:inoremap <c-d> <esc>cc
"快速编辑.vimrc文件
:nnoremap <leader>ev :vsplit $MYGVIMRC<cr>
"重读.vimrc文件
:nnoremap <leader>sv :source $MYGVIMRC<cr>
"缩写替换
:iabbrev @@ 824060993@qq.com 
:inoremap =  <space>=<space>
:inoremap ==  <space>==<space>
:imap <c-e> <c-y>,


"快速返回到普通模式
:inoremap jk <esc>
:inoremap <esc> <nop>
"快速在尾部添加分号
:inoremap ;; <esc>A;<cr>
:inoremap ,, <esc>A,<cr>
:nnoremap <leader>/ A<space><space>//
"插入模式下快速在下方开辟新行"
:inoremap <c-j> <esc>o
"插入模式下快速在上方开辟新行"
:inoremap <c-k> <esc>O
" 快速换行缩进
:inoremap <c-cr> <cr><esc>O
" 光标移植末尾
:inoremap <c-l> <esc>A
:inoremap <c-h> <esc>I
"左右窗口转换"
:nnoremap <c-h> <c-w><Left>
:nnoremap <c-l> <c-w><Right>
:nnoremap <c-j> <c-w><Down>
:nnoremap <c-k> <c-w><Up>
:nnoremap <F4> :Ack -i
"快速打开MRU"
:nnoremap <leader><cr> :MRU<cr>
"快速打开插件列表"
:nnoremap <leader>plg :PluginList<cr>
"快速安装插件"
:nnoremap <leader>plgi :PluginInstall<cr>
"快速退出"
:nnoremap <leader>q :q<cr>
"快速保存"
:nnoremap <leader>w :w<cr>
"快速保存并退出"
:nnoremap <leader>wq :wq<cr>
"快速增加宽度"
:nnoremap <leader>wa 10<c-w>> 
"快速减小宽度"
:nnoremap <leader>wd 10<c-w><


" ======= 恢复上次文件打开位置 ======= "  
" Go to last file(s) if invoked without arguments.
" autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
"     \ call mkdir($HOME . "/.vim") |
"     \ endif |
"     \ execute "mksession! " . $HOME . "/.vim/Session.vim"
"
" autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
"     \ execute "source " . $HOME . "/.vim/Session.vim"
"

" ======= 设置当文件被外部改变的时侯自动读入文件 ======= "  
if exists("&autoread")
    set autoread
endif
"===============启动最大化=================="

