Algoritmo factorial
	Escribir 'Ingrese término 'Sin Saltar
	Leer n
	Si n>0 Y n<20 Entonces
		res <- n
		Mientras n>1 Hacer
			res <- res*(n-1)
			n <- n-1
		FinMientras
		Escribir 'Resultado: ', res
	SiNo
		Escribir 'Parámetro de entrada incorrecto [0, 20)'
	FinSi
FinAlgoritmo
