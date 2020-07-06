Proceso Seleccion
	//Longitud del arrelgo
	tamaño=20;
	// arreglo
	Dimension arreglo[tamaño];
	arreglo[1]=8;
	arreglo[2]=5;
	arreglo[3]=7;
	arreglo[4]=11;
	arreglo[5]=16;
	arreglo[6]=9;
	arreglo[7]=13;
	arreglo[8]=18;
	arreglo[9]=2;
	arreglo[10]=17;
	arreglo[11]=3;
	arreglo[12]=1;
	arreglo[13]=12;
	arreglo[14]=20;
	arreglo[15]=19;
	arreglo[16]=15;
	arreglo[17]=6;
	arreglo[18]=4;
	arreglo[19]=14;
	arreglo[20]=10;
	
	// invocamos metodo burbuja
	metodoOrdenamientoSeleccion(arreglo, tamaño)
	
FinProceso

//Función para mostrar estado de la arreglo
Funcion mostrararreglo(arreglo,tamaño)
	Para i=1 Hasta tamaño Con Paso 1 Hacer
		Escribir Sin Saltar arreglo[i] " ";
	FinPara
	Escribir "";
FinFuncion

//Función para mostrar estado de la arreglo
Funcion metodoOrdenamientoSeleccion(arreglo,tamaño)
	
	Escribir "Arreglo desordenado"
	mostrararreglo(arreglo,tamaño);
    
	para i <- 1 hasta tamaño  Con Paso 1 Hacer
		
		aux <- arreglo[i]
		p <- i
		
		para j<- i hasta tamaño Con Paso 1 Hacer
			
			si arreglo[j] < aux Entonces
				aux <- arreglo[j]
				p <- j
			FinSi		
			
		FinPara	
		
		arreglo[p] <- arreglo[i]
		arreglo[i] <- aux
		
	FinPara
	
	Escribir "Arreglo ordenado"
	mostrararreglo(arreglo,tamaño);
	
FinFuncion
