(START)	// while (true) -> ciclo eterno
	@KBD
	D=M
	@FILLORCLEAR // if (kbd != 0) -> si se está presionando una tecla
	D;JNE // si sí se presiona, se va a FILLORCLEAR
	@START
	0;JMP //si no se presiona, vuelve al start (ciclo que está esperando que se presione algo)

(FILLORCLEAR)
// if kbd = lo que está en la posición 0
	@j
	M = D 
	@0  
	D = D-M // Comprueba que kbd sea igual a lo que está en la posición 0 
	@FILL
	D;JEQ // si es igual, salta a FILL
	@j
	D = M
	@1
	D = D - M //Comprueba que kbd sea igual a lo que está en la posición 1
	@CLEAR
	D;JEQ //si es igual, salta a CLEAR
	@START
	0;JMP //si no es ni posición 0 ni 1, vuelve al start

(FILL)
	@value 
	M = -1 //escribe -1 en la posición 17
	@DRAW
	0;JMP //salta al draw

(CLEAR)
	@value
	M = 0 //escribe 0 en la posición 17
	@DRAW
	0;JMP //salta al draw

(DRAW)
	@SCREEN //@16384
	D = A //guarda en D la posición 16384
	@i
	M = D //escribe 16384 en la posición 18

(LOOP)
	@value 
	D = M //guarda en D lo que haya en la posición 17 (el 0 o el -1 para saber si va a borrar o pintar)
	@i
	A = M //guarda en A lo que hay en la 18 (el pixel que se va a pintar o a borrar)
	M = D 
	@i
	M = M + 1 //aumenta el pixel (que está guardado en 18) uno por uno
	@24576
	D = A 
	@i
	D = M - D //comprueba si ya se llenó la pantalla (pixel guardado en 18 - pixel máximo = 0)
	@LOOP
	D;JNE //Si no es igual, va a volver a loop hasta que se llene la pantalla
	@START
	0;JMP //si se llenó la pantalla, salta a start 

