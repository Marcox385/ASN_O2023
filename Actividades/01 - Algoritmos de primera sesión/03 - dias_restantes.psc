Algoritmo dias_restantes
	Escribir 'Ingrese día 'Sin Saltar
	Leer d
	Si 0<d Y d<=31 Entonces
		Escribir 'Ingrese mes 'Sin Saltar
		Leer m
		Si 0<m Y m<=12 Entonces
			Según m Hacer
				1, 3, 5, 7, 8, 10, 12:
					res <- 31-d
				4, 6, 9, 11:
					res <- 30-d
				De Otro Modo:
					res <- 28-d
			FinSegún
			Si res>=0 Entonces
				Mientras m<>12 Hacer
					Según m Hacer
						1, 3, 5, 7, 8, 10, 12:
							res <- res+31
						4, 6, 9, 11:
							res <- res+30
						De Otro Modo:
							res <- res+28
					FinSegún
					m <- m+1
				FinMientras
				Escribir 'Días restantes: ', res
			SiNo
				Escribir 'Combinación de día (', d, ') y mes (', m, ') inválida. Revisa tus entradas.'
			FinSi
		SiNo
			Escribir 'Mes inválido. Revisa tu entrada.'
		FinSi
	SiNo
		Escribir 'Día inválido. Revisa tu entrada.'
	FinSi
FinAlgoritmo
