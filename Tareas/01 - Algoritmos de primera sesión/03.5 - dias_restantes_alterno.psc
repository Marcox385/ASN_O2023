Algoritmo dias_restantes_alterno
	Escribir 'Ingrese día 'Sin Saltar
	Leer d
	Si 0<d Y d<=31 Entonces
		Escribir 'Ingrese mes 'Sin Saltar
		Leer m
		valido <- 1
		Si 0<m Y m<=12 Entonces
			Según m Hacer
				1, 3, 5, 7, 8, 10:
					Si d>31 Entonces
						valido <- 0
					FinSi
				4, 6, 9, 11:
					Si d>30 Entonces
						valido <- 0
					FinSi
				De Otro Modo:
					Si d>28 Entonces
						valido <- 0
					FinSi
			FinSegún
			Si valido==1 Entonces
				mm <- 1
				res <- 0
				Mientras mm<>m Hacer
					Según mm Hacer
						1, 3, 5, 7, 8, 10:
							res <- res+31
						4, 6, 9, 11:
							res <- res+30
						De Otro Modo:
							res <- res+28
					FinSegún
					mm <- mm+1
				FinMientras
				Escribir 'Días restantes: ', 365-(res+d)
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
