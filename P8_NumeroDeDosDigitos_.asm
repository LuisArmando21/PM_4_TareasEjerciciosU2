TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre. 

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
p3_msj1 db "Ingrese un numero: ",0
p3_msj2 db "El numero es: ",0
numero_decena dword 0
numero_unidad dword 0
.code 

main8 PROC
;L�gica del Programa

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