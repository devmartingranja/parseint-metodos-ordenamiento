Proceso QuickSort
	
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
	// invocamos metodo burbuja
	metodoQuickSort(arreglo,1, tamaño)
	
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

//Función para mostrar estado de la arreglo
Funcion metodoQuickSort(arreglo Por Referencia,principio, final)	
		
	i=principio
    j=final
    pivote=(arreglo[i]+arreglo[j])/2  
	
    Mientras i<j Hacer
		
        Mientras arreglo[i]<pivote Hacer
            i<-i+1
        Fin Mientras
		
        Mientras arreglo[j]>pivote Hacer
            j<-j-1
        Fin Mientras
		
        Si i<=j Entonces
            temporal<-arreglo[i]
            arreglo[i]<-arreglo[j]
            arreglo[j]<-temporal
            i<-i+1
            j<-j-1
        Fin Si
		
    Fin Mientras
    
    Si principio<j Entonces
        metodoQuickSort(arreglo,principio,j)
    Fin Si
    
    Si final>i Entonces
        metodoQuickSort(arreglo,i,final)
    Fin Si	
	
FinFuncion

