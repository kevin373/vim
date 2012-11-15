runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" TagList 配置
let Tlist_Ctags_Cmd='/bin/ctags'  
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=18
let Tlist_Use_Horiz_Window=0


" CTags配置
set tags=tags;    "; 不能没有
set autochdir


" WinManager配置
let g:winManagerWindowLayout='FileExplorer|BufExplorer'  " 这里可以设置为多个窗口, 如'FileExplorer|BufExplorer|TagList'
let g:persistentBehaviour=0             " 只剩一个窗口时, 退出vim.
let g:winManagerWidth=20
let g:defaultExplorer=1
nmap <silent> <leader>fir :FirstExplorerWindow<cr>
nmap <silent> <leader>bot :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr>

" cscope配置
if has("cscope")
       set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
       " check cscope for definition of a symbol before checking ctags:
       " set to 1 if you want the reverse search order.
       set csto=1
       " add any cscope database in current directory
       if filereadable("cscope.out")
       		cs add cscope.out
       " else add the database pointed to by environment variable
       elseif $CSCOPE_DB !=""
       		cs add $CSCOPE_DB
       endif
       " show msg when any other cscope db added
       set cscopeverbose
       nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
       nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
       nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
       nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
       nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
       nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
       nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<C
       nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif
