Algoritmo factorial
	Escribir 'Ingrese t�rmino 'Sin Saltar
	Leer n
	Si n>0 Y n<20 Entonces
		res <- n
		Mientras n>1 Hacer
			res <- res*(n-1)
			n <- n-1
		FinMientras
		Escribir 'Resultado: ', res
	SiNo
		Escribir 'Par�metro de entrada incorrecto [0, 20)'
	FinSi
FinAlgoritmo
