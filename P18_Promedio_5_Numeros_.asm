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
p18_txt1 db "ingresa un numero: ",0
p18_txt2 db "el promedio es: ",0
.code 

main18 PROC
;Lógica del Programa

	mov edx, offset p18_txt1
	call writestring
	call readint
	mov ebx, 0
	add eax, ebx
	mov ebx, eax

	mov edx, offset p18_txt1
	call writestring
	call readint
	add eax, ebx
	mov ebx, eax

	mov edx, offset p18_txt1
	call writestring
	call readint
	add eax, ebx
	mov ebx, eax

	mov edx, offset p18_txt1
	call writestring
	call readint
	add eax, ebx
	mov ebx, eax

	mov edx, offset p18_txt1
	call writestring
	call readint
	add eax, ebx
	mov ebx, 5
	mov edx, 0
	div ebx
	mov edx, offset p18_txt2
	call writestring
	call writedec

exit

main18 ENDP

END main18