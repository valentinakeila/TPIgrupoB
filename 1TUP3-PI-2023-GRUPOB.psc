Proceso trabajofinal
	Escribir "Bienvenido"
	definir vacunas Como Caracter
	definir turnos Como Caracter
	Definir eleccion Como Entero
	Definir  opcion4 Como Caracter
	definir opcion5 Como Caracter
	definir usuario Como Caracter //Array que contiene los datos del usuario
	
	
	//Almacenar nombre de las vacunas
	dimension vacunas[6,1]
	vacunas[0,0]="Neumococo conjugada"
	vacunas[1,0]="Poliomielitis (IPV o Salk)"
	vacunas[2,0]="Quíntuple (o pentavalente)"
	vacunas[3,0]="Rotavirus"
	vacunas[4,0]="Meningococo"
	vacunas[5,0]="Tripe Viral"
	
	//Stock disponible de las vacunas 
	vacunas[0,1]="10"
	vacunas[1,1]="10"
	vacunas[2,1]="10"
	vacunas[3,1]="10"
	vacunas[4,1]="10"
	vacunas[5,1]="10"
	
	//Turnos disponibles a elegir 
	dimension turnos[5,9]
	turnos[0,0]= "Lunes"
	turnos[1,0]= "Martes"
	turnos[2,0]= "Miercoles"
	turnos[3,0]= "Jueves"
	turnos[4,0]= "Viernes"
	
	turnos[0,1]= "8:00"
	turnos[1,1]= "8:00"
	turnos[2,1]= "8:00"
	turnos[3,1]= "No hay turno disponible en este horario"
	turnos[4,1]= "No hay turno disponible en este horario"
	
	turnos[0,2]= "8:30"
	turnos[1,2]= "8:30"
	turnos[2,2]= "8:30"
	turnos[3,2]= "8:30"
	turnos[4,2]= "No hay turno disponible en este horario"
	
	turnos[0,3]= "No hay turno disponible en este horario"
	turnos[1,3]= "9:00"
	turnos[2,3]= "9:00"
	turnos[3,3]= "9:00"
	turnos[4,3]= "No hay turno disponible en este horario"
	
	turnos[0,4]= "No hay turno disponible en este horario"
	turnos[1,4]= "9:30"
	turnos[2,4]= "9:30"
	turnos[3,4]= "No hay turno disponible en este horario"
	turnos[4,4]= "No hay turno disponible en este horario"
	
	turnos[0,5]= "No hay turno disponible en este horario"
	turnos[1,5]= "10:00"
	turnos[2,5]= "No hay turno disponible en este horario"
	turnos[3,5]= "No hay turno disponible en este horario"
	turnos[4,5]= "No hay turno disponible en este horario"
	
	turnos[0,6]= "No hay turno disponible en este horario"
	turnos[1,6]= "10:30"
	turnos[2,6]= "11:00"
	turnos[3,6]= "11:00"
	turnos[4,6]= "No hay turno disponible en este horario"
	
	turnos[0,7]= "No hay turno disponible en este horario"
	turnos[1,7]= "11:00"
	turnos[2,7]= "No hay turno disponible en este horario"
	turnos[3,7]= "11:30"
	turnos[4,7]= "No hay turno disponible en este horario"
	
	turnos[0,8]= "No hay turno disponible en este horario"
	turnos[1,8]= "11:30"
	turnos[2,8]= "No hay turno disponible en este horario"
	turnos[3,8]= "No hay turno disponible en este horario"
	turnos[4,8]= "No hay turno disponible en este horario"
	
	
	
	
	
	//Menù de opciones 
	Escribir "elija una opcion"
	Escribir "1-reservar turno"  
	Escribir "2-Buscar paciente"
	Escribir "3-Ver agenda vacunatorio"
	escribir "4-Ordenar y mostrar lista pacientes (A- Por edad, B- Por vacuna a aplicar)"
	escribir "5-Listado/s (A- Cantidad turnos otorgados por día, B- Cantidad de vacunas a aplicar por vacuna) "
	
	leer eleccion 
	
	Segun eleccion Hacer
		1:  
			mostrarHorarios(vacunas,turnos)
			
		2: 
			
		3:
			
			
			
		4: leer opcion4
			Segun opcion4 Hacer
				
				a: 
					
				b: 
					
			Fin Segun
			
	    5: leer opcion5
			Segun opcion5 Hacer
				a: 
					
				b: 
					
			Fin Segun
			
			
	Fin Segun
	
FinProceso

SubProceso mostrarHorarios(vacunas,turnos)
	Definir opcionDia Como Entero
	
	
	Repetir
		
		Escribir "Seleccione dìa para reservar su turno"
		Escribir "1-Lunes"
		Escribir "2-Martes"
		Escribir "3-Mièrcoles"
		Escribir "4-Jueves"
		Escribir "5-Viernes"
		
		leer opcionDia
		
		Segun opcionDia Hacer
			1: 
				Para i<-1 Hasta 8 Con Paso 1 Hacer
					Escribir i "- " turnos[0,i]
				Fin Para
				
			2:Para i<-1 Hasta 8 Con Paso 1 Hacer
				Escribir i "- " turnos[1,i]
			Fin Para
			
		3:Para i<-1 Hasta 8 Con Paso 1 Hacer
			Escribir i "- " turnos[2,i]
		Fin Para
		
	4:Para i<-1 Hasta 8 Con Paso 1 Hacer
		Escribir i "- " turnos[3,i]
	Fin Para
	
5: 
	Escribir "No hay turnos disponibles"
	
	
De Otro Modo: Escribir "Opciòn Invàlida"
	
Fin Segun


Mientras Que opcionDia <1 o opcionDia >5

FinSubProceso

FinSubProceso
