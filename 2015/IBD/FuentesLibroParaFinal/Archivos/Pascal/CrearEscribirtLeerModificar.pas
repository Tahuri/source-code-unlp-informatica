unit CrearEscribirtLeerModificar;
	interface
		function crearArchivo():Boolean;
		function cargarArchivo():Boolean;
		function leerArchivo():Boolean;
		function modificarArchivo():Boolean;
	implementation
		function crearArchivo():Boolean;
			type
				//Archivo de Enteros
				ArchivoDeEnteros = file of integer;
			var
				//Archivo logico de Enteros
				enteros : file of integer;
			begin
				writeln('Enlazamos el archivo lógico con el físico');
				assign(enteros, 'enteros.txt');
				writeln('Abrimos el archivo en modo escritura con el comando rewrite, (creamos el archivo), se crea un nuevo archivo.');
	    		rewrite(enteros);
	    		writeln('Ya creado el archivo lo cerramos ya que no vamos a realizar otra operación.');
	    		close(enteros);
	    		crearArchivo := true;
	    		
			end;
		function cargarArchivo():Boolean;
			type
				//Archivo de Enteros
				ArchivoDeEnteros = file of integer;
			var
				//Archivo logico de Enteros
				enteros : file of integer;
			begin
				writeln('Enlazamos el archivo lógico con el físico');
				assign(enteros, 'enteros.txt');
				writeln('Abrimos el archivo en modo lectura/escritura con el comando reset.');
	    		reset(enteros);
	    		writeln('Agregamos 2 números al archivo recien creado.');
	    		writeln('Para agregar un nuevo dato al archivo se usa la sentencia "write" ');
	    		writeln('Para ello tenemos que pasar como primer parametro la vriable con el nombre logico del archivo,');
	    		writeln('y como segundo parametro le pasamos el dato a escribir en el archivo.');
	    		write(enteros,1);
	    		write(enteros,2);
	    		writeln('Cerramos el archivo.');
	    		close(enteros);
	    		cargarArchivo := true;
			end;
		function leerArchivo():Boolean;
			type
				//Archivo de Enteros
				ArchivoDeEnteros = file of integer;
			var
				//Archivo logico de Enteros
				enteros : file of integer;
				entrada: integer;				
			begin
				writeln('Enlazamos el archivo lógico con el físico');
				assign(enteros, 'enteros.txt');
				writeln('Abrimos el archivo en modo lectura/escritura con el comando reset.');
	    		reset(enteros);
	    		writeln('Leemos los 2 números del arhico y los imprimimos en consola');
	    		writeln('Para leer un dato de un archivo se usa la sentencia "read"');
	    		writeln('y como en el caso de la escritura el primer parametro es la variable del archivo logico y el segundo es');
	    		writeln('la variable donde se va a guardar el dato que se leyo.');
	    		writeln('Los números del archivo son:');
	    		read(enteros, entrada);
	    		writeln(entrada);
	    		read(enteros, entrada);
	    		writeln(entrada);
	    		writeln('Cerramos el archivo.');
	    		close(enteros);
	    		leerArchivo := true;
			end;
		function modificarArchivo():Boolean;
			type
				//Archivo de Enteros
				ArchivoDeEnteros = file of integer;
			var
				//Archivo logico de Enteros
				enteros : file of integer;
			begin
				writeln('Enlazamos el archivo lógico con el físico');
				assign(enteros, 'enteros.txt');
				writeln('Abrimos el archivo en modo lectura/escritura con el comando reset.');
	    		reset(enteros);
	    		writeln('Para modificar un dato vamos a tener que sobre escribir el dato en el archivo,');
	    		writeln('y para ello escribimos en la posición del dato un nuevo dato.');
	    		write(enteros,3);
	    		write(enteros,4);
	    		writeln('Mas adelante veremos el uso de la sentencia seek para posicionarnos en el dato que queremos sobre escribir');
	    		writeln('Cerramos el archivo.');
	    		close(enteros);
	    		modificarArchivo := true;
			end;
	End.