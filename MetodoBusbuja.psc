Proceso Burbuja
	//Longitud del arrelgo
	tama�o=20;
	// arreglo
	Dimension arreglo[tama�o];
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
	metodoBurbuja(arreglo, tama�o)
	
FinProceso

//Funci�n para mostrar estado de la arreglo
Funcion mostrararreglo(arreglo,tama�o)
	Para i=1 Hasta tama�o Con Paso 1 Hacer
		Escribir Sin Saltar arreglo[i] " ";
	FinPara
	Escribir "";
FinFuncion

//Funci�n para mostrar estado de la arreglo
Funcion metodoBurbuja(arreglo,tama�o)
	
	Escribir "Arreglo desordenado"
	mostrararreglo(arreglo,tama�o);
    Hacer
		n=0; // banddera
		//Recorrer la arreglo
		Para i=2 Hasta tama�o Con Paso 1 Hacer
			//Verificar si los dos valores estan ordenados
			Si arreglo[i-1]>arreglo[i]
				//Ordenar si es necesario
				temp=arreglo[i-1];
				arreglo[i-1]=arreglo[i];
				arreglo[i]=temp;
				n=1;	 // esto quiere decir que aun hay que recorrer el arreglo					
			FinSi
			
		FinPara		
		
		//mostrararreglo(arreglo,tama�o); // testear arreglo
		
	Hasta Que n=0; // si la bandera llega a cero quiere decir que no hubieron cambios y que no hace falta ordenar nada mas y termina el ciclo
	
	Escribir "Arreglo ordenado"
	mostrararreglo(arreglo,tama�o);
	
FinFuncion

