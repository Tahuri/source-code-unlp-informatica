Program Archivo;
	//Existen varias formas de definir un archivo y son las siguientes:
	//Definiendolos como tipos de datos
	type
		//Archivo de Enteros
		ArchivoDeEnteros = file of integer;
		//Archivo de Reales
		ArchivoDeReales = file of real;
		//Archivo de caracteres
		ArchivoDeCaracteres = file of char;
		//Archivo de Cadenas de Caracteres
		ArchivoDeCadenasDeCaracteres = file of string;
	//Definiendo directamente la variable con el tipo de archivo
	var
		enteros : file of integer;
		reales : file of real;
		caracteres : file of char;
		cadenasDeCaracteres : file of string;
		//Ahora definimos las variables utilizando los tipos que definimos
		tEnteros : ArchivoDeEnteros;
		tReales : ArchivoDeReales;
		tCaracteres : ArchivoDeCaracteres;
		TCadenasDeCaracteres : ArchivoDeCadenasDeCaracteres;
	Begin
    	writeln('Enlazamos el archivo lógico con el físico');
    	writeln('assign("nombre_archivo_logico", "nombre_archivo_fisico")');
    	//Las extensiones no necesariamente tienen que ser .txt, pueden ser de cualquier
    	//tipo, o simplemente no la ponemos(Solo windows nos obliga a poner una extensión).
    	//Si no ponemos el path completo del archivo, se utilizara el path relativo, tomando como "."
    	//la carpeta donde este el binario(programa obtenido despues de compilar este código fuente)
    	//que estamos ejecutando.
    	assign(enteros, 'enteros.txt');
    	writeln('Luego de ejecutar el assign podemos abrir el archivo de tres formas distinas:');
    	writeln('Escritura (rewrite), se crea un archivo nuevo. Y si ya existe se elimina el anterior por el nuevo.');
    	writeln('Lectura (reset), se abre un archivo para leerlo. El archivo debe exisitir previamente.');
    	writeln('Modificación (reset, este es tanto para lectura como modificación, en pascal), se arbre un archivo para modificarlo. El archivo debe existir previamente.');
    	writeln();
    	writeln('Abrimos el archivo en modo escritura con el comando rewrite, (creamos el archivo).');
    	writeln('rewrite(nombre_archivo_logico)');
    	//Noten que simplemente ponemos la variable con el nombre lógico
    	rewrite(enteros);
    	writeln('Otra cosa muy importante que debemos hacer siempre antes de terminar el programa es cerrar todos los archivos que abrimos.');
    	writeln('Esto se hace con:');
    	writeln('close(nombre_archivo_logico)');
    	close(enteros);
    	writeln('Ahora abrimos el archivo recien creado con reset para agregar datos o siemplemente leer datos.');
    	writeln('Esto se hace con:');
    	writeln('reset(nombre_archivo_logico)');
    	reset(enteros);
    	writeln('Como abrimos el archivo nuevamente, ahora tenemos que volver a cerrarlo.');
    	writeln('close(nombre_archivo_logico)');
    	close(enteros);
 	End.