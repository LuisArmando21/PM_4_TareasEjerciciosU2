TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre. 

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
p3_msj1 db "Ingrese un numero: ",0
p3_msj2 db "El numero es: ",0
numero_decena dword 0
numero_unidad dword 0
.code 

main8 PROC
;Lógica del Programa

	mov edx, offset p3_msj1
	call writestring
	call readint

	mov ecx, eax
	mov ebx, 10
	mov edx, 0
	div ebx
	mov numero_decena, eax
	mul ebx
	sub ecx, eax
	mov numero_unidad, ecx
	
	mov edx, offset p3_msj2
	call writestring
	mov eax, numero_unidad
	call writedec
	mov eax, numero_decena
	call writedec
	call crlf

exit

main8 ENDP

END main8