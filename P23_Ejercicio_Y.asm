TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hern�ndez Hern�ndez
; Simular el funcionamiento de una compuerta OR
; entrada1 (0, 1)
; entrada2 (0, 1)
;  salida1 (0, 1)

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msj0_Eje23 db "Ingrese el valor de Y: ",0
msj1_Eje23 db "Ingrese un numero: ",0
msj2_Eje23 db "El valor actual de Y es: ",0

.code 

main23 PROC
;L�gica del Programa

	mov edx, offset msj0_Eje23
	call writeString   ;Se despliega el msj0_Eje23
	call readInt
	call CrLf

	mov ebx, eax   ; Se respalda el valor de Y en ebx

	ciclo:
		mov edx, offset msj1_Eje23
		call writeString
		call readInt

		sub ebx, eax   ;ebx - eax

		cmp ebx, 0
		jg ciclo

exit

main23 ENDP

END main23