Estructura del repo:
======
* PDF: todos los pdfs relacionados con la materia
* src: archivos en comun con las actividades escritas en Haskell, creadas y editadas por todos los contribuyentes
* archivos: aca podes dejar algun archivo personal, para tener facil acceso a el desde el lab

Como contribuir:
======
* Basicamente hay 2 branchs activas todo el tiempo:

   * **master** : Branch principal con todos los archivos implementados en base a la branch de aportes  
   * **aportes** : Se mergea a master y se vuelve a crear antes de cada miercoles  
   puedes subir pull requests a esta branch para aportar cosas que mas tarde mergeare a master  
   asi estan disponibles para todos
   
(De igual forma se pueden subir pull requests a masters para corregir algo, pero la idea  
es manejarse con aportes)

### Para subir un pull request:
* Desde la linea de comandos, escribir 
`git push -u origin <NOMBRE-DE-LA-BRANCH>`
(Donde "NOMBRE-DE-LA-BRANCH" es el nombre de la branch la cual quieres pullear)
* Te pedira tu nombre de usuario y contraseña de GitHub
* Luego, en GitHub busca el boton "new pull request", en la pestaña "Pull requests" arriba, selecciona como base aportes 
(o master en el caso especifico) y del otro lado tu branch
* Podes agregar algun mensaje informativo, y listo ,apreta *create pull request* y espera a que la apruebe


Como descargar:
======
## Como ZIP:
Arriba a la derecha de todos los archivos del repositorio, hay un boton verde que dira "clone or download"  
(clonar o descargar), hacen click y seleccionan descargar como zip.  
Nota: Podes elegir otra branch ademas de master, para tener los archivos mas al dia, aunque no esta garantizado  
que funcione
## Clonando:
En una terminal, escribe el siguiente codigo en el directorio que quieres clonar el repositorio

`git clone https://github.com/Svartskogen/Int.-A-Los-Algoritmos-FAMAF.git`
