Proceso RadixSort
	
	// Longitud del arrelgo
	tama�o=20;
	
	// arreglo
	Dimension arreglo[tama�o];
	arreglo[1]="08";
	arreglo[2]="05";
	arreglo[3]="07";
	arreglo[4]="11";
	arreglo[5]="16";
	arreglo[6]="09";
	arreglo[7]="13";
	arreglo[8]="18";
	arreglo[9]="02";
	arreglo[10]="17";
	arreglo[11]="03";
	arreglo[12]="01";
	arreglo[13]="12";
	arreglo[14]="20";
	arreglo[15]="19";
	arreglo[16]="15";
	arreglo[17]="06";
	arreglo[18]="04";
	arreglo[19]="14";
	arreglo[20]="10";
	
	Escribir "Arreglo desordenado"
	mostrararreglo(arreglo,tama�o);
	// invocamos metodo burbuja
	metodoRadixSort(arreglo, tama�o)
	
	Escribir "Arreglo ordenado"
	mostrararreglo(arreglo,tama�o);
	
FinProceso

//Funci�n para mostrar estado de la arreglo
Funcion mostrararreglo(arreglo,tama�o)
	Para i=1 Hasta tama�o Con Paso 1 Hacer
		Escribir Sin Saltar arreglo[i] " ";
	FinPara
	Escribir "";
FinFuncion

//Funci�n para mostrar estado de la arreglo
Funcion metodoRadixSort(arreglo Por Referencia, tama�o)	
	
	dimension auxarreglo[tama�o]
	dimension auxOrden[tama�o]	
	maximo = maximaLongitud(arreglo, tama�o)		
			
	Para i=maximo Hasta 1 Con Paso -1 Hacer			
		
		Para f=1 Hasta tama�o Con Paso 1 Hacer		
						
			fila = arreglo[f]
			n = Longitud(fila)
			
			si ( i <= n)				
				fila = subcadena(fila, i,i)					
			FinSi
			
			auxArreglo[f] = fila										
			
		FinPara	
		
		contador = 1		
				
		// ordenar por ciclo			
		para p= 0 Hasta 10 con paso 1 Hacer
			
			para f= 1 Hasta tama�o con paso 1 Hacer
				
				si(p == ConvertirANumero(auxArreglo[f]))
					auxOrden[contador] = arreglo[f]
					contador = contador +1
				FinSi							
				
			FinPara			
			
		FinPara
		
		para f= 1 Hasta tama�o con paso 1 Hace
			arreglo[f] = auxOrden[f]	
		FinPara		
		
	FinPara
	
FinFuncion


Funcion respuesta <- maximaLongitud(arreglo, final)
	
	respuesta = 0
	
	Para i=1 Hasta final Con Paso 1 Hacer				
		si respuesta < ConvertirANumero(arreglo[i])
			respuesta = ConvertirANumero(arreglo[i])
		FinSi
	FinPara	
	
	respuesta = Longitud(ConvertirATexto(respuesta))
	
FinFuncion

