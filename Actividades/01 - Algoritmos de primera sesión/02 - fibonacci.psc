Algoritmo fibonacci
	Escribir 'Ingrese el t�rmino de la sucesi�n deseado 'Sin Saltar
	Leer n
	Si n>0 Entonces
		a <- 1
		b <- 1
		c <- 1
		Mientras n>2 Hacer
			c <- a+b
			a <- b
			b <- c
			n <- n-1
		FinMientras
		Escribir 'Resultado: ', c
	SiNo
		Escribir 'Ingrese un t�rmino mayor a 0'
	FinSi
FinAlgoritmo
