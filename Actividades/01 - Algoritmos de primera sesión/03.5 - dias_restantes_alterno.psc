Algoritmo dias_restantes_alterno
	Escribir 'Ingrese d�a 'Sin Saltar
	Leer d
	Si 0<d Y d<=31 Entonces
		Escribir 'Ingrese mes 'Sin Saltar
		Leer m
		valido <- 1
		Si 0<m Y m<=12 Entonces
			Seg�n m Hacer
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
			FinSeg�n
			Si valido==1 Entonces
				mm <- 1
				res <- 0
				Mientras mm<>m Hacer
					Seg�n mm Hacer
						1, 3, 5, 7, 8, 10:
							res <- res+31
						4, 6, 9, 11:
							res <- res+30
						De Otro Modo:
							res <- res+28
					FinSeg�n
					mm <- mm+1
				FinMientras
				Escribir 'D�as restantes: ', 365-(res+d)
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
