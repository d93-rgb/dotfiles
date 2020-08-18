set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.

set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.

set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.

set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode.
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

"set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

set mouse=r         " Enable the use of the mouse.


" Highlight the line with a cursor
" set cursorline

" Disable cursor line highlighting in Insert mode
augroup aug_cursor_line
  au!
  au InsertEnter * setlocal nocursorline
  au InsertLeave * setlocal cursorline
augroup END

" always show status line
set laststatus=2

" airline replaces mode indicator => turn it off
set noshowmode

" delete all spaces on accidental tab
set softtabstop=4

set wildmenu

" Sets padding to the screen boundaries when scrolling up and down
set scrolloff=2

" Allow Backspace to work over indent, line endings, and start of insert. By default Backspace works only against inserted text
set backspace=indent,eol,start


" Do not warn abount unsaved changes when navigating to another buffer
set hidden

" Add @@@ marks on the last column of last line if there is more text below
set display=lastline

" Timeout of user inactivity. Used to save swap file, and by vim-gitgutter plugin
set updatetime=1000

" Disable startup message
set shortmess+=I

" Conceal text and highlight with "Conceal" highlight group
set conceallevel=2

set textwidth=0
set wrapmargin=0

" Additional <ESC> mappings:
" <C-c>, I'm so used to it after shell environment
noremap <C-C> <ESC>
xnoremap <C-C> <ESC>

" Plugins{{{
" Minimalist Vim Plugin Manager - https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug '907th/vim-auto-save'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'sstallion/vim-wtf'
  Plug 'arcticicestudio/nord-vim'
  Plug 'huyvohcmc/atlas.vim'
  Plug 'tpope/vim-obsession'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'junegunn/fzf', { 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'tpope/vim-repeat'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-surround'
  Plug 'terryma/vim-smooth-scroll'
  Plug 'tpope/vim-commentary'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'junegunn/vim-easy-align'
  Plug 'svermeulen/vim-cutlass'
  Plug 'svermeulen/vim-subversive'
  Plug 'svermeulen/vim-yoink'
  Plug 'samoshkin/vim-lastplace'
  Plug 'rhysd/clever-f.vim'
  Plug 'ryanoasis/vim-devicons'
  " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'vim-scripts/CursorLineCurrentWindow'
  Plug 'majutsushi/tagbar'
  Plug 'Raimondi/delimitMate'
  Plug 'vim-scripts/SyntaxAttr.vim'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'alvan/vim-closetag'
  Plug 'samoshkin/vim-mergetool'
  Plug 'romainl/vim-qf'
  Plug 'dyng/ctrlsf.vim'
  Plug 'RRethy/vim-hexokinase'
  Plug 'mattn/gist-vim'
  Plug 'mattn/webapi-vim'
  Plug 'MarcWeber/vim-addon-local-vimrc'

  " Languages
  Plug 'sheerun/vim-polyglot'

  " Markdown
  Plug 'suan/vim-instant-markdown'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'plasticboy/vim-markdown'

call plug#end()
syntax off

"}}}

" Color scheme{{{

" Enable true color support
if &t_Co >= 256 || has("gui_running")
  "let g:dracula_italic=0
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

  if (has("termguicolors"))
    set termguicolors
  endif
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  set guifont=DroidSansMono\ Nerd\ Font\ Mono:h14
endif

" Borrowed from https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" Fits well for dark schemes
let g:colors = {
      \ 'brown': ["#905532", 95],
      \ 'aqua': ["#3AFFDB", 86],
      \ 'blue': ["#689FB6", 73],
      \ 'darkBlue': ["#44788E", 66],
      \ 'purple': ["#834F79", 93],
      \ 'red': ["#AE403F", 131],
      \ 'darkRed': ["#97050C", 88],
      \ 'beige': ["#F5C06F", 215],
      \ 'yellow': ["#F09F17", 214],
      \ 'orange': ["#D4843E", 172],
      \ 'orange2': ["#DD5E1C", 166],
      \ 'darkOrange': ["#F16529", 202],
      \ 'pink': ["#CB6F6F", 167],
      \ 'lightGreen': ["#8FAA54", 107],
      \ 'green': ["#31B53E", 71],
      \ 'white': ["#FFFFFF", 231],
      \}

fun s:PatchDraculaScheme()
  hi! ColorColumn ctermfg=255 ctermbg=203 guifg=#F8F8F2 guibg=#FF5555

  " Show NERDTree directory nodes in yellow
  hi! __DirectoryNode cterm=bold ctermfg=214 gui=bold guifg=#E7A427
  hi! link NerdTreeDir __DirectoryNode
  hi! link NERDTreeFlags __DirectoryNode

  " Show NERDTree toggle icons as white
  hi! link NERDTreeOpenable Normal
  hi! link NERDTreeClosable Normal

  " Do not highlight changed line, highlight only changed text within a line
  hi! DiffText term=NONE ctermfg=215 ctermbg=233 cterm=NONE guifg=#FFB86C guibg=#14141a gui=NONE
  hi! link DiffChange NONE
  hi! clear DiffChange

  " dyng/ctrlsf.vim
  hi! link ctrlsfMatch DraculaOrange
  hi! link ctrlsfCuttingLine Title

  " Use a bit deeper yellow/orange color
  hi! DraculaOrange guifg=#F09F17 ctermfg=214
  hi! DraculaOrangeBold cterm=bold ctermfg=214 gui=bold guifg=#F09F17
  hi! DraculaOrangeBoldItalic cterm=bold,italic ctermfg=214 gui=bold,italic guifg=#F09F17
  hi! DraculaOrangeInverse ctermfg=236 ctermbg=214 guifg=#282A36 guibg=#F09F17
  hi! DraculaOrangeItalic cterm=italic ctermfg=214 gui=italic guifg=#F09F17

  " In Dracula theme, ALEError->DraculaErrorLine, ALEWarning->DraculaWarnLine
  " No need to set ALEStyleError and ALEStyleWarning, as they are linked to ALEError/ALEWarning
  hi! DraculaWarnLine cterm=undercurl ctermfg=214 gui=undercurl guifg=#F09F17 guisp=#F09F17
endf


" Shortcut command to 'vim-scripts/SyntaxAttr.vim'
command ViewSyntaxAttr call SyntaxAttr()

" Customime color scheme after it was loaded
augroup aug_color_scheme
  au!

  autocmd ColorScheme dracula call s:PatchDraculaScheme()
augroup END

" Apply a particular color scheme
" NOTE: Should go after 'autocmd ColorScheme' customization
set background=dark
" colorscheme dracula

augroup nord-overrides
  autocmd!
  autocmd ColorScheme nord highlight Comment guifg=#7b88a1 gui=bold
  autocmd ColorScheme nord highlight Folded guifg=#7b88a1
  autocmd ColorScheme nord highlight FoldColumn guifg=#7b88a1
augroup END

colorscheme sorcerer

" colorscheme wtf
hi Constant ctermfg=226 cterm=bold

hi Comment ctermfg=244

hi Visual ctermbg=15

hi Search ctermbg=80 ctermfg=black

hi MatchParen ctermbg=20

hi Pmenu ctermbg=56 ctermfg=7
hi PmenuSel ctermbg=7 ctermfg=0


" }}}

" Search {{{

" Case sensitivity
set ignorecase
set smartcase

" Do not highlight search results by default
" Enable incremental searching
" Stop when reaching last match, don't start over
set nohlsearch
set incsearch
set wrapscan

" Highlight both search and incremental search identically
" In dracula theme, one is green, whereas another is orange.
hi! link Search IncSearch

" Center search results
nnoremap n nzvzz
nnoremap N Nzvzz
nnoremap * *zvzz
nnoremap # #zvzz

" Individual shortcut to print total search matches count for last search
nnoremap <silent> g/ :call <SID>PrintSearchTotalCount()<CR>

" Toggle search highlighting
" Don't use :nohl, because by default searches are not highlighted
nnoremap <silent> <leader>n :set hlsearch!<cr>

" Detect when search command line is entered and left
" Detect when search is triggered by hooking into <CR>
" Inspired by https://github.com/google/vim-searchindex
augroup aug_search
  autocmd!

  " Pitfall: Works only in vim8. CmdlineEnter and CmdlineLeave appeared in vim8
  autocmd CmdlineEnter /,\? call <SID>on_search_cmdline_focus(1)
  autocmd CmdlineLeave /,\? call <SID>on_search_cmdline_focus(0)

  " Detect when search command window is entered
  autocmd CmdwinEnter *
        \ if getcmdwintype() =~ '[/?]' |
        \   silent! nmap <buffer> <CR> <CR><Plug>OnSearchCompleted|
        \ endif
augroup END

function! s:on_search_cmdline_focus(enter)
  if a:enter
    " Turn on hlsearch to highlight all matches during incremental search
    set hlsearch

    " Use <C-j> and <C-k> to navigate through matches during incremental search instead of <C-d>,<C-t>
    cmap <C-j> <C-g>
    cmap <C-k> <C-t>

    " Detect when search is triggered by hooking into <CR>
    cmap <expr> <CR> "\<CR>" . (getcmdtype() =~ '[/?]' ? "<Plug>OnSearchCompleted" : "")
  else
    " On cmdline leave, rollback all changes and mappings
    set nohlsearch

    cunmap <C-j>
    cunmap <C-k>
    cunmap <CR>
  endif
endfunction

" Define OnSearchCompleted hook
noremap  <Plug>OnSearchCompleted <Nop>
nnoremap <silent> <Plug>OnSearchCompleted :call <SID>OnSearchCompleted()<CR>

function s:OnSearchCompleted()
  " Print total search matches count
  call s:PrintSearchTotalCount()

  " Open folds in the matches lines
  " foldopen+=search causes search commands to open folds in the matched line
  " - but it doesn't work in mappings. Hence, we just open the folds here.
  if &foldopen =~# "search"
    normal! zv
  endif

  " Recenter screen for any kind of search (same as we do for n/N shortcuts)
  normal! zz
endfunction

function s:PrintSearchTotalCount()
  " Detect search direction
  let search_dir = v:searchforward ? '/' : '?'

  " Remember cursor position
  let pos=getpos('.')

  " Remember start and end marks of last change/yank
  let saved_marks = [ getpos("'["), getpos("']") ]

  try
    " Execute "%s///gn" command to capture match count for the last search pattern
    let output = ''
    redir => output
      silent! keepjumps %s///gne
    redir END

    " Extract only match count from string like "X matches on Y lines"
    let match_count = str2nr(matchstr(output, '\d\+'))

    " Compose message like "X matches for /pattern"
    let msg = l:match_count . " matches for " . l:search_dir . @/

    " Flush any delayed screen updates before printing "l:msg".
    " See ":h :echo-redraw".
    redraw | echo l:msg
  finally

    " Restore [ and ] marks
    call setpos("'[", saved_marks[0])
    call setpos("']", saved_marks[1])

    " Restore cursor position
    call setpos('.', pos)
  endtry
endfunction

" Make '*' and '#' search for a selection in visual mode
" Inspired by https://github.com/nelstrom/vim-visual-star-search
" Got Ravings?: Vim pr0n: Visual search mappings - http://got-ravings.blogspot.com/2008/07/vim-pr0n-visual-search-mappings.html
vnoremap * :<C-u>call <SID>search_from_context("/", "selection")<CR>
vnoremap # :<C-u>call <SID>search_from_context("?", "selection")<CR>

function! s:search_from_context(direction, context)
  let text = a:context ==# 'word' ? expand("<cword>") : s:get_selected_text()
  let text = substitute(escape(text, a:direction . '\'), '\n', '\\n', 'g')
  let @/ = '\V' . text

  call feedkeys(a:direction . "\<C-R>=@/\<CR>\<CR>")
endfunction

" }}}

" Clipboard{{{

" Extend built-in functionality with these plugins:
" - https://github.com/svermeulen/vim-cutlass
" - https://github.com/svermeulen/vim-subversive
" - https://github.com/svermeulen/vim-yoink

" always use system clipboard as unnamed register
set clipboard=unnamed,unnamedplus

" Normalize Y behavior to yank till the end of line
nnoremap Y y$

"}}}

" ------------------------------
" https://github.com/svermeulen/vim-yoink
" ------------------------------

" Normally cursor remains in place during paste
" Move it to the end, so it's easy to start editing
let g:yoinkMoveCursorToEndOfPaste=1

" Every time the yank history changes the numbered registers 1 - 9 will be updated to sync with the first 9 entries in the yank history
let g:yoinkSyncNumberedRegisters = 1

" Auto formatting on paste, and be able to toggle formatting on/off
" Replaces the need for 'vim-pasta' plugin
let g:yoinkAutoFormatPaste=1
nmap <leader>= <plug>(YoinkPostPasteToggleFormat)

" For integration with 'svermeulen/cutclass', so 'cut'/x operator will be added to the yank history
let g:yoinkIncludeDeleteOperations=1

" Navigation through yank ring
nmap <C-p> <plug>(YoinkPostPasteSwapBack)
nmap <C-n> <plug>(YoinkPostPasteSwapForward)

" Map p and P keys to notify yoink that paste has occurred so we can further traverse yank ring with <c-n> and <c-p>
" NOTE: vim-yoink does not supports swapping when doing paste in visual mode, so we don't add "xmap p" here
" this feature is handled separately by vim-subversive
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)

" Preserve cursor position after yank operation
nmap y <plug>(YoinkYankPreserveCursorPosition)
xmap y <plug>(YoinkYankPreserveCursorPosition)


" Folding ---------------------------------------------------------{{{

set foldenable
set foldmethod=marker
set foldlevelstart=0
set foldcolumn=1

" What triggers automatic fold opening
set foldopen-=block
set foldopen-=hor
set foldopen+=jump

" Use [z and ]z to navigate to start/end of the fold
" Use zj and zk to navigate to neighbooring folds
" Use zJ and zK to navigate to prev/next opened fold
" https://stackoverflow.com/questions/9403098/is-it-possible-to-jump-to-closed-folds-in-vim
nnoremap <silent> zJ :call <SID>NextOpenedFold('j')<CR>
nnoremap <silent> zK :call <SID>NextOpenedFold('k')<CR>

function! s:NextOpenedFold(dir)
    let cmd = 'norm!z' . a:dir
    let view = winsaveview()
    let [l0, l, open] = [0, view.lnum, 0]
    while l != l0 && !open
        exe cmd
        let [l0, l] = [l, line('.')]
        let open = foldclosed(l) < 0
    endwhile
    if !open
        call winrestview(view)
    endif
endfunction

" Remap because 'za' is highly inconvenient to type
nnoremap <leader><Space> za

" Close all folds except the one under the cursor, and center the screen
nnoremap <leader>z zMzvzz

" }}}

" Buffers and Files {{{

" Navigate buffers
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [b :bprev<CR>

" Kill buffer
nnoremap <silent> <leader>k :bd!<CR>

" Navigation over args list
nnoremap <silent> ]a :next<CR>
nnoremap <silent> [a :prev<CR>
nnoremap <silent> ]A :last<CR>
nnoremap <silent> [A :first<CR>

" Copy file basename only, file path, dirname
command! -nargs=0 CopyFileName let @+ = expand("%:t") | echo 'Copied to clipboard: ' . @+
command! -nargs=0 CopyFilePath let @+ = expand("%:p:~") | echo 'Copied to clipboard: ' . @+
command! -nargs=0 CopyFileDir let @+ = expand("%:p:~:h") | echo 'Copied to clipboard: ' . @+

" Open current directory in Finder
nnoremap <leader>F :silent exec "!open %:p:h" \| redraw!<CR>

" Scratch buffer and Eread command

" Read command output and show it in new scratch buffer
" :Eread !{system_command}
" :Eread {vim_command}
command! -nargs=1 -complete=command Eread silent call <SID>read_command_output_in_new_buffer(<q-args>)

" Capture command's output and show it in a new buffer
function! s:read_command_output_in_new_buffer(cmd)
    " Capture command output
    if a:cmd =~ '^!'
        let output = system(matchstr(a:cmd, '^!\zs.*'))
    else
        redir => output
        execute a:cmd
        redir END
    endif

    " Show in new scratch buffer
    call s:new_scratch_buffer(output, "Command: " . a:cmd)
endfunction

" Show text of list of lines in new scratch buffer
function s:new_scratch_buffer(content, ...)
    let title = get(a:, "1", "[Scratch]")
    let new_command = get(a:, "2", "enew")

    exe new_command
    let w:scratch = 1
    setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile hidden
    silent! exe "file! " . title

    " Automatically kill buffer on WinLeave
    augroup aug_scratch_autohide
        autocmd!
        execute 'autocmd WinLeave <buffer=' . bufnr('%') . '> bdelete'
    augroup END

    if type(a:content) == type([])
        call setline(1, a:content)
    else
        call setline(1, split(a:content, "\n"))
    endif
endfunction

" Smart quit window function
command QuitWindow call s:QuitWindow()
nnoremap <silent> <leader>q :QuitWindow<CR>

" Close all readonly buffers with just a "q" keystroke, otherwise "q" is used to record macros in a normal mode
nnoremap  <expr> q &readonly ? ":quit\<CR>" : "q"

" Save and quit
nnoremap <silent> <leader>w :update!<CR>
nnoremap ZZ :update! \| QuitWindow<CR>

" Save and quit for multiple buffers
nnoremap <silent> <leader>W :wall<CR>
nnoremap <silent> <leader>Q :confirm qall<CR>
nnoremap <silent> ZX :confirm xall<CR>


" Close list of windows
function s:CloseEachWindow(windows)
    " Reverse sort window numbers, start closing from the highest window number: 3,2,1
    " This is to ensure window numbers are not shifted while closing
    for _win in sort(copy(a:windows), {a, b -> b - a})
        exe _win . "wincmd c"
    endfor
endfunction

" Context-aware quit window logic
function s:QuitWindow()

    " If we're in merge mode, exit it
    if get(g:, 'mergetool_in_merge_mode', 0)
        call mergetool#stop()
        return
    endif

    " TODO: maybe use buffers instead of windows
    let l:diff_windows = s:GetDiffWindows()

    " When running as 'vimdiff' or 'vim -d', close both files and exit Vim
    if get(g:, 'is_started_as_vim_diff', 0)
        windo quit
        return
    endif

    " If current window is in diff mode, and we have two or more diff windows
    if &diff && len(l:diff_windows) >= 2
        let l:fug_diff_windows = filter(l:diff_windows[:], { idx, val -> s:IsFugitiveDiffWindow(val) })

        if s:GetFugitiveStatusWindow() != -1
            call s:CloseEachWindow(l:diff_windows)
        elseif !empty(l:fug_diff_windows)
            call s:CloseEachWindow(l:fug_diff_windows)
        else
            quit
        endif

        diffoff!
        diffoff!

        exe "norm zvzz"

        return
    endif

    quit
endfunction

" }}}

" {{{ GIT integration

" --------------------
" PLUGIN: tpope/vim-fugitive
" --------------------

" View GIT index window
nnoremap <silent> <leader>gs :Gstatus<CR>

" Use <leader>ge to return to working tree version from blob, blame, log
nnoremap <silent> <leader>ge :Gedit<CR>

" Undo changes in working tree
" nnoremap <silent> <leader>gu :Git checkout HEAD -- %:p<CR>
nnoremap <silent> <leader>gu :Gread<CR>
xnoremap <silent> <leader>gu :Gread<CR>

" Commit changes
nnoremap <silent> <leader>gca :Gcommit --all --verbose<CR>
nnoremap <silent> <leader>gcf :Gcommit --amend --reuse-message HEAD<CR>
nnoremap <silent> <leader>gcf :Gcommit --amend --verbose<CR>

" Diff working tree vs index vs HEAD
nnoremap <silent> <leader>gdw :Gdiff<CR>
nnoremap <silent> <leader>gdh :Gdiff HEAD<CR>
nnoremap <silent> <leader>gdi :Gdiff --cached HEAD<CR>

" gla, gva, list (a)ll commits
nnoremap <silent> <leader>gla :FzfCommits<CR>
nnoremap <silent> <leader>gva :GV<CR>

" glf, gvf, list commits touching current (f)ile
nnoremap <silent> <leader>glf :FzfBCommits<CR>
nnoremap <silent> <leader>gvf :GV!<CR>
xnoremap <silent> <leader>gvf :GV<CR>

" gls, gvs, list commits touching current file, but show file revisions or (s)napshots (populates quickfix list)
nnoremap <silent> <leader>gls :silent! Glog<CR><C-l>
nnoremap <silent> <leader>gvs :GV?<CR>

" glF, list commits touching current file, show full commit objects (using vim-fugitive)
nnoremap <silent> <leader>glF :silent! Glog -- %<CR><C-l>

" Change branch
nnoremap <silent> <leader>gco :Git checkout<Space>

" ------------------------------
" PLUGIN: airblade/vim-gitgutter
" ------------------------------

let g:gitgutter_terminal_reports_focus=0
let g:gitgutter_enabled = 1

nnoremap <silent> <F4> :GitGutterFold<CR>
nnoremap <silent> <leader><F4> :GitGutterBufferToggle<CR>

" Use 'd' as a motion for hunks, instead of default 'c'
" Use '[d' and ']d' to move between hunks in regular files and in diff mode
" It's easier to use 'do' and 'dp' when a finger is already on 'd' key
nmap <expr> ]d &diff ? ']czz' : '<Plug>GitGutterNextHunkzz'
nmap <expr> [d &diff ? '[czz' : '<Plug>GitGutterPrevHunkzz'

" Undo and stage diff hunks in diff and normal modes
nmap <expr> + &diff ? '<Plug>GitGutterStageHunk' : '+'
nmap <expr> - &diff ? '<Plug>GitGutterUndoHunk' : '-'
nmap <silent> <leader>hu <Plug>GitGutterUndoHunk
nmap <silent> <leader>hs <Plug>GitGutterStageHunk

" Text objects for diff hunks
omap id <Plug>GitGutterTextObjectInnerPending
omap ad <Plug>GitGutterTextObjectOuterPending
xmap id <Plug>GitGutterTextObjectInnerVisual
xmap ad <Plug>GitGutterTextObjectOuterVisual

augroup aug_git_integration
    au!

    " Move one level up with '..' when browsing tree or blob
    autocmd User fugitive
                \ if get(b:, 'fugitive_type', '') =~# '^\%(tree\|blob\)$' |
                \   nnoremap <buffer> .. :edit %:h<CR> |
                \ endif

    " Show Fugitive status window in separate tab
    autocmd BufEnter */.git/index
                \ if !exists('b:created') && get(b:, 'fugitive_type', '') == 'index' |
                \   let b:created = 1 |
                \   wincmd T |
                \ endif

    " Collapse status window when viewing diff or editing commit message
    autocmd BufLeave */.git/index call s:OnFugitiveStatusBufferEnterOrLeave(0)
    autocmd BufEnter */.git/index call s:OnFugitiveStatusBufferEnterOrLeave(1)

    " Delete fugitive buffers automatically on leave
    autocmd BufReadPost fugitive://* set bufhidden=delete

    " Disable folding in "junegunn/gv.vim" plugin buffers
    au FileType GV set nofoldenable
augroup END

" Find fugitive status window and return it's number
function s:GetFugitiveStatusWindow()
    for winnr in range(1, winnr('$'))
        if getbufvar(winbufnr(winnr), 'fugitive_type') == 'index'
            return winnr
        endif
    endfor
    return -1
endfunction

function s:OnFugitiveStatusBufferEnterOrLeave(isEnter)
    let l:fug_status_window = s:GetFugitiveStatusWindow()
    if l:fug_status_window != -1
        if a:isEnter
            " When entering, resize status window to equal widht and height
            exe l:fug_status_window . " wincmd w"
            exe "wincmd ="
        elseif !a:isEnter && winnr('$') > 1
            " When leaving, collapse status window
            exe l:fug_status_window . " wincmd w"
            exe "resize 0"
            exe "wincmd p"
        endif
    endif
endfunction

function s:IsFugitiveDiffWindow(winnr)
    return bufname(winbufnr(a:winnr)) =~ '^fugitive:' && getwinvar(a:winnr, '&diff')
endfunction

" }}}

" Snippets {{{

" 'SirVer/ultisnips' is only the snippet engine.
" Defines snippet files syntax. Understands ULtiSnips syntax and vim-snipmate (another engine) snippets

" Snippet definition files are separate and shipped by 'honza/vim-snippets'

" Do not let UltiSnips set <Tab> mapping, as we're using own smart <Tab> implementation
" Also we don't need snippet listing, as we're using fzf for this purpose
let g:UltiSnipsExpandTrigger="<NUL>"
let g:UltiSnipsListSnippets="<NUL>"
let g:UltiSnipsEditSplit = 'context'

" Find available snippets from Insert mode using fzf
" Use :UltiSnipsEdit(!) command to edit private(all) snippet definition file
inoremap <silent> <F9> <ESC>:FzfSnippets<CR>
nnoremap <silent> <F9> :UltiSnipsEdit!<CR>
" }}}

" Misc{{{

" Expand '%%' and '##' for current/alternate files in command line
" This is useful for commands that do not understand %%
cnoremap %% <C-R>=fnameescape(expand('%'))<cr>
cnoremap ## <C-R>=fnameescape(expand('#'))<cr>

" Apply '.' repeat command for selected each line in visual mode
vnoremap . :normal .<CR>

" Get visually selected text
" FIXME: should not change cursor position
function! s:get_selected_text()
  try
    let regb = @z
    normal! gv"zy
    return @z
  finally
    let @z = regb
  endtry
endfunction

" Set option using set or setlocal, be it string or boolean value
function s:set_option(option, value, ...)
  let isLocal = get(a:, "1", 0)
  let isBoolean = get(a:, "2", 0)
  if isBoolean
    exe (isLocal ? "setlocal " : "set ") . (a:value ? "" : "no") . a:option
  else
    exe (isLocal ? "setlocal " : "set ") . a:option . "=" . a:value
  endif
endfunction

" Echo warning message with highlighting enabled
function s:echo_warning(message)
  echohl WarningMsg
  echo a:message
  echohl None
endfunction

function s:Noop()
endfunction

" Resolves variable value respecting window, buffer, global hierarchy
function s:get_var(...)
  let varName = a:1

  if exists('w:' . varName)
    return w:{varName}
  elseif exists('b:' . varName)
    return b:{varName}
  elseif exists('g:' . varName)
    return g:{varName}
  else
    return exists('a:2') ? a:2 : ''
  endif
endfunction

"}}}

" PLUGIN: Airline {{{

" Do not use default status line
set noshowmode

" Do not use powerline arrows, it looks not serious
let g:airline_powerline_fonts = 0

let g:airline_skip_empty_sections = 1

" Do not show spell language indicator, show only spell/nospell
let g:airline_detect_spelllang=0

" Disable some icons in lune number section_z to reduce length
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr=''
let g:airline_symbols.maxlinenr=''
let g:airline_symbols.space=' '

let s:spc = g:airline_symbols.space

" Extensions
"
" Disable airline default extension, as we want to customize output:
" - obsession (btw, it does not work for some reason)
" - gutentags
" - tagbar
let g:airline#extensions#obsession#enabled=0
" let g:airline#extensions#gutentags#enabled = 0
let g:airline#extensions#tagbar#enabled = 0

" Extension: obsession
function! GetObsessionStatus()
    return ObsessionStatus('ⓢ' . s:spc, '')
endfunction

call airline#parts#define_function('_obsession', 'GetObsessionStatus')
call airline#parts#define_accent('_obsession', 'bold')

" Extension: gutentags
" function! GetGutentagStatusText(mods) abort
"     let l:msg = ''
"
"     " Show indicator when tags are enabled
"     if g:gutentags_enabled
"         let l:msg .= 'ⓣ' . s:spc
"     endif
"
"     " Show indicator when tag generation is in progress
"     if index(a:mods, 'ctags') >= 0
"         let l:msg = '~' . l:msg
"     endif
"
"     return l:msg
" endfunction

" function! AirlineGutentagsPart()
"     return gutentags#statusline_cb(function('GetGutentagStatusText'), 1)
" endfunction
"
" call airline#parts#define_function('_gutentags', 'AirlineGutentagsPart')
" call airline#parts#define_accent('_gutentags', 'bold')

" Extension: Diff or merge indicator
function! AirlineDiffmergePart()
    if get(g:, 'mergetool_in_merge_mode', 0)
        return '↸' . s:spc . s:spc
    endif

    if &diff
        return '↹' . s:spc . s:spc
    endif

    return ''
endfunction

call airline#parts#define_function('_diffmerge', 'AirlineDiffmergePart')
call airline#parts#define_accent('_diffmerge', 'bold')

" Extension: Autosave indicator
function! AirlineAutosavePart()
    return s:get_var('auto_save', 0) ? '' . s:spc : ''
endfunction

call airline#parts#define_function('_autosave', 'AirlineAutosavePart')

" Modified indicator
" Show only modified [+] indicator colored, not the whole file name
call airline#parts#define_raw('modified', '%m')
call airline#parts#define_accent('modified', 'orange')

" Extension: 'ffenc'
" Do not show default encoding. Show only when does not match given string
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Extensions: hunks
let g:airline#extensions#hunks#non_zero_only = 1

" Buffer number, show only for diff windows
" NOTE: use define_function() instead of define_raw() because raw does not work with condition
function! AirlineBufnrPart()
    return bufnr('') . ':'
endfunction

call airline#parts#define_function('bufnr', 'AirlineBufnrPart')
call airline#parts#define_condition('bufnr', "&diff")

" Extension: scratch buffer indicator
" Indicator to tell if this is a scratch buffer
" Show indicator only in NORMAL mode
function! AirlinsScratchBufferIndicatorPart()
    if &buftype ==# 'nofile' && (&bufhidden ==# 'wipe' || &bufhidden ==# 'delete') && !buflisted(bufnr('%'))
        return 'Scratch'
    endif

    return ''
endfunction

call airline#parts#define_function('scratch', 'AirlinsScratchBufferIndicatorPart')
call airline#parts#define_condition('scratch', "mode() ==# 'n'")

" Extension: word count
" Do not show live word count
let g:airline#extensions#wordcount#enabled = 0

" Extensions: whitespace
let g:airline#extensions#whitespace#checks = ['indent', 'trailing', 'mixed-indent-file']
let g:airline#extensions#whitespace#trailing_format = 't[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'i[%s]'
let g:airline#extensions#whitespace#mixed_indent_file_format = 'i[%s]'

" Airline sections customization
let g:airline_section_a = airline#section#create_left(['mode', 'scratch', 'crypt', 'paste', 'keymap', 'spell', 'capslock', 'xkblayout', 'iminsert'])
let g:airline_section_z = airline#section#create(['_autosave', '_diffmerge', '_obsession', '%3p%% ', 'linenr', ':%3v'])
let g:airline_section_c = airline#section#create(['bufnr', '%<', '%f', 'modified', ' ', 'readonly'])

" Tell at which window width sections are shrinked
let g:airline#extensions#default#section_truncate_width = get(g:, 'airline#extensions#default#section_truncate_width', {
            \ 'b': 80,
            \ 'x': 60,
            \ 'y': 80,
            \ 'z': 45,
            \ 'warning': 80,
            \ 'error': 80,
            \ })

" Patch airline theme

" Default theme
let g:airline_theme='jellybeans'
let g:airline_theme_patch_func = 'AirlineThemePatch'

" Do not change coloring of section 'c' and 'x' in visual, replace, insert modes
" Add additional accent colors for status line icons
function! AirlineThemePatch(palette)
    let a:palette.insert.airline_x = a:palette.normal.airline_x
    let a:palette.insert.airline_c = a:palette.normal.airline_c

    let a:palette.replace.airline_x = a:palette.normal.airline_x
    let a:palette.replace.airline_c = a:palette.normal.airline_c

    let a:palette.visual.airline_x = a:palette.normal.airline_x
    let a:palette.visual.airline_c = a:palette.normal.airline_c

    " Reminder on palette values: [ guifg, guibg, ctermfg, ctermbg, opts ].
    " let a:palette.accents = get(a:palette, 'accents', {})

    " Do not highlight whole modified file. I want to hihglight only [+] modified indicator
    silent! unlet a:palette.normal_modified
    silent! unlet a:palette.replace_modified
    silent! unlet a:palette.visual_modified
    silent! unlet a:palette.insert_modified
    silent! unlet a:palette.inactive_modified

endfunction

" Hide sections on the right for inactive window, same as we do for left sections
function! PatchInactiveStatusLine(...)
    call setwinvar(a:2.winnr, 'airline_section_z', '')
    call setwinvar(a:2.winnr, 'airline_section_y', '')
endfunction
call airline#add_inactive_statusline_func('PatchInactiveStatusLine')

"Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#tabs_label = 't'

" Disable fancy powerline arrows
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" Buffers (disable, Tabline makes sense only for tabs IMO)
let g:airline#extensions#tabline#show_buffers = 0

" }}}

" PLUGIN: NERDTree {{{

" Automatically close tree after file is opened from it
let NERDTreeQuitOnOpen=1
"autocmd BufReadPre,FileReadPre * :NERDTreeClose

" Sort files with numbers naturally
let NERDTreeNaturalSort=1

" Show hidden files by default
let NERDTreeShowHidden=1

" Minimal UI, do not show bookmarks and help blocks
let NERDTreeMinimalUI=1

" Increase tree explorer split a bit (default is 31)
let NERDTreeWinSize=40

" Automatically delete buffer when file is deleted from the tree explorer
let NERDTreeAutoDeleteBuffer=1

" Locate current file in a tree
noremap  <F2> :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

augroup aug_nerd_tree
    au!

    " Auto launch tree when vim is run with directory as argument
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

    " Exit vim when the only buffer remaining is NerdTree
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " Use arrow keys to navigate
    autocmd FileType nerdtree nmap <buffer> l o
    autocmd FileType nerdtree nmap <buffer> L O
    autocmd FileType nerdtree nmap <buffer> h p
    autocmd FileType nerdtree nmap <buffer> H P

    " Disable cursorline in NERDtree to avoid lags
    " built-in g:NERDTreeHighlightCursorline does not work
    autocmd FileType nerdtree setlocal nocursorline
augroup END

" Open and preview in splits
let g:NERDTreeMapOpenSplit="s"
let g:NERDTreeMapPreviewSplit="S"
let g:NERDTreeMapOpenVSplit="v"
let g:NERDTreeMapPreviewVSplit="V"

" Open and preview in current window
let g:NERDTreeMapActivateNode="o"
let g:NERDTreeMapPreview="O"

" Instead of "I" default mapping (D for dotfiles)
let g:NERDTreeMapToggleHidden="D"

" Do not show '.git' directories, in addition to what specified in .gitignore
let NERDTreeIgnore=['\~$', '^\.git$[[dir]]']

" Tweak status line, so it shortens path if it's under HOME directory
let g:NERDTreeStatusline="%{exists('b:NERDTree')? fnamemodify(b:NERDTree.root.path.str(), ':p:~') :''}"

" }}}

" Plugin: ryanoasis/vim-devicons {{{
" Do not show brackets around icons in NERDTree
let g:webdevicons_conceal_nerdtree_brackets = 1

" Show icons for directories
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

" Use different icons for opened and closed folder
let g:DevIconsEnableFoldersOpenClose = 1

" Do not put extra whitespace before icon
let g:WebDevIconsNerdTreeBeforeGlyphPadding=''

" Do not overwrite airline.section_y with custom fileformat indicator
" BUG: unfortunately, vim-devicons overrites section instead of appending
let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0

" Disable for tabline. Distract too much
let g:webdevicons_enable_airline_tabline = 0

" Colorize devicons
let g:devicons_colors = {
            \ 'brown': ['', '', ''],
            \ 'aqua': [''],
            \ 'blue': ['', '', '', '', '', '', '', '', '', '', '', '', '', '', ''],
            \ 'purple': ['', '', '', '', '', '', ''],
            \ 'red': ['', '', '', '', '', ''],
            \ 'beige': ['', '', '', ''],
            \ 'yellow': ['', '', 'λ', ''],
            \ 'orange': ['', '', ''],
            \ 'darkOrange': ['', '', '', ''],
            \ 'pink': ['', ''],
            \ 'green': ['', '', '', '', '', '', '', ''],
            \ 'white': ['', '', '', '', ''],
            \ }

augroup aug_vim_devicons
    au!

    " Apply devicons coloring only for NERDtree buffer
    for color in keys(g:devicons_colors)
        exec 'autocmd FileType nerdtree syntax match devicons_' . color . ' /\v' . join(g:devicons_colors[color], '.|') . './ containedin=ALL'
        exec 'autocmd FileType nerdtree highlight devicons_' . color . ' guifg=' .g:colors[color][0] . ' ctermfg=' . g:colors[color][1]
    endfor
augroup END

" From FAQ: How do I solve issues after re-sourcing my vimrc?
if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif

" }}}

