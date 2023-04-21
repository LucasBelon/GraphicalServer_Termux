<<Primeiro_passo
Baixar o VNC Viewer.
$ pkg install vncserver
Primeiro_passo

<<Segundo_passo : Habilitar repositorio X11.
$ pkg install x11-repo
(Para desabilitar uninstall x11-repo)
Segundo_passo

<<Terceiro_passo 
instalar e iniciar um servidor vnc
$ pkg install tigervnc
$ vncserver -localhost # Esse é o comando para deixar ligado o servidor.
Criar senha e armazenar em lugar seguro.
Maximo de 8 caracteres na senha.
$ export DISPLAY=":1"
Para saber qual o endereço de conexao do vncviewer
127.0.0.1:5901 para display 1.
127.0.0.1:5902 para display 2.

No campo NAME: Termux.

Senha: 12345678

Já tá lá o servidor, ativo o tempo todo (Depois eu mato ele)
Agora vou precisar de um gerenciador de janelas e um ambiente grafico.
Vou primeiro instalar um ambiente grafico.
Terceiro_passo

<<Quarto_passo
Gerenciador de janelas.
$ pkg install xfce4
O arquivo ~/.vnc/xstartup deve conter apenas
# !/data/data/com.termux/files/usr/bin/sh
xfce4-session &

Pacotes adicionais
netsurf, web browser simplão
xfce4-terminal, emulador de terminal

Nao foi preciso o gerenciador de janelas
Quarto_passo

pkg install vncserver x11-server tigervnc xfce4
vncserver -localhost
export DISPLAY=":1"
