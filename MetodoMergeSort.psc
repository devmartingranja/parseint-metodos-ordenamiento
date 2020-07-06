Proceso MergeSort
	
	// Longitud del arrelgo
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
	
	Escribir "Arreglo desordenado"
	mostrararreglo(arreglo,tamaño);
	Escribir ""
	// invocamos metodo burbuja
	mezcla(arreglo,tamaño)
	
	Escribir "Arreglo ordenado"
	mostrararreglo(arreglo,tamaño);
	
FinProceso


//Función para mostrar estado de la arreglo
Funcion mostrararreglo(arreglo,tamaño)
	Para i=1 Hasta tamaño Con Paso 1 Hacer
		Escribir Sin Saltar arreglo[i] " ";
	FinPara
	Escribir "";
FinFuncion

// donse se van organizando
SubProceso mezclar (arreglo1, n1, arreglo2, n2, arreglo Por Referencia)	
		   
    x1<-1;
    x2<-1;
    x3<-1;
	
    Mientras (x1 <= n1 y x2 <= n2) Hacer
        Si arreglo1[x1] < arreglo2[x2] Entonces
            arreglo[x3] <- arreglo1[x1];
            x1<-x1 + 1;
        Sino
            arreglo[x3] <- arreglo2[x2];
            x2<-x2 + 1;
        FinSi		
        x3<-x3 + 1;
    FinMientras	
	
    Mientras x1 <= n1 Hacer		
        arreglo[x3] <- arreglo1[x1];
        x1<-x1 + 1;
        x3<-x3 + 1;		
    FinMientras	 
	
    Mientras x2 <= n2 Hacer		
        arreglo[x3] <- arreglo2[x2]
        x2<-x2 + 1;
        x3<-x3 + 1;
    FinMientras		
	
FinSubProceso

// donse se van dividiendo
SubProceso mezcla ( arreglo por referencia, n )
		
	
    Definir n1, n2, x, t Como Enteros;
    Si n > 1 Entonces		
		
		n1 <- trunc(n / 2);	
		
		Si n % 2 = 0 Entonces            				
			n2 <- n1;
		Sino					
			n2 <- n1+1;
		FinSi	
		
		dimension arreglo_1[n1];
		dimension arreglo_2[n2];
				
		Para x<-1 Hasta n1 Con Paso 1 Hacer
            arreglo_1[x] <- arreglo[x];
		FinPara			
			
		Para t <- 1 Hasta n2 Con Paso 1 Hacer
			arreglo_2[t] <- arreglo[n1 + t];				
		FinPara		
		
		mezcla(arreglo_1,n1);
		mezcla(arreglo_2,n2);			
		
		mezclar(arreglo_1, n1, arreglo_2, n2, arreglo);
    FinSi
FinSubProceso

