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
p9_msj1 db "Ingrese la base: ",0
p9_msj2 db "Ingrese la altura: ",0
p9_msj3 db "El area es: ",0
.code 

main9 PROC
;Lógica del Programa

	mov edx, offset p9_msj1
	call writestring
	call readint
	call crlf
	mov ebx, eax

	mov edx, offset p9_msj2
	call writestring
	call readint
	call crlf
	
	mul ebx
	mov ebx, 2
	mov edx, 0
	div ebx
	mov edx, offset p9_msj3
	call writestring
	call writedec
	call crlf

exit

main9 ENDP

END main9