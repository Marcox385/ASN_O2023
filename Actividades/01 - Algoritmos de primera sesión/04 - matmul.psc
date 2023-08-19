Algoritmo matmul
	Escribir 'Ingresa la dimensión 'Sin Saltar
	Leer n
	Si n>0 Entonces
		Dimensionar a(n,n), b(n,n), r(n,n)
		// Leer datos de a y b
		Para i<-0 Hasta n-1 Hacer
			Para j<-0 Hasta n-1 Hacer
				Escribir 'Ingrese a[', i, '][', j, '] 'Sin Saltar
				Leer a[i,j]
				Escribir 'Ingrese b[', i, '][', j, '] 'Sin Saltar
				Leer b[i,j]
				r[i,j]<-0
			FinPara
			Escribir ''
		FinPara
		// Multiplicar elementos y mostrarlos
		Escribir 'Matriz resultante'
		Para i<-0 Hasta n-1 Hacer
			Para j<-0 Hasta n-1 Hacer
				Para k<-0 Hasta n-1 Hacer
					r[i,j]<-r[i,j]+(a[i,k]*b[k,j])
				FinPara
				Escribir r[i,j], ' 'Sin Saltar
			FinPara
			Escribir ''
		FinPara
	SiNo
		Escribir 'Dimensión incorrecta'
	FinSi
FinAlgoritmo
