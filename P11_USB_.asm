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
; Área de Declaración de Variables´
p11_msj1 db "Ingrese la capacidad de las memorias usb: ",0
p11_msj2 db "Ingrese los gigabytes almacenados en el disco duro: ",0
p11_msj3 db "Cantidad de memorias usb para hacer una copia de seguridad son ",0
.code 

main11 PROC
;Lógica del Programa

	mov edx, offset p11_msj1
	call writestring
	call readint
	mov ebx, eax
	mov edx, offset p11_msj2
	call writestring
	call readint

	mov edx, offset p11_msj3
	call writestring
	mov edx, 0
	div ebx
	call writedec
	call crlf

exit

main11 ENDP

END main11