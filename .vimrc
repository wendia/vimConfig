 " 定义快捷键的前缀，即<Leader>
 let mapleader=";"

 " 开启文件类型侦测
 filetype on
 " 根据侦测到的不同类型加载对应的插件
 filetype plugin on

"" 定义快捷键到行首和行尾
 nmap LB 0
 nmap LE $
"" 设置快捷键将选中文本块复制至系统剪贴板
"vnoremap <Leader>y "+y
"" 设置快捷键将系统剪贴板内容粘贴至 vim
"nmap <Leader>p "+p
"" 定义快捷键关闭当前分割窗口
"nmap <Leader>q :q<CR>
"" 定义快捷键保存当前窗口内容
"nmap <Leader>w :w<CR>
"" 定义快捷键保存所有窗口内容并退出 vim
"nmap <Leader>WQ :wa<CR>:q<CR> 
"" 不做任何保存，直接退出 vim
"nmap <Leader>Q :qa!<CR>
"" 依次遍历子窗口
"nnoremap nw <C-W><C-W>
"" 跳转至右方的窗口
"nnoremap <Leader>lw <C-W>l
"" 跳转至左方的窗口
"nnoremap <Leader>hw <C-W>h
"" 跳转至上方的子窗口
"  nnoremap <Leader>kw <C-W>k
"" 跳转至下方的子窗口
"nnoremap <Leader>jw <C-W>j
"" 定义快捷键在结对符之间跳转
"nmap <Leader>M %


"" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

 set textwidth=80
 set wrap

 " 开启实时搜索功能
 set incsearch
 " 搜索时大小写不敏感
 set ignorecase
 " 关闭兼容模式
 set nocompatible
 " vim 自身命令行模式智能补全
 set wildmenu

""""""""""""""""""""""""""""""""""""""""""""""""
""" 插件管理
""""""""""""""""""""""""""""""""""""""""""""""""
 " vundle 环境设置
   filetype off
   set rtp+=~/.vim/bundle/vundle
 " vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
   call vundle#begin()
   Plugin 'VundleVim/Vundle.vim'
   Plugin 'altercation/vim-colors-solarized' "vim主题
"" Plugin 'tomasr/molokai'  "vim主题
"" Plugin 'vim-scripts/phd' "vim主题
"" Plugin 'Lokaltog/vim-powerline'
   Plugin 'octol/vim-cpp-enhanced-highlight'
"" Plugin 'nathanaelkane/vim-indent-guides'
"" Plugin 'derekwyatt/vim-fswitch' "接口与实现快速切换
"" Plugin 'kshenoy/vim-signature'  " 书签可视化
"" Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"" Plugin 'majutsushi/tagbar'
"" Plugin 'vim-scripts/indexer.tar.gz' "周期性正对工程自动生成标签文件
"" Plugin 'vim-scripts/DfrankUtil'
"" Plugin 'vim-scripts/vimprj'
"" Plugin 'dyng/ctrlsf.vim'
"" Plugin 'terryma/vim-multiple-cursors'
"" Plugin 'scrooloose/nerdcommenter'
"" Plugin 'vim-scripts/DrawIt'
"" Plugin 'SirVer/ultisnips'
   Plugin 'Valloric/YouCompleteMe'
"" Plugin 'derekwyatt/vim-protodef'
   Plugin 'scrooloose/nerdtree'
"" Plugin 'fholgado/minibufexpl.vim'
"" Plugin 'gcmt/wildfire.vim'
"" Plugin 'sjl/gundo.vim'
"" Plugin 'Lokaltog/vim-easymotion'
"" Plugin 'suan/vim-instant-markdown'
"" Plugin 'lilydjwg/fcitx.vim'
 " " 插件列表结束
 call vundle#end()
 filetype plugin indent on

 """""""""""""""""""""""""""""""""""""""""""""""
 "" 界面美化
 """""""""""""""""""""""""""""""""""""""""""""""
 " 配色方案
  set background=dark
  colorscheme solarized
 "colorscheme molokai
 "colorscheme phd

"" 禁止光标闪烁
"set gcr=a:block-blinkon0
"" 禁止显示滚动条
"set guioptions-=l
"set guioptions-=L
"set guioptions-=r
"set guioptions-=R
"" 禁止显示菜单和工具条
"set guioptions-=m
"set guioptions-=T

 " 总是显示状态栏
 set laststatus=2
 " 显示光标当前位置
 set ruler
 " 开启行号显示
 set number
 " 高亮显示当前行/列
 set cursorline
 set cursorcolumn
 " 高亮显示搜索结果
 set hlsearch

 " 禁止折行
 "set nowrap
 " 设置状态栏主题风格
 let g:Powerline_colorscheme='solarized256'


 """""""""""""""""""""""""""""""""""""""""""""""
 "" 代码分析
 """""""""""""""""""""""""""""""""""""""""""""""

 """""""""""""""""""""""""""""
 "" 语法高亮
 """""""""""""""""""""""""""""
 " 开启语法高亮功能
 syntax enable
 " 允许用指定语法高亮配色方案替换默认方案
 syntax on

 """""""""""""""""""""""""""""
 "" 代码缩进
 """""""""""""""""""""""""""""
 " 自适应不同语言的智能缩进
 filetype indent on
 " 将制表符扩展为空格
 set expandtab
 " 设置编辑时制表符占用空格数
 set tabstop=4
 " 设置格式化时制表符占用空格数
 set shiftwidth=4
 " 让 vim 把连续数量的空格视为一个制表符
 set softtabstop=4
 " 设置使用C/C++语言的自动缩进方式
 set cindent
 " 设置C/C++语言的具体缩进方式
 set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
 " 设置匹配模式，显示匹配的括号
 set showmatch
 " 光标从行首和行末时可以跳到另一行去
 set whichwrap=b,s,<,>,[,] 

"" 随 vim 自启动
"let g:indent_guides_enable_on_vim_startup=1
"" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
"" 色块宽度
"let g:indent_guides_guide_size=1
"" 快捷键 i 开/关缩进可视化
"nmap <silent> <Leader>i <Plug>IndentGuidesToggle

""""""""""""""""""""""""""""""
""" 代码折叠
""" 操作：za，打开或关闭当前折叠；
"""       zM，关闭所有折叠；
"""       zR，打开所有折叠。
""""""""""""""""""""""""""""""
"" 基于缩进或语法进行代码折叠
""set foldmethod=indent
 set foldmethod=syntax
"" 启动 vim 时关闭折叠代码
 set nofoldenable

"" *.cpp 和 *.h 间切换
"nmap <silent> <Leader>sw :FSHere<cr>


""""""""""""""""""""""""""""""
""" 代码收藏
""" vim-signature
""" echo has('signs') return 1
""""""""""""""""""""""""""""""
"let g:SignatureMap = {
"        \ 'Leader'             :  "m",
"        \ 'PlaceNextMark'      :  "m,",
"        \ 'ToggleMarkAtLine'   :  "m.",
"        \ 'PurgeMarksAtLine'   :  "m-",
"        \ 'DeleteMark'         :  "dm",
"        \ 'PurgeMarks'         :  "mda",
"        \ 'PurgeMarkers'       :  "m<BS>",
"        \ 'GotoNextLineAlpha'  :  "']",
"        \ 'GotoPrevLineAlpha'  :  "'[",
"        \ 'GotoNextSpotAlpha'  :  "`]",
"        \ 'GotoPrevSpotAlpha'  :  "`[",
"        \ 'GotoNextLineByPos'  :  "]'",
"        \ 'GotoPrevLineByPos'  :  "['",
"        \ 'GotoNextSpotByPos'  :  "mn",
"        \ 'GotoPrevSpotByPos'  :  "mp",
"        \ 'GotoNextMarker'     :  "[+",
"        \ 'GotoPrevMarker'     :  "[-",
"        \ 'GotoNextMarkerAny'  :  "]=",
"        \ 'GotoPrevMarkerAny'  :  "[=",
"        \ 'ListLocalMarks'     :  "ms",
"        \ 'ListLocalMarkers'   :  "m?"
"        \ }

""""""""""""""""""""""""""""""
""" 标识符列表
""" ctags & tagbar
"""""""""""""""""“""""""""""""
 " 设置 tagbar 子窗口的位置出现在主编辑区的左边 
 let tagbar_left=1 
 " 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
 nnoremap <Leader>ilt :TagbarToggle<CR> 
 " 设置标签子窗口的宽度 
 let tagbar_width=32 
 " tagbar 子窗口中不显示冗余帮助信息 
 let g:tagbar_compact=1
 " 设置 ctags 对哪些代码标识符生成标签
 let g:tagbar_type_cpp = {
     \ 'kinds' : [
          \ 'c:classes:0:1',
          \ 'd:macros:0:1',
          \ 'e:enumerators:0:0', 
          \ 'f:functions:0:1',
          \ 'g:enumeration:0:1',
          \ 'l:local:0:1',
          \ 'm:members:0:1',
          \ 'n:namespaces:0:1',
          \ 'p:functions_prototypes:0:1',
          \ 's:structs:0:1',
          \ 't:typedefs:0:1',
          \ 'u:unions:0:1',
          \ 'v:global:0:1',
          \ 'x:external:0:1'
      \ ],
      \ 'sro'        : '::',
      \ 'kind2scope' : {
          \ 'g' : 'enum',
          \ 'n' : 'namespace',
          \ 'c' : 'class',
          \ 's' : 'struct',
          \ 'u' : 'union'
      \ },
      \ 'scope2kind' : {
          \ 'enum'      : 'g',
          \ 'namespace' : 'n',
          \ 'class'     : 'c',
          \ 'struct'    : 's',
          \ 'union'     : 'u'
      \ }
      \ }
 " 正向遍历同名标签
 nmap <Leader>tn :tnext<CR>
 " 反向遍历同名标签
 nmap <Leader>tp :tprevious<CR>

"" 设置插件 indexer 调用 ctags 的参数
"" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
"" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
"let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
""""""""""""""""""""""""""""""
""" 内容查找
""" 略
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
""" 模块补全
""""""""""""""""""""""""""""""
"" UltiSnips 的 tab 键与 YCM 冲突，重新设定
""let g:UltiSnipsExpandTrigger="<leader><tab>"
""let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
""let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"


""""""""""""""""""""""""""""""
""" 智能补全
""""""""""""""""""""""""""""""
"" 自动补全配置
   let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
   set completeopt=longest,menu
   "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
   autocmd InsertLeave * if pumvisible() == 0|pclose|endif
   "离开插入模式后自动关闭预览窗口
   inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
   "回车即选中当前项
   "上下左右键的行为 会显示其他信息
   inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
   inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
   inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
   inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
  
   "youcompleteme  默认tab  s-tab 和自动补全冲突
   "let g:ycm_key_list_select_completion=['<c-n>']
   let g:ycm_key_list_select_completion = ['<Down>']
   "let g:ycm_key_list_previous_completion=['<c-p>']
   let g:ycm_key_list_previous_completion = ['<Up>']
   let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
  
   let g:ycm_collect_identifiers_from_tags_files=1    " 开启 YCM 基于标签引擎
   let g:ycm_min_num_of_chars_for_completion=2    "从第2个键入字符就开始罗列匹配项
   let g:ycm_cache_omnifunc=0    " 禁止缓存匹配项,每次都重新生成匹配项
   let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
   "force recomile syntastic
   nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    
   "nnoremap <leader>lo :lopen<CR>    "open locationlist
   "nnoremap <leader>lc :lclose<CR>    "close locationlist
   "inoremap <leader><leader> <C-x><C-o>
   "在注释输入中也能补全
   let g:ycm_complete_in_comments = 1
   "在字符串输入中也能补全
   let g:ycm_complete_in_strings = 1
   "注释和字符串中的文字也会被收入补全
   let g:ycm_collect_identifiers_from_comments_and_strings = 0
  
   nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
   " 跳转到定义处

""""""""""""""""""""""""""""""
""" 按键映射
""""""""""""""""""""""""""""""
 imap ii <ESC>
