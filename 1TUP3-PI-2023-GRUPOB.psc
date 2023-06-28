Proceso trabajofinal
	Escribir "Bienvenido" // Mensajito de bienvenida :)
	
	// Se cargan las variables y sus datos
	definir vacunas Como Caracter
	definir turnos Como Caracter
	Definir opcion4 Como Caracter
	definir opcion5 Como Caracter
	definir usuario Como Caracter 
	
	Definir cantidadTurnos Como Caracter
	Dimension cantidadTurnos[5,2]
	Definir cantidadVacunas Como Caracter
	Dimension cantidadVacunas[6,2]
	
	Definir tamaño Como Entero
	tamaño = 2
	
	Dimension usuario[tamaño,7] //Array que contiene los datos del usuario
	
	//contadores para cada dia, opcion 5 del menu 
	cantidadTurnos[0,0]= "Lunes"  
	cantidadTurnos[1,0]= "Martes"
	cantidadTurnos[2,0]= "Miercoles"
	cantidadTurnos[3,0]= "Jueves"
	cantidadTurnos[4,0]= "Viernes"
	
	//contadores para cada vacuna, opcion 5 del menu 
	cantidadVacunas[0,0]="Neumococo conjugada"
	cantidadVacunas[1,0]="Poliomielitis (IPV o Salk)"
	cantidadVacunas[2,0]="Quíntuple (o pentavalente)"
	cantidadVacunas[3,0]="Rotavirus"
	cantidadVacunas[4,0]="Meningococo"
	cantidadVacunas[5,0]="Tripe Viral"
	
	//Almacenar nombre de las vacunas
	dimension vacunas[6,2]
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
	turnos[3,1]= "8:00"
	turnos[4,1]= "8:00"
	
	turnos[0,2]= "8:30"
	turnos[1,2]= "8:30"
	turnos[2,2]= "8:30"
	turnos[3,2]= "8:30"
	turnos[4,2]= "8:30"
	
	turnos[0,3]= "9:00"
	turnos[1,3]= "9:00"
	turnos[2,3]= "9:00"
	turnos[3,3]= "9:00"
	turnos[4,3]= "9:00"
	
	turnos[0,4]= "9:30"
	turnos[1,4]= "9:30"
	turnos[2,4]= "9:30"
	turnos[3,4]= "9:30"
	turnos[4,4]= "9:30"
	
	turnos[0,5]= "10:00"
	turnos[1,5]= "10:00"
	turnos[2,5]= "10:00"
	turnos[3,5]= "10:00"
	turnos[4,5]= "10:00"
	
	turnos[0,6]= "10:30"
	turnos[1,6]= "10:30"
	turnos[2,6]= "10:30"
	turnos[3,6]= "10:30"
	turnos[4,6]= "10:30"
	
	turnos[0,7]= "11:00"
	turnos[1,7]= "11:00"
	turnos[2,7]= "11:00"
	turnos[3,7]= "11:00"
	turnos[4,7]= "11:00"
	
	turnos[0,8]= "11:30"
	turnos[1,8]= "11:30"
	turnos[2,8]= "11:30"
	turnos[3,8]= "11:30"
	turnos[4,8]= "11:30"
	
	//Menù principal de opciones
	Definir eleccion Como Entero
	Repetir
		Escribir "Elija una opcion"
		Escribir "1-Reservar turno"  
		Escribir "2-Buscar paciente"
		Escribir "3-Ver agenda vacunatorio"
		escribir "4-Ordenar y mostrar lista pacientes"
		escribir "5-Listado/s"
		escribir "6-Salir"
		
		leer eleccion 
		
		Segun eleccion Hacer
			1:  
				Escribir "" // Espacios para que se lea mejor al ejecutarlo
				reservarTurno(vacunas,turnos,usuario,cantidadTurnos,cantidadVacunas,tamaño)
				Escribir ""
			2: 
				Escribir ""
				buscarPaciente(usuario,tamaño)
				Escribir ""
			3:
				Escribir ""
				verAgendaVacunatorio(usuario,tamaño)
				Escribir ""
			4:  
				Escribir ""
				ordenar(usuario,tamaño)
				Escribir ""
			5: 
				Escribir ""
				listadoTurnos(cantidadTurnos,cantidadVacunas)
				Escribir ""
			6: 
				Escribir "Hasta pronto :)"
				
		Fin Segun
	Hasta Que eleccion	== 6 //salir del menù principal
	
	
	
FinProceso

//opcion 1, subproceso para reservar turno
SubProceso reservarTurno(vacunas ,turnos,usuario, cantidadTurnos, cantidadVacunas,tamaño)
	Definir opcionDia Como Entero
	Definir opcionHorario Como Entero
	
	Definir nombreIngresado Como Caracter
	Definir dniIngresado Como Caracter
	Definir edadIngresada Como real
	Definir vacunaElegida Como Entero
	Definir bandera Como Entero
	bandera = 0;
	
	Repetir
		
		Repetir //validar nombre y apellido
			Escribir "Bienvenido, Ingrese su Nombre y Apellido:"  
			Leer nombreIngresado
			Si  Longitud(nombreIngresado) < 3 Entonces
				Escribir "Ingrese su nombre y apellido nuevamente:"
			Fin Si
			
		Hasta Que Longitud(nombreIngresado) > 3 //cantidad de caracteres minimo que debe ocupar el nombre y apellido
		
		Repetir //validar dni
			Escribir "Ingrese su DNI"
			Leer dniIngresado
			
			Si Longitud(dniIngresado) < 6 o Longitud(dniIngresado) > 8 Entonces
				Escribir "DNI inválido. Ingrese el DNI nuevamente:"
			Fin Si
		Hasta Que Longitud(dniIngresado) >= 6 y Longitud(dniIngresado) <= 8 //longitud del dni ingresado
		
		//verificar si la misma persona esta sacando 2 turnos
		Para i <- 0 Hasta tamaño - 1 Con Paso 1 Hacer
			
			Si dniIngresado == usuario[i,1] Entonces
				bandera = 1; //si encontro una coincidencia es porque ya tiene un turno 
			Fin Si
			
		Fin Para
		
		Si bandera = 1 Entonces //sale del programa
			Escribir "Ya tenes un turno registrado"
			
			
		SiNo
			
			Repetir //validar edad
				Escribir "Ingrese la edad del paciente (0.X Para meses de vida)"
				Leer edadIngresada
				Si edadIngresada <= 0.1 o edadIngresada > 150 Entonces 
					Escribir "Edad inválida. Recuerde que estas vacunas no pueden aplicarse antes de los 2 meses según el Calendario de Vacunación Argentino."
				Fin Si
			Hasta Que edadIngresada > 0.1 y edadIngresada < 150 //Estas vacunas no pueden aplicarse antes de los 2 meses
			
			//validacion de los turnos, seleccionar dia
			Repetir
				Escribir "Seleccione dìa para reservar su turno"
				Escribir "1-Lunes"
				Escribir "2-Martes"
				Escribir "3-Mièrcoles"
				Escribir "4-Jueves"
				Escribir "5-Viernes"
				
				
				leer opcionDia
				Si opcionDia < 0 o opcionDia > 5 Entonces
					Escribir "Opción no válida."
				Fin Si
				
			Hasta Que opcionDia > 0 y opcionDia < 6
			
			
			//repetir para validar los turnos, horarios y dias que estan ocupados 
			Repetir
				
				Segun opcionDia Hacer
					1: 
						Para i<-1 Hasta 8 Con Paso 1 Hacer
							
							Si turnos[0,i] <> "Ocupado" Entonces //Cada turno tiene su casilla de ocupado cuando se elige 
								Escribir i "- " turnos[0,i] //Si no esta ocupado se escribe 
							Fin Si
						Fin Para
						
						// El array es de caracter pero tiene un numero entonces si le quiero restar ese numero debo primero convertirlo a 
						//numero pero para poder guardar esa resta luego debo re convertirlo a texto o sera incompatible
						
						cantidadTurnos[0,1] = ConvertirATexto(ConvertirANumero(cantidadTurnos[0,1]) + 1) //Opcion 5 - Contador lunes
						
						
						leer opcionHorario
						Segun opcionHorario Hacer // Si elije un turno, este pasa a estar "Ocupado" para que luego no aparezca en la seleccion
							1:
								turnos[0,1] = "Ocupado"
							2:
								turnos[0,2] = "Ocupado"
							3:
								turnos[0,3] = "Ocupado"
							4:
								turnos[0,4] = "Ocupado"
							5:
								turnos[0,5] = "Ocupado"
							6:
								turnos[0,6] = "Ocupado"
							7:
								turnos[0,7] = "Ocupado"
							8:
								turnos[0,8] = "Ocupado"
								
							De Otro Modo:
								
						Fin Segun
						
					2:Para i<-1 Hasta 8 Con Paso 1 Hacer
						
						Si turnos[1,i] <> "Ocupado" Entonces
							Escribir i "- " turnos[1,i]
						Fin Si
					Fin Para
					
					cantidadTurnos[1,1] = ConvertirATexto(ConvertirANumero(cantidadTurnos[1,1]) + 1) //Opcion 5 - Contador Martes
					
					leer opcionHorario
					Segun opcionHorario Hacer // Si elije un turno, este pasa a estar "Ocupado" para que luego no aparezca en la seleccion
						
						1:
							turnos[1,1] = "Ocupado"
						2:
							turnos[1,2] = "Ocupado"
						3:
							turnos[1,3] = "Ocupado"
						4:
							turnos[1,4] = "Ocupado"
						5:
							turnos[1,5] = "Ocupado"
						6:
							turnos[1,6] = "Ocupado"
						7:
							turnos[1,7] = "Ocupado"
						8:
							turnos[1,8] = "Ocupado"
							
						De Otro Modo:
							
					Fin Segun
					
					
					
				3:Para i<-1 Hasta 8 Con Paso 1 Hacer
					
					Si turnos[2,i] <> "Ocupado" Entonces
						Escribir i "- " turnos[2,i]
					Fin Si
				Fin Para
				
				cantidadTurnos[2,1] = ConvertirATexto(ConvertirANumero(cantidadTurnos[2,1]) + 1) //Opcion 5 - Contador Miercoles
				
				leer opcionHorario
				Segun opcionHorario Hacer // Si elije un turno, este pasa a estar "Ocupado" para que luego no aparezca en la seleccion
					1:
						turnos[2,1] = "Ocupado"
					2:
						turnos[2,2] = "Ocupado"
					3:
						turnos[2,3] = "Ocupado"
					4:
						turnos[2,4] = "Ocupado"
					5:
						turnos[2,5] = "Ocupado"
					6:
						turnos[2,6] = "Ocupado"
					7:
						turnos[2,7] = "Ocupado"
					8:
						turnos[2,8] = "Ocupado"
						
					De Otro Modo:
						
				Fin Segun
				
			4:Para i<-1 Hasta 8 Con Paso 1 Hacer
				
				Si turnos[3,i] <> "Ocupado" Entonces
					Escribir i "- " turnos[3,i]
				Fin Si
			Fin Para
			
			cantidadTurnos[3,1] = ConvertirATexto(ConvertirANumero(cantidadTurnos[3,1]) + 1) //Opcion 5 - Contador Jueves
			
			leer opcionHorario
			Segun opcionHorario Hacer // Si elije un turno, este pasa a estar "Ocupado" para que luego no aparezca en la seleccion
				1:
					turnos[3,1] = "Ocupado"
				2:
					turnos[3,2] = "Ocupado"
				3:
					turnos[3,3] = "Ocupado"
				4:
					turnos[3,4] = "Ocupado"
				5:
					turnos[3,5] = "Ocupado"
				6:
					turnos[3,6] = "Ocupado"
				7:
					turnos[3,7] = "Ocupado"
				8:
					turnos[3,8] = "Ocupado"
					
				De Otro Modo:
					
			Fin Segun
			
		5: Para i<-1 Hasta 8 Con Paso 1 Hacer
				
				Si turnos[4,i] <> "Ocupado" Entonces
					Escribir i "- " turnos[4,i]
				Fin Si
			Fin Para
			
			cantidadTurnos[4,1] = ConvertirATexto(ConvertirANumero(cantidadTurnos[4,1]) + 1) //Opcion 5 - Contador Viernes
			
			leer opcionHorario
			Segun opcionHorario Hacer // Si elije un turno, este pasa a estar "Ocupado" para que luego no aparezca en la seleccion
				1:
					turnos[4,1] = "Ocupado"
				2:
					turnos[4,2] = "Ocupado"
				3:
					turnos[4,3] = "Ocupado"
				4:
					turnos[4,4] = "Ocupado"
				5:
					turnos[4,5] = "Ocupado"
				6:
					turnos[4,6] = "Ocupado"
				7:
					turnos[4,7] = "Ocupado"
				8:
					turnos[4,8] = "Ocupado"
					
				De Otro Modo:
					
			Fin Segun
			
			
		De Otro Modo: 
			
	Fin Segun
	Si opcionHorario < 0 o opcionHorario > 8 Entonces // Validar opcion elegida
		Escribir "Opción no válida."
	Fin Si
Hasta Que opcionHorario > 0 y opcionHorario < 9


Escribir "Elija la vacuna a aplicar"

Definir bandera2 Como Entero
bandera2 = 0 // Llevar cuenta de las vacunas sin stock

Para i <- 0 Hasta 5 Con Paso 1 Hacer
	Si ConvertirANumero(vacunas[i,1]) > 0 Entonces
		Escribir i + 1 "-" vacunas[i,0]
	SiNo
		bandera2 = bandera2 + 1 // Si la columna del stock vale menos que 0, se aumenta bandera2 y cuando esta valga 6 significa que no hay mas stock de ninguna vacuna
	Fin Si
Fin Para



Si bandera2 <> 6 Entonces // Si sigue habiendo stock de vacunas
	
	
	Repetir
		Leer vacunaElegida
		Segun vacunaElegida Hacer // Se resta el stock y se aumenta el contador de vacunas por vacuna (Opcion 5 b)
				// El array es de caracter pero tiene un numero entonces si le quiero restar ese numero debo primero convertirlo a 
				//numero pero para poder guardar esa resta luego debo re convertirlo a texto o sera incompatible
			1:
				vacunas[0,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
				cantidadVacunas[0,1] = ConvertirATexto(ConvertirANumero(cantidadVacunas[0,1]) + 1)
			2:
				vacunas[1,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
				cantidadVacunas[1,1] = ConvertirATexto(ConvertirANumero(cantidadVacunas[1,1]) + 1)
			3:
				vacunas[2,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
				cantidadVacunas[2,1] = ConvertirATexto(ConvertirANumero(cantidadVacunas[2,1]) + 1)
			4:
				vacunas[3,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
				cantidadVacunas[3,1] = ConvertirATexto(ConvertirANumero(cantidadVacunas[3,1]) + 1)
			5:
				vacunas[4,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
				cantidadVacunas[4,1] = ConvertirATexto(ConvertirANumero(cantidadVacunas[4,1]) + 1)	
			6:
				vacunas[5,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
				cantidadVacunas[5,1] = ConvertirATexto(ConvertirANumero(cantidadVacunas[5,1]) + 1)
			De Otro Modo:
				
		Fin Segun
		
		// Validacion de opcion elegida
		Si vacunaElegida < 0 o vacunaElegida > 6 Entonces
			Escribir "Opción no válida."
		Fin Si
		
	Hasta Que vacunaElegida > 0 y vacunaElegida < 7
	
	
	
	// Habiendo pasado todas las validaciones, se guardan los datos del usuario en el array usuario
	
	Para i <- 0 Hasta tamaño - 1 Con Paso 1 Hacer
		Si usuario[i,6] <> "Ocupado" Entonces // Si la casilla 6 vale "Ocupado" se pasa al siguiente espacio para no sobreescribir un usuario ya existente
			usuario[i,0] = nombreIngresado
			usuario[i,1] = dniIngresado
			usuario[i,2] = ConvertirATexto(edadIngresada)
			Segun vacunaElegida Hacer
				1:
					usuario[i,3] = "Neumococo conjugada"
				2:
					usuario[i,3] = "Poliomielitis (IPV o Salk)"
				3:
					usuario[i,3] = "Quíntuple (o pentavalente)"
				4:
					usuario[i,3] = "Rotavirus"
				5:
					usuario[i,3] = "Meningococo"
				6:
					usuario[i,3] = "Tripe Viral"
					
			Fin Segun
			usuario[i,4] = ConvertirATexto(opcionDia)
			usuario[i,5] = ConvertirATexto(opcionHorario)
			usuario[i,6] = "Ocupado" // Se ocupa ese puesto
			Escribir usuario[i,1]
			
			// Se escriben los datos del usuario ya ingresado
			
			Escribir "Nombre: " usuario[i,0]
			Escribir "DNI: " usuario[i,1]
			Escribir "Edad: " usuario[i,2]
			Escribir "Vacuna: " usuario[i,3]
			Escribir "Dia: " Sin Saltar
			
			Segun ConvertirANumero(usuario[i,4]) Hacer
				1:
					Escribir "Lunes"
				2:
					Escribir "Martes"
				3:
					Escribir "Miercoles"
				4:
					Escribir "Jueves"
				5:
					Escribir "Viernes"
				De Otro Modo:
					
			Fin Segun
			
			Escribir "Horario: " Sin Saltar
			
			Segun ConvertirANumero(usuario[i,5]) Hacer
				1:
					Escribir "8:00"
				2:
					Escribir "8:30" 
				3:
					Escribir "9:00"
				4:
					Escribir "9:30"
				5:
					Escribir "10:00"
				6:
					Escribir "10:30"
				7:
					Escribir "11:00"
				8:
					Escribir "11:30"
					
			Fin Segun
			
			i = tamaño + 1 // Si se registra el usuario, i vale tamaño + 1 para que deje de iterar sobre los espacios no ocupados
			
		Fin Si
		
	Fin Para
	
SiNo // Si bandera2 vale 6
	Escribir "Se acabo el stock de las vacunas"
Fin Si

Fin Si // FinSi de la validacion que no estuviera ya registrado el DNI

Mientras Que opcionDia < 1 y opcionDia > 5

FinSubProceso

// Opcion 2

SubProceso buscarPaciente(usuario,tamaño)
	
	Repetir // Validacion del DNI
		escribir "Ingrese el DNI del paciente:"
		leer dni
		
		Si Longitud(dni) < 6 o Longitud(dni) > 8 Entonces
			
			Escribir "DNI inválido."
			
		Fin Si
		
	Hasta Que Longitud(dni) >= 6 y Longitud(dni) <= 8
	
	
	Para i<-0 Hasta tamaño - 1 Con Paso 1 Hacer // Se muestran los datos del usuario
		
		si usuario[i,1]==dni Entonces
			Para j<-0 Hasta 5 Con Paso 1 Hacer
				
				Segun j Hacer
					0:
						Escribir "Nombre: " usuario[i,j]
					1:
						Escribir "DNI: " usuario[i,j]
					2:
						Escribir "Edad: " usuario[i,j]
					3:
						Escribir "Vacuna: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer // Segun el valor de la casilla de la vacuna, se muestran una u otra
							1:
								Escribir "Neumococo conjugada"
							2:
								Escribir "Poliomielitis (IPV o Salk)"
							3:
								Escribir "Quíntuple (o pentavalente)"
							4:
								Escribir "Rotavirus"
							5:
								Escribir "Meningococo"
							6:
								Escribir "Tripe Viral"
							De Otro Modo:
								
						Fin Segun
						
					4:
						Escribir "Dia: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer// Segun el valor de la casilla del dia, se muestran uno u otro
							1:
								Escribir "Lunes"
							2:
								Escribir "Martes"
							3:
								Escribir "Miercoles"
							4:
								Escribir "Jueves"
							5:
								Escribir "Viernes"
							De Otro Modo:
								
						Fin Segun
					5:
						Escribir "Hora: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer// Segun el valor de la casilla del turno, se muestran uno u otro
							1:
								Escribir "8:00"
							2:
								Escribir "8:30"
							3:
								Escribir "9:00"
							4:
								Escribir "9:30"
							5:
								Escribir "10:00"
							6:
								Escribir "10:30"
							7:
								Escribir "11:00"
							8:
								Escribir "11:30"
						Fin Segun
				Fin Segun
			Fin Para
		FinSi
	Fin Para
	
FinSubProceso

// Opcion 3

SubProceso verAgendaVacunatorio(usuario,tamaño)
	
	Para i<-0 Hasta tamaño - 1 Con Paso 1 Hacer // Se muestran los turnos
		
		Para j<-0 Hasta 6 Con Paso 1 Hacer
			
			Si usuario[i,6] == "Ocupado" Entonces
				Segun j Hacer
					
					4:
						Escribir "Dia: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer
							1:
								Escribir "Lunes"
							2:
								Escribir "Martes"
							3:
								Escribir "Miercoles"
							4:
								Escribir "Jueves"
							5:
								Escribir "Viernes"
							De Otro Modo:
								
						Fin Segun
					5:
						Escribir "Hora: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer
							1:
								Escribir "8:00"
							2:
								Escribir "8:30"
							3:
								Escribir "9:00"
							4:
								Escribir "9:30"
							5:
								Escribir "10:00"
							6:
								Escribir "10:30"
							7:
								Escribir "11:00"
							8:
								Escribir "11:30"
							De Otro Modo:
								
						Fin Segun
					6: 
						Escribir usuario[i,j]
						
				Fin Segun
			Fin Si
		Fin Para
	Fin Para
	
FinSubProceso

// Opcion 4

SubProceso ordenar(usuario,tamaño)
	
	Repetir
		Escribir "Seleccione el tipo de ordenamiento: (a- Por edad , b- Por vacuna aplicada)"
		leer opcion4
		
		Si opcion4 <> "a" y opcion4 <> "b" Entonces
			Escribir "Opción no válida."
		Fin Si
		
	Hasta Que opcion4 = "a" o opcion4 = "b" // Se valida que se ingrese a o b
	
	
	
	Segun Minusculas(opcion4) Hacer
		"a": // ordenamiento por edad
			Para i<-0 Hasta tamaño -2 Con Paso 1 Hacer
				Para j<-i+1 Hasta tamaño -1 Con paso 1 Hacer
					si ConvertirANumero(usuario[i,2]) > ConvertirANumero(usuario[j,2]) Entonces // Si la columna de la edad es mayor a la de la linea siguiente, se intercambian
						Para k<-0 Hasta 7-1 Con Paso 1 Hacer
							
							aux<-usuario[i,k]
							usuario[i,k]<-usuario[j,k]
							usuario[j,k]<-aux
							
						Fin Para
					FinSi
				Fin Para
			Fin Para
			
			
		"b": // ordenamiento por vacuna a aplicar
			Para i<-0 Hasta tamaño -2 Con Paso 1 Hacer
				Para j<-i+1 Hasta tamaño -1 Con paso 1 Hacer		
					si usuario[i,3] > usuario[j,3] Entonces // Si la columna de la vacuna a aplicar es mayor alfabeticamente a la de la linea siguiente, se intercambian
						Para k<-0 Hasta 7-1 Con Paso 1 Hacer
							aux<-usuario[i,k]
							usuario[i,k]<-usuario[j,k]
							usuario[j,k]<-aux
						Fin Para
					FinSi
				Fin Para
			Fin Para
	Fin Segun
	
	// Se escriben los datos ordenados
	Para i<-0 Hasta tamaño - 1 Con Paso 1 Hacer // Se muestran los datos del usuario
		
			Para j<-0 Hasta 5 Con Paso 1 Hacer
				
				Segun j Hacer
					0:
						Escribir "Nombre: " usuario[i,j]
					1:
						Escribir "DNI: " usuario[i,j]
					2:
						Escribir "Edad: " usuario[i,j]
					3:
						Escribir "Vacuna: " usuario[i,j]
						
					4:
						Escribir "Dia: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer// Segun el valor de la casilla del dia, se muestran uno u otro
							1:
								Escribir "Lunes"
							2:
								Escribir "Martes"
							3:
								Escribir "Miercoles"
							4:
								Escribir "Jueves"
							5:
								Escribir "Viernes"
							De Otro Modo:
								
						Fin Segun
					5:
						Escribir "Hora: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer// Segun el valor de la casilla del turno, se muestran uno u otro
							1:
								Escribir "8:00"
							2:
								Escribir "8:30"
							3:
								Escribir "9:00"
							4:
								Escribir "9:30"
							5:
								Escribir "10:00"
							6:
								Escribir "10:30"
							7:
								Escribir "11:00"
							8:
								Escribir "11:30"
						Fin Segun
				Fin Segun
			Fin Para
			Escribir ""
	Fin Para
FinSubProceso

// Opcion 5

SubProceso listadoTurnos(cantidadTurnos,cantidadVacunas)
	
	Definir opcion1 Como Caracter
	
	Escribir "A- Cantidad turnos otorgados por día, B- Cantidad de vacunas a aplicar por día"
	
	Repetir
		Escribir "Seleccione el tipo de ordenamiento: (a- Por edad , b- Por vacuna aplicada)"
		
		leer opcion1
		Si opcion1 <> "a" y opcion1 <> "b" Entonces
			Escribir "Opción no válida."
		Fin Si 
		
	Hasta Que opcion1 = "a" o opcion1 = "b" // Se valida la opcion
	
	Segun Minusculas(opcion1) Hacer // Se convierte a minusculas por si ingresa una mayuscula
		"a":
			Escribir "Lista de turnos por día"
			Para i <- 0 Hasta 4 Con Paso 1 Hacer
				Para j <- 0 Hasta 1 Con Paso 1 Hacer
					
					Escribir cantidadTurnos[i,j] Sin Saltar // Se muestra el contador de turnos por dia
					Escribir " " Sin Saltar
				Fin Para
				Escribir ""
			Fin Para
			Escribir ""
			
		"b":
			Escribir "Cantidad de vacunas por cada vacuna"
			Para i <- 0 Hasta 5 Con Paso 1 Hacer
				Para j <- 0 Hasta 1 Con Paso 1 Hacer
					
					Escribir cantidadVacunas[i,j] Sin Saltar// Se muestra el contador de vacunas por vacuna
					Escribir " " Sin Saltar
				Fin Para
				Escribir ""
			Fin Para
			Escribir ""
		De Otro Modo:
			Escribir "Ingrese nuevamente la opcion"
	Fin Segun
	
FinSubProceso

