Proceso trabajofinal
	Escribir "Bienvenido"
	definir vacunas Como Caracter
	definir turnos Como Caracter
	Definir eleccion Como Entero
	Definir opcion4 Como Caracter
	definir opcion5 Como Caracter
	definir usuario Como Caracter //Array que contiene los datos del usuario
	
	Definir tamaño Como Entero
	tamaño = 3
	
	Dimension usuario[tamaño,7]
	
	
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
	
	
	
	
	
	//Menù de opciones 
	
	Repetir
		Escribir "elija una opcion"
		Escribir "1-reservar turno"  
		Escribir "2-Buscar paciente"
		Escribir "3-Ver agenda vacunatorio"
		escribir "4-Ordenar y mostrar lista pacientes (A- Por edad, B- Por vacuna a aplicar)"
		escribir "5-Listado/s (A- Cantidad turnos otorgados por día, B- Cantidad de vacunas a aplicar por vacuna) "
		escribir "6-Salir"
		
		leer eleccion 
		
		Segun eleccion Hacer
			1:  
				
				Escribir ""
				reservarTurno(vacunas,turnos,usuario)
				Escribir ""
				
			2: 
				
				Escribir ""
				buscarPaciente(usuario,tamaño)
				Escribir ""
				
			3:
				
				Escribir ""
				verAgendaVacunatorio(usuario,tamaño)
				Escribir ""
				
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
	Hasta Que eleccion	== 6
	
	
	
FinProceso

SubProceso reservarTurno(vacunas Por Referencia ,turnos Por Referencia ,usuario Por Referencia)
	Definir opcionDia Como Entero
	Definir opcionHorario Como Entero
	
	Definir nombreIngresado Como Caracter
	Definir dniIngresado Como Caracter
	Definir edadIngresada Como Caracter
	Definir vacunaElegida Como Entero
	Definir bandera Como Entero
	bandera = 0;
	
	Repetir
		
		
		
		Escribir "Bienvenido, Ingrese su Nombre y Apellido"
		Leer nombreIngresado
		
		Escribir "Ingrese su DNI"
		Leer dniIngresado
		
		Para i <- 0 Hasta tamaño Con Paso 1 Hacer
			
				Si dniIngresado == usuario[i,1] Entonces
					bandera = 1;
				Fin Si
			
		Fin Para
		
		Si bandera = 1 Entonces
			Escribir "Ya tenes un turno registrado"
			
			
		SiNo
			
			
			Escribir "Ingrese su edad (0.X Para meses de vida)"
			Leer edadIngresada
			
			
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
						
						Si turnos[0,i] <> "Ocupado" Entonces
							Escribir i "- " turnos[0,i]
						Fin Si
					Fin Para
					
					leer opcionHorario
					Segun opcionHorario Hacer
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
				
				leer opcionHorario
				Segun opcionHorario Hacer
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
			
			leer opcionHorario
			Segun opcionHorario Hacer
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
		
		leer opcionHorario
		Segun opcionHorario Hacer
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
		
		leer opcionHorario
		Segun opcionHorario Hacer
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
		
		
	De Otro Modo: Escribir "Opciòn Invàlida"
		
Fin Segun

Escribir "Elija la vacuna a aplicar"

Definir bandera2 Como Entero
bandera2 = 0

Para i <- 0 Hasta 5 Con Paso 1 Hacer
	Si ConvertirANumero(vacunas[i,1]) > 0 Entonces
		Escribir i + 1 "-" vacunas[i,0]
	SiNo
		bandera2 = bandera2 + 1
	Fin Si
Fin Para



Si bandera2 <> 6 Entonces
	
	Leer vacunaElegida
	Segun vacunaElegida Hacer
		1:
			vacunas[0,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
		2:
			vacunas[1,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
		3:
			vacunas[2,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
		4:
			vacunas[3,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
		5:
			vacunas[4,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
		6:
			vacunas[5,1] = ConvertirATexto(ConvertirANumero(vacunas[0,1]) - 1)
		De Otro Modo:
			
	Fin Segun
	
	
	
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			Si usuario[i,6] <> "Ocupado" Entonces
				usuario[i,0] = nombreIngresado
				usuario[i,1] = dniIngresado
				usuario[i,2] = edadIngresada
				usuario[i,3] = ConvertirATexto(vacunaElegida)
				usuario[i,4] = ConvertirATexto(opcionDia)
				usuario[i,5] = ConvertirATexto(opcionHorario)
				usuario[i,6] = "Ocupado"
				
				i = 3
				
			SiNo
				
			Fin Si
			
		Fin Para
	
		
		
	
SiNo
	Escribir "Se acabo el stock de las vacunas"
Fin Si






Fin Si


Mientras Que opcionDia < 1 y opcionDia > 5

FinSubProceso


SubProceso buscarPaciente(usuario,tamaño)
	
	
	escribir "ingrese el dni del cliente"
	leer dni
	Definir vacuna Como Caracter
	Definir dia Como Caracter
	Definir hora Como Caracter
	
	
	Para i<-0 Hasta tamaño - 1 Con Paso 1 Hacer
		
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
						Segun ConvertirANumero(usuario[i,j]) Hacer
							0:
								Escribir "Neumococo conjugada"
							1:
								Escribir "Poliomielitis (IPV o Salk)"
							2:
								Escribir "Quíntuple (o pentavalente)"
							3:
								Escribir "Rotavirus"
							4:
								Escribir "Meningococo"
							5:
								Escribir "Tripe Viral"
							De Otro Modo:
								
						Fin Segun
						
					4:
						Escribir "Dia: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer
							0:
								Escribir "Lunes"
							1:
								Escribir "Martes"
							2:
								Escribir "Miercoles"
							3:
								Escribir "Jueves"
							4:
								Escribir "Viernes"
							De Otro Modo:
								
						Fin Segun
					5:
						Escribir "Hora: " Sin Saltar
						Segun ConvertirANumero(usuario[i,j]) Hacer
							0:
								Escribir "8:00"
							1:
								Escribir "8:30"
							2:
								Escribir "9:00"
							3:
								Escribir "9:30"
							4:
								Escribir "10:00"
							5:
								Escribir "10:30"
							6:
								Escribir "11:00"
							6:
								Escribir "11:30"
							De Otro Modo:
								
						Fin Segun
					De Otro Modo:
						
				Fin Segun
				
				
			Fin Para
		FinSi
	Fin Para

	
	
	
	
FinSubProceso

SubProceso verAgendaVacunatorio(usuario,tamaño)
	Definir vacuna Como Caracter
	Definir dia Como Caracter
	Definir hora Como Caracter
	
	
	Para i<-0 Hasta tamaño - 1 Con Paso 1 Hacer
		
		
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
								0:
									Escribir "8:00"
								1:
									Escribir "8:30"
								2:
									Escribir "9:00"
								3:
									Escribir "9:30"
								4:
									Escribir "10:00"
								5:
									Escribir "10:30"
								6:
									Escribir "11:00"
								7:
									Escribir "11:30"
								De Otro Modo:
									
							Fin Segun
						6: 
							Escribir usuario[i,j]
						De Otro Modo:
						
					Fin Segun
					
			
				Fin Si
				
				
				
			Fin Para
		
	Fin Para
	
	
	
	
	
FinSubProceso
