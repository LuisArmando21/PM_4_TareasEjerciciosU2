;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo Hernandez Licea Luis Armando
; Semestre: 8vo Semestre ISC

;Sueldo de un empleado, que trabaja N horas por Y días a la semana. 
;Considerando Jornadas Laborales de 40horas con un Sueldo de 10 pesos y Extras de 20 pesos 

;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj1_E4 db " Ingrese las horas trabajadas: ",0
msj2_E4 db " El sueldo es: ",0
horas1_E4 dword 1
sueldo_E4 dword 1
.code
 main4 PROC
;Lógica del Programa

	mov edx, offset msj1_E4
	call writeString		;escribe ebx 
	call readint			;guarda en eax
	mov horas1_E4, eax			;se respaldan las horas

;sueldo horas normales
cmp ebx, 40	;horas trabajadas
jg sueldoN	;salta si es mayor
	mov eax , 10
	mul ebx		;se multiplica eax por ebx y se guarda en el mismo
	mov sueldo_E4, eax
sueldoN:

cmp ebx,40
jle sueldoE	;salta si es menor o igual
	mov eax, horas1_E4
	mov sueldo_E4, 400	;sueldo jornada 40 horas 
	sub eax, 40			;Se queda solo con las horas extras
	mov ebx, 20
	mul ebx				;se obtiene sueldo horas extras
	add eax, sueldo_E4	;se suma el sueldo
	mov sueldo_E4, eax	

sueldoE:



mov edx, offset msj2_E4	;imprimir respuesta
	call writeString	
	mov eax, sueldo_E4
	call writedec

exit
main4 ENDP
END main4
