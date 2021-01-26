"adiciona los los ntumeros de lines
set number

"activa que se pueda posicionar con el mouse
set mouse=a

"activa el ancho de la columna de numeros
set numberwidth=1

"activa el clipboard en el caso de usar copiar con el teclado
set clipboard=unnamed

"activa la sintaxis para dar color a los diferentes comandos del texto
syntax enable

"El comando showcmd se usa para mostrar los comandos que ingresa en el archivoy la posicion.
set showcmd

"muestra la regla de trabajo
set ruler

"define la codificacion del archivo
set encoding=utf-8

"muestra las ligas entre los parentesis sin necesidad de usar el %
set showmatch

"en lugar se usar tab usa espacios y en este caso usa 6 espacios
set sw=6

"en donde se encuentre el cursor sera la linea cero y contara para arriba y para abajo desde esta linea y cin la opcion number la linea en donde se esta da el numero real
set number relativenumber

"activa la barra en la parte inferior de vim
set laststatus=2

"modos desactivado
"set noshowmode

"inserta espacios cada ves que se utiliza tab
:set tabstop=4 shiftwidth=4 expandtab

"numero de espacio que se pondran cada vez que se presione tab
:set expandtab

"poner un catacter como sustituto del spacio
set list
set lcs=space:_

"Para cambiar el número de caracteres de espacio insertados para la sangría, use la opción 'shiftwidth':

call plug#begin ('~/.vim/pugged')

"Temas
Plug 'ParamagicDev/vim-medic_chalk'

"IDE

"este plugin es para moverse rapidamente buscando dos caracteres despues de usar espacio s 
Plug 'easymotion/vim-easymotion'

"este es el plug que se usa para presentar archivos y directorios en un arboll
Plug 'scrooloose/nerdtree'

"este plug se usa para poder navegar entre pantallas abiertas usando contro l o h 
Plug 'christoomey/vim-tmux-navigator'

"este es un plug para la crecion de comentarios
Plug 'preservim/nerdcommenter'

"Plus para marcadores de sangria
Plug 'Yggdroot/indentLine'

call plug#end()

"Auto completado de tags html en el cado de tener un <ul> vim adicionara es
"respectivo </ul>

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
:ab <<< </<C-x><C-o>

"esta el la plantilla que se usa
colorscheme medic_chalk

"Parametros plug para mostrar marcadores de sangria
let g:indentLine_char       = '▏'
"let g:indentLine_setConceal = 0

" Agregue espacios después de los delimitadores de comentarios de forma predeterminada, 
let g:NERDSpaceDelims = 1

" Use una sintaxis compacta para comentarios 
let g:NERDCompactSexyComs = 1
"
" Alinee los delimitadores de comentarios de línea a la izquierda en lugar de la siguiente sangría del código, 
let g:NERDDefaultAlign = 'left'

" Establezca un idioma para usar sus delimitadores alternativos de forma predeterminada 
let g:NERDAltDelims_java = 1

" Agregue sus propios formatos personalizados o anule los valores predeterminados 
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Permitir comentar e invertir líneas vacías (útil al comentar una región) 
let g:NERDCommentEmptyLines = 1

" Habilite el recorte de los espacios en blanco finales al descomentar
let g:NERDTrimTrailingWhitespace = 1

" Habilite NERDCommenterToggle para verificar que todas las líneas seleccionadas estén comentadas o no 
let g:NERDToggleCheckAllLines = 1

"esta opcion es para que el arbol de archivos se cierre en el momento de escoger un archivo
let  NERDTreeQuitOnOpen=1

"Permitir ver archivos ocultos
let NERDTreeShowHidden=1

"se define cual sera la tecla lider
let mapleader=" "

"esta es una llave rapida para poder moverse con espaciadora s y dos caracteres de busqueda w
nmap <leader>s <Plug>(easymotion-s2)

"esta es la combinacion de teclas para que se ejecute el arbol de archivos y directorios
nmap <leader>nt :NERDTreeFind<CR>

"esta es una llave rapuda para poder gravar con solo espaciadora y w
nmap <leader>w :w<CR>

"esta es una llave rapida para poder salir solo con espaciadora y q
nmap <leader>q :q<CR>

"pone la linea donde esta el cursor como un comentario pero en modo normal
nmap <leader>++ <plug>NERDCommenterToggle<CR>

"pone la linea donde esta el cursor como un comentario pero en modo visual 
vmap <leader>++ <plug>NERDCommenterToggle<CR>

"
