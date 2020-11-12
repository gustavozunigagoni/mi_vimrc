set number 				"adiciona los los numeros de lines
set mouse=a 				"activa que se pueda posicionar con el mouse
set numberwidth=1 			"activa el ancho de la columna de numeros
set clipboard=unnamed 			"activa el clipboard en el caso de usar copiar con el teclado
syntax enable 				"activa la sintaxis para dar color a los diferentes comandos del texto
set showcmd 				"El comando showcmd se usa para mostrar los comandos que ingresa en el archivoy la posicion.
set ruler				"muestra la regla de trabajo
set encoding=utf-8			"define la codificacion del archivo
set showmatch				"muestra las ligas entre los parentesis sin necesidad de usar el %
set sw=6				"en lugar se usar tab usa espacios y en este caso usa 6 espacios
set relativenumber			"en donde se encuentre el cursor sera la linea cero y contara para arriba y para abajo desde esta linea
set laststatus=2			"activa la barra en la parte inferior de vim
"set noshowmode				"modos desactivados

call plug#begin ('~/.vim/pugged')

"Temas
Plug 'ParamagicDev/vim-medic_chalk'

"IDE
Plug 'easymotion/vim-easymotion'	"este plugin es para moverse rapidamente buscando dos caracteres despues de usar espacio s 
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'   "este plug se usa para poder navegar entre pantallas abiertas usando contro l o h 
Plug 'terryma/vim-multiplecursors'

call plug#end()

colorscheme medic_chalk			"esta el la plantilla que se usa

let  NERDTreeQuitOnOpen=1		"esta opcion es para que el arbol de archivos se cierre en el momento de escoger un archivo

let mapleader=" "

nmap <leader>s <Plug>(easymotion-s2) 	"esta es una llave rapida para poder moverse con espaciadora s y dos caracteres de busqueda w
nmap <leader>nt :NERDTreeFind<CR>       "esta es la combinacion de teclas para que se ejecute el arbol de archivos y directorios
nmap <leader>w :w<CR>			"esta es una llave rapuda para poder gravar con solo espaciadora y w
nmap <leader>q :q<CR> 			"esta es una llave rapida para poder salir solo con espaciadora y q
