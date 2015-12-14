" be iMproved, required
set nocompatible
" to make Vim’s :! shell behave like your command prompt.
"set shellcmdflag=-ic
set splitright
" set line number
set nu
"set tw=100
" show the line and column number at the right down corner of the status bar;
set ruler
" Minimal number of screen lines to keep above and below the cursor.
set so=5 
" ignore lowercase and uppercase when execute ':s' , '*' ,etc...
set ignorecase
" allow some key to move accross line(loop just like a circle) ,b: <BS> " s:<SPACE>
set whichwrap=b,s,>,<,[,]
" turn off the error tip bell
set noerrorbells
" auto change current directory when execute ':vsp',':e' ,etc..
set autochdir
" used for count of tab expand spaces(when type <tab> in 'i' mod w)
set tabstop=4
" used for count of tab expand spaces(when type << ,>>  in 'n' mod w)
set shiftwidth=4
" set extra line break except for the \n and reaching end of line
"set linebreak
" show the match pair
set showmatch
" autoindent let the next line(when type <cr> in the i mod) indent same as
" prev line
"set autoindent
" autoindent more,such as 'if','else','{','}' will add one extra indent to next line 
"set smartindent
" print cmd info
set showcmd
" highlight *
set hlsearch
" open realtime search
set incsearch
set backspace=indent,eol,start
" commend line auto completion in c mod
set wildmenu

set mouse=a
set guioptions+=a
set expandtab
set fo=tq

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set termencoding=gbk
set termencoding=utf-8
set langmenu=zh_CN.UTF-8
set laststatus=2
set cpt=.,w,b,k,i,t
"let vim execute alias command in bashrc
let $BASH_ENV = "~/.bashrc"
language message zh_CN.UTF-8

syntax enable
filetype on  
filetype plugin indent on
"设置cword扩展'-'

"autocmd filetype vim setl iskeyword+=-,.,$,:
" autocmd filetype less let &l:filetype='less'
autocmd filetype smarty,tpl let &l:filetype='html'
" convert tpl file's filetype to html
autocmd BufRead,BufNewFile *.less set filetype=less
autocmd filetype smarty,html,css,javascript setl iskeyword+=-
" autocmd filetype php setl iskeyword+=$
autocmd filetype * setl fo=tq
" auto set vimdict
autocmd filetype * let &l:dict=s:vimfile.'/bundle/vim-dict/dict/'.&ft.'.dict'
" var_dump/debug()
autocmd filetype php,smarty  nnoremap <buffer> <C-x> :call Debug("var_dump(",");","$,-,>,.")<CR> 
autocmd filetype php,smarty nnoremap <buffer> <C-d> :call Debug("var_dump(",");exit;","$,-,>,.")<CR> 
autocmd filetype php,smarty nnoremap <buffer> <C-e> :call Debug("echo json_encode(",");exit;","$,-,>,.")<CR>
autocmd filetype javascript nnoremap <buffer> <C-d> :call Debug("console.log(",");","-,.,[,]")<CR>
autocmd filetype cpp nnoremap <buffer> <C-d> :call Debug("cout<<","<<endl;")<CR>
nmap <LeftMouse> <LeftMouse>i
" vmap <LeftRelease> <LeftRelease>c
" map <LeftDrag> v<LeftDrag>
" noremap <M-LeftDrag> <LeftDrag>
" inoremap <M-LeftDrag> <LeftDrag>
" onoremap <M-LeftDrag> <C-C><LeftDrag>
" noremap <M-LeftMouse> <4-LeftMouse>
" inoremap <M-LeftMouse> <4-LeftMouse>
" onoremap <M-LeftMouse> <C-C><4-LeftMouse>
nnoremap <F1> K
nnoremap <F5> <C-O>
nnoremap <F6> <C-I>
nnoremap <F7> :silent! cw<cr>\|:lw<cr>
nnoremap <F8> :silent! ccl<cr>\|:lcl<cr>
nnoremap <F9> :silent! cn<cr>\|:lne<cr>
nnoremap <F10> :silent! cp<cr>\|:lp<cr>
nnoremap <F11> :qa!<cr>
"nnoremap <F12> :WMToggle<cr>
nnoremap <F12> :NERDTreeToggle<cr>
"多窗口时调整当前窗口的大小
nnoremap <Up> <C-w>10+
nnoremap <Down> <C-w>10-
nnoremap <Left> <C-w>10<
nnoremap <right> <C-w>10>
" 从minibuffer里面移植过来的
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-N> :NERDTreeFocus<cr>
" 跳转当前光标至上一次驻留的窗口
nnoremap <Tab> <C-w><C-p>
"对应于 'J'命令的合并俩行，'K'用于拆分一行
nnoremap K i<cr><esc>
" extra paste for combining comand: 'y$' + <c-p>
nnoremap <C-p> o<space><esc><S-p>
" 关闭最近打开的窗口
nnoremap <c-c> :bun#<CR>
" 打开最近关闭的窗口
nnoremap <c-o> :vs#<CR>
" 取消当前操作并保存
nnoremap <C-u> u:w<CR>
" 恢复操作并保存
nnoremap <C-r> <C-r>:w<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-a> :g /^\n*$/ d<CR>
" 垂直切分某一个buffer,eg:Vb {1/2/3}
command! -nargs=1 -complete=buffer Vb execute("vertical sb ".<f-args>)
command! -nargs=1 -complete=file Vd execute("vertical diffsplit ".<f-args>)

let g:ctrlp_map = '<leader>f'
nnoremap <leader>p :CtrlP 
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlPBufTag<CR>
nnoremap <leader>m :CtrlPMRU<CR>
nnoremap <leader>d :CtrlPDir<CR>
" for comment 
nmap ; :TComment\|:w<CR>
vmap ; :TCommentBlock\|:w<CR>
" enter 选择补全
"inoremap <expr> <CR> pumvisible() ? '<C-y>' : '<CR>'

" taglist args
"let Tlist_Use_LEFT_Window=1
"let Tlist_File_Fold_Auto_Close=1
"let Tlist_Show_One_File=1
"let Tlist_GainFocus_On_ToggleOpen=1
"let Tlist_Exit_OnlyWindow=1
let NERDTreeShowBookmarks=1
let NERDTreeDirArrows=0

" winmanager args
"let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:NERDTree_title = "[NERDTree]"
"function! NERDTree_Start() 
"
"	exe 'NERDTree'
"
"endfunction 
"
"function! NERDTree_IsValid() 
"
"	return 1 
"
"endfunction
"let g:winManagerWindowLayout='NERDTree'
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplorerMoreThanOne=0

" set the runtime path to include Vundle and initialize
let s:MSWIN =   has("win16") || has("win32") || has("win64") || has("win95")
if	s:MSWIN
	autocmd! BufWritePost _vimrc source $VIM/_vimrc
	source $VIMRUNTIME/menu.vim
	set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
	"set shell=C:\msys\1.0\bin\sh.exe
	"set shellcmdflag=-c
	let path=$VIM."/vimfiles/bundle"
	" alternatively, pass a path where Vundle should install plugins
	" call vundle#begin('~/some/path/here')
	let s:vimfile = $vim.'/vimfiles/'
	call vundle#begin(path)
else
	"更新vimrc时另当前缓冲区全部重加载vimrc
	autocmd! BufWritePost .vimrc source /home/work/.vimrc
	set rtp+=~/.vim/bundle/Vundle.vim/
	set keywordprg=:help
	let s:vimfile = '/home/work/.vim/'
	call vundle#begin()
endif
" set colorcolumn=80
"设置列的背景色
" autocmd! filetype * hi ColorColumn ctermbg=darkred
" @plugin
Plugin 'dbakker/vim-projectroot',
Plugin 'mileszs/ack.vim',
Plugin 'Shougo/unite.vim',
Plugin 'Shougo/unite-session'
Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/neoyank.vim'
Plugin 'Shougo/vimproc.vim',
Plugin 'Shougo/neocomplete.vim'
Plugin 'tomtom/tcomment_vim',
Plugin 'gmarik/Vundle.vim',
Plugin 'jsbeautify',
Plugin 'Emmet.vim',
Plugin 'mattn/emmet-vim',
Plugin 'matchit.zip',
Plugin 'CmdlineComplete'
"Plugin 'winmanager',
"Plugin 'taglist.vim',
"Plugin 'cscope.vim',
"Plugin 'minibufexpl.vim',
Plugin 'garbas/vim-snipmate',
Plugin 'MarcWeber/vim-addon-mw-utils',
Plugin 'tomtom/tlib_vim',
Plugin 'snipmate-snippets',
Plugin 'bolasblack/gtrans.vim',
Plugin 'ornicar/vim-php-doc',
Plugin 'bling/vim-airline',
Plugin 'asins/vim-dict',
Plugin 'scrooloose/nerdtree',
Plugin 'nanotech/jellybeans.vim',
Plugin 'kien/ctrlp.vim',
Plugin 'muziqiushan/vim-bufonly'
Plugin 'muziqiushan/vim-var_dump',
Plugin 'muziqiushan/vim-doxygen',
"Plugin 'DoxygenToolkit.vim',
"Plugin 'AutoComplPop',
"Plugin 'Valloric/YouCompleteMe',
"Plugin 'phpcomplete.vim'
"Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/MatchTagAlways'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less',
call vundle#end()
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_c='%F'
let g:airline_inactive_collapse=0
let g:SimpleJsIndenter_BriefMode=1
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_working_path_mode = 'rwa'
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_match_window = 'order:ttb,min:1,max:10,results:20'
let g:ctrlp_root_markers = ['README','README.md','fis-conf.js','Bootstrap.php']
let g:ctrlp_max_files =0
let g:ctrlp_clear_cache_on_exit = 0
let g:ycm_key_list_select_completion = ['<c-j>']
let g:ycm_key_list_previous_completion = ['<c-k>']
let g:ycm_key_invoke_completion = '<C-space>'
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_loc_list_height = 5
autocmd filetype tpl,html let b:match_words = '<:>,{:},(:),[:]'.
            \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
            \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
            \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>,'  .
            \ '{%if.*%}:{%else.*%}:{%/if%},'.
            \ '{%for.*%}:{%/for.*%},'.
            \ '{%widget.*%}:{%/widget%},'.
            \ '{%block.*%}:{%/block%}'
" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
"     \ 'default' : '',
"     \ 'vimshell' : $HOME.'/.vimshell_hist',
"     \ 'scheme' : $HOME.'/.gosh_completions'
"         \ }
" In default, completes from all buffers.
if !exists('g:neocomplete#same_filetypes')
  let g:neocomplete#same_filetypes = {}
endif
call neocomplete#disable_default_dictionary('g:neocomplete#same_filetypes')
let g:neocomplete#same_filetypes._ = '_'
" let g:neocomplete#same_filetypes.html = '_'
" let g:neocomplete#same_filetypes.tpl = '_'
" let g:neocomplete#same_filetypes.css = '_'
" let g:neocomplete#same_filetypes.less = '_'
" let g:neocomplete#same_filetypes.js = '_'
" let g:neocomplete#same_filetypes.php = '_'


" Plugin key-mappings.
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  " return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><c-h> neocomplete#smart_close_popup()."\<BS>"

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1
inoremap <expr><bs> pumvisible()?neocomplete#start_manual_complete()."\<bs>":"\<bs>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
let g:neocomplete#manual_completion_start_length = 1
let g:neocomplete#auto_completion_start_length = 1
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
" let g:neocomplete#enable_insert_char_pre = 1


" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


" Define keyword.
call neocomplete#disable_default_dictionary('g:neocomplete#keyword_patterns')
call neocomplete#disable_default_dictionary('g:neocomplete#sources#member#input_patterns')
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
if !exists('g:neocomplete#sources#member#input_patterns')
  let g:neocomplete#sources#member#input_patterns = {}
endif
let g:neocomplete#keyword_patterns['_'] = '\h[[:alnum:]_:-]*'
let g:neocomplete#sources#member#input_patterns['_'] = '\h[[:alnum:]]*'
" call neocomplete#util#set_default_dictionary(
"             \'g:neocomplete#keyword_patterns',
"             \'_',
"             \'\h[[:alnum:]_:-]*')
" call neocomplete#util#set_default_dictionary(
"             \'g:neocomplete#sources#member#input_patterns',
"             \'_',
"             \'\h[[:alnum:]_:-]*')

let g:neocomplete#fallback_mappings =
            \ [ "\<C-x>\<C-n>", "\<C-x>\<C-k>",]
"===============================================================================
" Unite
"===============================================================================

" Use the fuzzy matcher for everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file,grep,line','matchers', 'matcher_fuzzy')
" Use the rank sorter for everything
" call unite#filters#sorter_default#use(['sorter_rank'])

" Set up some custom ignores
call unite#custom#source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ '\.svn/',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ 'tmp/',
      \ '.sass-cache',
      \ 'node_modules/',
      \ 'bower_components/',
      \ 'dist/',
      \ '.git5_specs/',
      \ '.pyc',
      \ ], '\|'))

" Map space to the prefix for Unite
nnoremap [unite] <Nop>
nmap <space> [unite]

" General fuzzy search
" nnoremap <silent> [unite]<space> :<C-u>Unite
"       \ -no-empty  -buffer-name=files buffer file_mru bookmark file_rec/async<CR>

" Quick registers
nnoremap <silent> [unite]r :<C-u>Unite -no-empty  -buffer-name=register register<CR>

nnoremap <silent> [unite]u :<C-u>Unite -no-empty  -buffer-name=buffers file_mru buffer<CR>
" Quick buffer and mru

" Quick yank history
nnoremap <silent> [unite]y :<C-u>Unite -no-empty  -quick-match -buffer-name=yanks history/yank<CR>

imap <buffer> <c-j> <Plug>(unite_select_next_line)
" Quick outline
nnoremap <silent> [unite]o :<C-u>Unite -no-empty  -buffer-name=outline -vertical outline<CR>

" Quick sessions (projects)
nnoremap <silent> [unite]p :<C-u>UniteWithProjectDir -no-empty -buffer-name=project file_rec:.<CR>

" Quick sources
nnoremap <silent> [unite]a :<C-u>Unite -no-empty  -buffer-name=sources source<CR>

" Quick snippet
nnoremap <silent> [unite]s :<C-u>Unite -no-empty  -buffer-name=snippets ultisnips<CR>

" Quickly switch lcd
nnoremap <silent> [unite]d
      \ :<C-u>Unite -no-empty  -buffer-name=change-cwd -default-action=cd directory_mru directory_rec/async<CR>

" Quick file search
nnoremap <silent> [unite]f :Unite -no-empty  -buffer-name=file_list file_rec/async:<c-r>=ProjectRootGuess()<CR><CR>

" Quick grep from cwd
nnoremap <silent> [unite]g :<C-u>Unite -no-empty -buffer-name=grep grep:<c-r>=ProjectRootGuess()<CR><CR>
nnoremap <silent> [unite]e :Unite -buffer-name=grep grep:<c-r>=ProjectRootGuess()<cr>::<C-r><C-w><CR>

" Quick help
nnoremap <silent> [unite]h :<C-u>Unite -no-empty  -buffer-name=help help<CR>

" Quick line
nnoremap <silent> [unite]/ :<C-u>Unite -no-empty  -buffer-name=line line<CR>

" Quick MRU search
nnoremap <silent> [unite]m :<C-u>Unite -no-empty  -buffer-name=mru file_mru<CR>

" Quick find
nnoremap <silent> [unite]n :<C-u>Unite -no-empty  -buffer-name=find find:.<CR>

" Quick commands
nnoremap <silent> [unite]c :<C-u>Unite -no-empty  -buffer-name=commands command<CR>

" Quick bookmarks
nnoremap <silent> [unite]b :<C-u>Unite -no-empty  -buffer-name=bookmarks bookmark<CR>

" Fuzzy search from current buffer
" nnoremap <silent> [unite]b :<C-u>UniteWithBufferDir
" \ -no-empty  -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>

" Quick commands
nnoremap <silent> [unite]; :<C-u>Unite -no-empty  -buffer-name=history -default-action=edit history/command command<CR>
augroup MyAutoCmd
  autocmd!
augroup END
" Custom Unite settings
autocmd MyAutoCmd FileType unite call s:unite_settings()
function! s:unite_settings()
  nmap <buffer> <ESC> <Plug>(unite_exit)
  " nmap <buffer> <ESC> <Plug>(unite_insert_enter)
  " imap <buffer> <ESC> <Plug>(unite_exit)
  imap <buffer> <c-j> <Plug>(unite_select_next_line)
  imap <buffer> <c-k> <Plug>(unite_select_previous_line)
  " imap <buffer> <ESC> <Plug>(unite_insert_leave)
  nmap <buffer> <c-j> <Plug>(unite_loop_cursor_down)
  nmap <buffer> <c-k> <Plug>(unite_loop_cursor_up)
  nmap <buffer> <tab> <Plug>(unite_loop_cursor_down)
  nmap <buffer> <s-tab> <Plug>(unite_loop_cursor_up)
  imap <buffer> <c-a> <Plug>(unite_choose_action)
  imap <buffer> <Tab> <Plug>(unite_insert_leave)
  " imap <buffer> jj <Plug>(unite_insert_leave)
  imap <buffer> <C-w> <Plug>(unite_delete_backward_word)
  imap <buffer> <C-u> <Plug>(unite_delete_backward_path)
  imap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> <C-r> <Plug>(unite_redraw)
  imap <buffer> <C-r> <Plug>(unite_redraw)
  inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
  nnoremap <silent><buffer><expr> <C-s> unite#do_action('split')
  inoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  nnoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')

  " let unite = unite#get_current_unite()
  " if unite.buffer_name =~# '^search'
  "   nnoremap <silent><buffer><expr> r     unite#do_action('replace')
  " else
  "   nnoremap <silent><buffer><expr> r     unite#do_action('rename')
  " endif
  "
  " nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')

  " Using Ctrl-\ to trigger outline, so close it using the same keystroke
  " if unite.buffer_name =~# '^outline'
  "   imap <buffer> <C-\> <Plug>(unite_exit)
  " endif

  " Using Ctrl-/ to trigger line, close it using same keystroke
  " if unite.buffer_name =~# '^search_file'
  "   imap <buffer> <C-_> <Plug>(unite_exit)
  " endif
endfunction

" Start in insert mode
let g:unite_enable_start_insert = 1

let g:unite_data_directory = "~/.unite"

" Enable short source name in window
" let g:unite_enable_short_source_names = 1

" Enable history yank source
let g:unite_source_history_yank_enable = 1

" Open in bottom right
let g:unite_split_rule = "botright"

" Shorten the default update date of 500ms
let g:unite_update_time = 200

let g:unite_source_file_mru_limit = 100
let g:unite_cursor_line_highlight = 'TabLineSel'
" let g:unite_abbr_highlight = 'TabLine'

let g:unite_source_file_mru_filename_format = ':~:.'
let g:unite_source_file_mru_time_format = ''

" For ack.
if executable('ack-grep')
  let g:unite_source_grep_command = 'ack-grep'
  let g:unite_source_grep_default_opts = '-i --no-heading --no-color -a -H'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ack')
  let g:unite_source_grep_command = 'ack'
  let g:unite_source_grep_default_opts = '--no-heading --no-color -H'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('grep')
  let g:unite_source_grep_command = 'grep'
  let g:unite_source_grep_default_opts = ''
  let g:unite_source_grep_recursive_opt = ''
endif

let g:unite_source_rec_max_cache_files = 9999
" projectroot.vim
" let g:rootmarkers = []
let g:rootmarkers = ['README','README.md','fis-conf.js','Bootstrap.php']

"===============================================================================
" Unite Sessions
"===============================================================================

" Save session automatically.
" let g:unite_source_session_enable_auto_save = 1

" Pop up session selection if no file is specified
" TODO: Why does this not work when Vim isn't run from tmux???!
" autocmd MyAutoCmd VimEnter * call s:unite_session_on_enter()
" function! s:unite_session_on_enter()
"   if !argc() && !exists("g:start_session_from_cmdline")
"     Unite -no-empty  -buffer-name=sessions session
"   endif
" endfunction

" 分语言的lint 工具配置:
"let g:syntastic_javascript_checkers=['eslint']
"let g:acp_enableAtStartup = 0
" All of your Plugins must be added before the following line
"hi Pmenusel ctermbg='white'
"hi search ctermbg=25

:colorscheme jellybeans
