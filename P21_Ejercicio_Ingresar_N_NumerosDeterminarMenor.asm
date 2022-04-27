TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hernández Hernández
; Calcular de N números donde N es ingresado lo ingresa el usuario, determinar cual es el menor

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj0_Eje db "Ingrese la cantidad de numeros que desea evaluar: ",0
msj1_Eje db "Ingrese un numero: ",0
msj2_Eje db "El numero menor es: ",0

.code 

main21 PROC
;Lógica del Programa

	mov edx, offset msj0_Eje
	call writeString
	call readInt	;n numeros se guarda en eax
	call CrLf

	mov ebx, eax	;ecx sera n

	ciclo:
		mov edx, offset msj1_Eje
		call writeString
		call readInt   ;guarda en eax
		cmp eax, ecx
		ja menor       ;salta si op1 > op2
			mov ecx, eax   ;se guarda el mayor en ecx
		menor: 
		dec ebx
		cmp ebx,0

	jg ciclo
		mov edx, offset msj2_Eje
		call crlf
		call writeString
		mov eax, ecx
		call writeDec

exit

main21 ENDP

END main21