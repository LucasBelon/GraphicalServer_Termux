let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/GraphicalServer_Termux/Licoes/Licao03
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 Licao03.gnplot
badd +1 Licao03.txt
badd +1 Resumo.gnplot
badd +1 dados.py
badd +1 dados_py.dat
argglobal
%argdel
$argadd Licao03.gnplot
$argadd Licao03.txt
$argadd data.csv
$argadd data.dat
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit Licao03.txt
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 19 + 17) / 35)
exe 'vert 1resize ' . ((&columns * 70 + 50) / 100)
exe '2resize ' . ((&lines * 19 + 17) / 35)
exe 'vert 2resize ' . ((&columns * 29 + 50) / 100)
exe '3resize ' . ((&lines * 12 + 17) / 35)
argglobal
if bufexists(fnamemodify("Licao03.txt", ":p")) | buffer Licao03.txt | else | edit Licao03.txt | endif
balt Licao03.gnplot
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("Licao03.gnplot", ":p")) | buffer Licao03.gnplot | else | edit Licao03.gnplot | endif
balt Licao03.txt
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 14 - ((4 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 09|
wincmd w
argglobal
if bufexists(fnamemodify("Resumo.gnplot", ":p")) | buffer Resumo.gnplot | else | edit Resumo.gnplot | endif
balt Licao03.txt
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 19 + 17) / 35)
exe 'vert 1resize ' . ((&columns * 70 + 50) / 100)
exe '2resize ' . ((&lines * 19 + 17) / 35)
exe 'vert 2resize ' . ((&columns * 29 + 50) / 100)
exe '3resize ' . ((&lines * 12 + 17) / 35)
tabnext
edit dados.py
argglobal
if bufexists(fnamemodify("dados.py", ":p")) | buffer dados.py | else | edit dados.py | endif
balt Licao03.txt
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
14
normal! zo
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext
edit dados_py.dat
argglobal
if bufexists(fnamemodify("dados_py.dat", ":p")) | buffer dados_py.dat | else | edit dados_py.dat | endif
balt dados.py
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 1
set stal=1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
