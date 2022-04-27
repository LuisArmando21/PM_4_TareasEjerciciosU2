TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.
; 

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj1_P13 db "Ingresa un numero de tres digitos: ",0
msj2_P13 db "Unidad: ",0
msj3_P13 db "Decena: ",0
msj4_P13 db "Centena: ",0
numero dword 0
.code 

main13 PROC
;Lógica del Programa

	mov edx, offset msj1_P13
	call writestring
	call readint
	call crlf

	mov numero, eax   ;789
	mov ebx, 100d
	mov edx, 0
	div ebx

	mov edx, offset msj4_P13
	call writestring
	call writedec   ;7
	call crlf

	mul ebx
	sub numero, eax   
	mov eax, numero   ;89
	mov ebx, 10d
	mov edx, 0
	div ebx

	mov edx, offset msj3_P13
	call writestring
	call writedec   ;8
	call crlf

	mul ebx
	sub numero, eax   
	mov eax, numero   ;9

	mov edx, offset msj2_P13
	call writestring
	call writedec   ;9
	call crlf

exit

main13 ENDP

END main13