TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hern�ndez Hern�ndez
; Programa #20: Pedir N n�meros e imprimir la sumatoria de todos ellos

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msj0_P20 db "Ingrese la cantidad de numeros que desea capturar: ",0
msj1_P20 db "Ingrese un numero: ",0
msj2_P20 db "La sumatoria de los numero ingresados es: ",0
.code 

main20 PROC
;L�gica del Programa

	mov edx, offset msj0_P20
	call writeString
	call readInt
	call CrLf

	mov ecx, eax
	mov ebx, 0

	ciclo:
		mov edx, offset msj1_P20
		call writeString
		call readInt
		add eax, ebx
		mov ebx, eax

	dec ecx
	cmp ecx, 0
	jg ciclo

	call CrLf
	mov edx, offset msj2_P20
	call writeString
	call writeDec
	call CrLf

exit

main20 ENDP

END main20