Algoritmo dias_restantes
	Escribir 'Ingrese d�a 'Sin Saltar
	Leer d
	Si 0<d Y d<=31 Entonces
		Escribir 'Ingrese mes 'Sin Saltar
		Leer m
		Si 0<m Y m<=12 Entonces
			Seg�n m Hacer
				1, 3, 5, 7, 8, 10, 12:
					res <- 31-d
				4, 6, 9, 11:
					res <- 30-d
				De Otro Modo:
					res <- 28-d
			FinSeg�n
			Si res>=0 Entonces
				Mientras m<>12 Hacer
					Seg�n m Hacer
						1, 3, 5, 7, 8, 10, 12:
							res <- res+31
						4, 6, 9, 11:
							res <- res+30
						De Otro Modo:
							res <- res+28
					FinSeg�n
					m <- m+1
				FinMientras
				Escribir 'D�as restantes: ', res
			SiNo
				Escribir 'Combinaci�n de d�a (', d, ') y mes (', m, ') inv�lida. Revisa tus entradas.'
			FinSi
		SiNo
			Escribir 'Mes inv�lido. Revisa tu entrada.'
		FinSi
	SiNo
		Escribir 'D�a inv�lido. Revisa tu entrada.'
	FinSi
FinAlgoritmo
