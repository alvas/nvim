set autoindent
set expandtab
set foldmethod=manual
set go-=T
set hlsearch
set incsearch
set mouse=a
set nofoldenable
set number
set ruler
set shiftwidth=4
set smartindent
set softtabstop=4
set ts=4
set spelllang=en_us


filetype on
filetype plugin on
filetype indent on

syntax enable

"NERDTree and Tlist key binding
let Tlist_Use_Right_Window=1
" map <F2> :NERDTree<CR>
" map <F3> :Tlist<CR>

" tagbar
let tagbar_right=1
let tagbar_width=32
let g:tagbar_compact=1

let g:tagbar_type_cpp = {
        \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
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

" PATHGEN CONFIGURATION
set runtimepath^=~/.vim/bundle/ctrlp.vim
" execute pathogen#infect()

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif
"colorscheme solarized

"change <leader> from '\' to ','
let mapleader = ","

nmap <silent> <leader>jj :NERDTree .<CR>
nmap <silent> <leader>hh :NERDTreeToggle<CR>
nmap <silent> <leader>mm :OpenBookmark 
nmap <silent> <leader>bm :Bookmark<CR>
nmap <silent> <leader>dm :ClearBookmarks<CR>
nmap <silent> <leader>ll :TagbarToggle<CR>
" select the current editing file node in NERDTree
nmap <silent> <leader>rr :NERDTreeFind<CR>

" nmap <silent> <leader>mm :MBEToggle<CR>
nmap <silent> <leader>nt :tabnew<CR>
nmap <silent> <leader>tt :terminal<CR>

" search
map <silent> <leader>ss :CtrlSF<CR>

" winmanager setting, but this plugin is buggy
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"let g:bufExplorerMaxHeight = 30
"let g:miniBufExplorerMoreThanOne = 0
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
"nmap <silent> <leader>wm :WMToggle<cr> 

" LOOKUPFILE SETTING
let g:LookupFile_MinPatLength = 2
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_AllowNewFiles = 0
nmap <silent> <leader>lt :LUTags<cr>
nmap <silent> <leader>lb :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>

"vim configuration shortcut
nnoremap <silent> <leader>cf :vsplit $MYVIMRC<cr>
nnoremap <silent> <leader>sf :source $MYVIMRC<cr>
nnoremap <silent> <leader>mks :mks! session.vim<cr>
nnoremap <silent> <leader>lds :source session.vim<cr>

"insert current date and time
"nmap <silent> <leader>dd :r !date "+\%Y-\%m-\%d \%H:\%M:\%S"<cr>
nmap <silent> <leader>dd :r !date "+\%Y-\%m-\%d"<cr>

" cscope
" nmap <silent> <leader>c :!cscope -bcqR<cr>
nmap <silent> <leader>dbg :cs add ~/workdir/cscope.out<cr>
nmap <silent> <leader>dbl :cs add ./cscope.out<cr>
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" cscope quickfix
set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
nnoremap <silent> <leader>co :copen<cr> <bar>
nnoremap <silent> <leader>cx :cclose<cr>

" TMUX
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" buffer explorer
" normal open: <silent> <leader>be 
" toggle open/close: <silent> <leader>bt 
" force horizontal split : <silent> <leader>bs 
" force vertical split : <silent> <leader>bv 
"
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>


" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
" Plugin 'Lokaltog/vim-easymotion'
"Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Mizuchi/STL-Syntax.git'
"Plugin 'Shougo/neocomplcache'
"Plugin 'Shougo/neocomplete.vim.git'
"Plugin 'Shougo/neosnippet'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'bling/vim-airline'
"Plugin 'bling/vim-bufferline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'fholgado/mjlanzarotta
Plugin 'jlanzarotta/bufexplorer'
Plugin 'flazz/vim-colorschemes'
"Plugin 'garbas/vim-snipmate'
"Plugin 'gcmt/wildfire.vim'
Plugin 'godlygeek/tabular'
"Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'kana/vim-textobj-indent'
"Plugin 'kana/vim-textobj-user'
"Plugin 'kristijanhusak/vim-multiple-cursors'
"Plugin 'matchit.zip'
"Plugin 'mattn/gist-vim'
" Plugin 'mattn/webapi-vim'
"Plugin 'mbbill/undotree'
"Plugin 'mhinz/vim-signify'
" Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'osyo-manga/vim-over'
" <silent> <leader>cc: comment code; <silent> <leader>cu: uncomment code
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
" Plugin 'spf13/vim-colors'
"Plugin 'tacahiroy/ctrlp-funky'
"Plugin 'tomtom/tlib_vim'
"Plugin 'tpope/vim-abolish.git'
"Plugin 'tpope/vim-commentary'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-surround'
" Plugin 'vim-scripts/a.vim'
" Plugin 'vim-scripts/restore_view.vim'
" Plugin 'vim-scripts/sessionman.vim'
" Plugin 'yegappan/grep.git'
" Plugin 'yegappan/greplace'
Plugin 'majutsushi/tagbar'
Plugin 'kshenoy/vim-signature'
Plugin 'dyng/ctrlsf.vim'
" Plugin 'ycm-core/YouCompleteMe'
" :TemplateHere *.leetcode 
Plugin 'aperezdc/vim-template.git'
" :DirDiff dir1 dir2
Plugin 'will133/vim-dirdiff.git'
Plugin 'alvan/vim-closetag.git'
Plugin 'lervag/vimtex'
Plugin 'vhdirk/vim-cmake'
" Plugin 'skywind3000/asyncrun.vim'
" Plugin 'gilligan/vim-lldb'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'Yggdroot/indentLine'
Plugin '907th/vim-auto-save'
" Plugin 'gabrielelana/vim-markdown'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'iamcco/markdown-preview.nvim'
" Plugin 'vim-scripts/DoxygenToolkit.vim'
" Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'craigemery/vim-autotag'
" Plugin 'ervandew/supertab'
" Plugin 'luochen1990/rainbow'
" Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Plugin 'prabirshrestha/vim-lsp'
" Plugin 'mattn/vim-lsp-settings'
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

" Plugin 'neoclide/coc.nvim', {'branch': 'release'}

Plugin 'tpope/vim-dispatch'
Plugin 'vimwiki/vimwiki'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
" Plugin 'neovim/nvim-lspconfig'

" <leader>ww in one window and <leader>ww in another window would switch them
Plugin 'wesQ3/vim-windowswap'

" ,di to start DrawIt
" ,ds to stop DrawIt
" ctrl + v to select visual vertical block and ,b to draw a box, ,e to draw an eclipse
" R: replace more than one character, until ECS is pressed
Plugin 'vim-scripts/drawit'

"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


" auto save session
let g:session_autoload = 'no'

set clipboard=unnamed

let g:email='qingyun.oracle@gmail.com'
let g:ycm_server_python_interpreter='/usr/local/bin/python'

inoremap ,, <esc>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
nnoremap <leader>p "+p
nnoremap <leader>y "+y

nnoremap <leader>json :%!python -m json.tool<CR>

" !!! this piece of configuration mess up the .vimrc config
" auto save folding
" augroup remember_folds
"  autocmd!
"  au BufWinLeave ?* mkview 1
"  au BufWinEnter ?* silent! loadview 1
" augroup END

set enc=utf-8

" vertical terminal
" split | terminal<CR>
" or vs | te
" enter normal mode in terminal to scroll screen
" <C-\><C-N>

" source ~/.vimrc_public
"

" enable autosave  on vim startup
let g:auto_save = 1 
let g:tex_flavor = 'latex'

" Add documentation
nmap <silent> <leader>d :Dox<cr>


" markdown preview configuration start
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = '127.0.0.1:8888'

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'chromium'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
" markdown preview configuration end
"

" vim-instant-markdown
"Uncomment to override defaults:
filetype plugin on
"let g:instant_markdown_browser = "firefox --new-window"
"let g:instant_markdown_slow = 1
"let g:instant_markdown_autostart = 1
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
"let g:instant_markdown_python = 1

" header file location
set path=$PWD/**,/usr/include/**,/usr/src/linux/**

" Coc doesn't work because nodejs segment fault
" let g:coc_node_path = '/usr/bin/node'
"

let g:rainbow_active = 1

"if executable('pyls')
"    " pip install python-language-server
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'pyls',
"        \ 'cmd': {server_info->['pyls']},
"        \ 'allowlist': ['python'],
"        \ })
"endif
"
"function! s:on_lsp_buffer_enabled() abort
"    setlocal omnifunc=lsp#complete
"    setlocal signcolumn=yes
"    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"    nmap <buffer> gd <plug>(lsp-definition)
"    nmap <buffer> gs <plug>(lsp-document-symbol-search)
"    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"    nmap <buffer> gr <plug>(lsp-references)
"    nmap <buffer> gi <plug>(lsp-implementation)
"    nmap <buffer> gt <plug>(lsp-type-definition)
"    nmap <buffer> <leader>rn <plug>(lsp-rename)
"    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"    nmap <buffer> K <plug>(lsp-hover)
"    inoremap <buffer> <expr><c-f> lsp#scroll(+4)
"    inoremap <buffer> <expr><c-d> lsp#scroll(-4)
"
"    let g:lsp_format_sync_timeout = 1000
"    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
"    
"    " refer to doc to add more commands
"endfunction
"
"augroup lsp_install
"    au!
"    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
"augroup END


" relative hybrid number toggle on/off
nnoremap <silent> <leader>nu :set nu! rnu!<cr>

" vim-dispatch
nnoremap <silent> <leader>mk :Dispatch! make
nnoremap <silent> <leader>do :Copen<cr>
nnoremap <silent> <leader>dp :Dispatch!
nnoremap <silent> <leader>bb :make %<<cr>
nnoremap <silent> <leader>uu :!./%<<cr>

" open man page; shortcut: <leader>K
" or use :Man 3 printf
runtime! ftpplugin/man.vim


" vimwiki
" <leader>ww open default wiki index file
" <leader>wt open default wiki index file in a new tab
" <leader>ws select and open wiki index file
" <leader>wd delete wiki fiel you are in
" <leader>wr rename wiki file you are in
" <Enter> folow/create wiki link
" <Shift-Enter> split and follow/create wiki link 
" <Ctrl-Enter> vertical split and follow/create wiki link
" <Backspace> go back to parent(previous) wiki link
" <Tab> find next wiki link
" <Shift-Tab> find preivous wiki link
set nocompatible
filetype plugin on
syntax on
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext=1
nnoremap <silent> <leader>txt :set filetype=txt<cr>
nnoremap <silent> <leader>wiki :set filetype=vimwiki<cr>

" colorscheme elflord
" colorscheme desert
" colorscheme peachpuff

colorscheme google

" insert mode forward charater deletion
inoremap <c-g> <del>
" delete word after cursor in insert mode
inoremap <C-e> <C-o>de

" convert word before cursor to upper/lower case
inoremap <c-p> <esc>mzgUiw`za
inoremap <c-l> <esc>mzguiw`za

" shortcut to show buffer #
nnoremap <silent> <leader># :echo bufnr("%")<cr>

" grep word under cursor in curreent buffer and save output to a file
nnoremap <silent> <leader>ex :!grep <c-r><c-w> "%" > <c-r><c-w>.txt<cr>

" toggle on/off buffer modifiable
" :set nomodifiable, turn off buffer modifiable
" shortcut to check buffer is modifiable
nnoremap <silent> <leader>mod :set modifiable!<cr> <bar> :set modifiable?<cr>

" copy current buffer file name to register *
nnoremap <silent> <leader>fn :let @*=expand("%")<cr>

" renamp vimwiki index shortcut to avoid conflict with vim-windowswap
nnoremap <silent> <leader>wx <Plug>VimwikiIndex

nnoremap <silent> <leader>pwd :pwd<cr>

" make cursor blinking
set guicursor=a:blinkon100

nnoremap <silent> <leader>gd :let @z=getcwd()<cr>
nnoremap <silent> <leader>fd :let @y=expand("%:p:h")<cr>


