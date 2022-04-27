TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre. Angel Anastasio Hernández Hernández
; Programa #3: Cubo de un número

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj0_P3 db "Ingresa un numero para elevarlo al cubo: ",0
msj1_P3 db "El resultado es: ",0
.code 

main3 PROC
;Lógica del Programa

	mov edx, offset msj0_P3
	call writeString
	call readInt
	
	mov ebx, eax
	mov ecx, eax

	mul eax

	mov edx, offset msj1_P3
	call writeString

	mul ecx
	
	call writeDec
	call crLf

exit

main3 ENDP

END main3