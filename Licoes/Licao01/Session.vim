let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/GraphicalServer/Licoes/Licao01
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 Licao01.gnplot
badd +1 Licao01.txt
badd +1 data.csv
badd +1 data.dat
badd +1 data2.csv
badd +1 dataImg.png
badd +1 input.graph
argglobal
%argdel
$argadd Licao01.gnplot
$argadd Licao01.txt
$argadd data.csv
$argadd data.dat
$argadd data2.csv
$argadd dataImg.png
$argadd input.graph
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit Licao01.txt
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 50 + 50) / 100)
exe 'vert 2resize ' . ((&columns * 49 + 50) / 100)
argglobal
if bufexists(fnamemodify("Licao01.txt", ":p")) | buffer Licao01.txt | else | edit Licao01.txt | endif
balt Licao01.gnplot
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
wincmd w
argglobal
if bufexists(fnamemodify("Licao01.gnplot", ":p")) | buffer Licao01.gnplot | else | edit Licao01.gnplot | endif
balt Licao01.txt
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
wincmd w
exe 'vert 1resize ' . ((&columns * 50 + 50) / 100)
exe 'vert 2resize ' . ((&columns * 49 + 50) / 100)
tabnext
edit data.csv
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 16 + 17) / 35)
exe 'vert 1resize ' . ((&columns * 50 + 50) / 100)
exe '2resize ' . ((&lines * 15 + 17) / 35)
exe 'vert 2resize ' . ((&columns * 50 + 50) / 100)
exe '3resize ' . ((&lines * 16 + 17) / 35)
exe 'vert 3resize ' . ((&columns * 49 + 50) / 100)
exe '4resize ' . ((&lines * 15 + 17) / 35)
exe 'vert 4resize ' . ((&columns * 49 + 50) / 100)
argglobal
if bufexists(fnamemodify("data.csv", ":p")) | buffer data.csv | else | edit data.csv | endif
balt Licao01.txt
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("data2.csv", ":p")) | buffer data2.csv | else | edit data2.csv | endif
balt data.csv
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("data.dat", ":p")) | buffer data.dat | else | edit data.dat | endif
balt data.csv
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("input.graph", ":p")) | buffer input.graph | else | edit input.graph | endif
balt data.dat
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 16 + 17) / 35)
exe 'vert 1resize ' . ((&columns * 50 + 50) / 100)
exe '2resize ' . ((&lines * 15 + 17) / 35)
exe 'vert 2resize ' . ((&columns * 50 + 50) / 100)
exe '3resize ' . ((&lines * 16 + 17) / 35)
exe 'vert 3resize ' . ((&columns * 49 + 50) / 100)
exe '4resize ' . ((&lines * 15 + 17) / 35)
exe 'vert 4resize ' . ((&columns * 49 + 50) / 100)
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
