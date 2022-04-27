TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hernández Hernández
; Programa #15: Determinante de una matriz 2x2

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj0_P15 db "Ingresa un numero en la posicion [0, 0]: ",0
msj1_P15 db "Ingresa un numero en la posicion [0, 1]: ",0
msj2_P15 db "Ingresa un numero en la posicion [1, 0]: ",0
msj3_P15 db "Ingresa un numero en la posicion [1, 1]: ",0
msj4_P15 db "La determinante de la matrix 2x2 es: ",0
posicion_CeroCero dword 0
posicion_CeroUno dword 0
posicion_UnoCero dword 0
posicion_UnoUno dword 0
.code 

main15 PROC
;Lógica del Programa

	mov edx, offset msj0_P15
	call writeString
	call readInt
	mov posicion_CeroCero, eax

	mov edx, offset msj1_P15
	call writeString
	call readInt
	mov posicion_CeroUno, eax

	mov edx, offset msj2_P15
	call writeString
	call readInt
	mov posicion_UnoCero, eax

	mov edx, offset msj3_P15
	call writeString
	call readInt
	mov posicion_UnoUno, eax

	mov eax, 1d
	mul posicion_CeroCero
	mul posicion_UnoUno
	mov ebx, eax

	mov eax, 1d
	mul posicion_CeroUno
	mul posicion_UnoCero
	mov ecx, eax

	call CrLf

	sub ebx, ecx
	mov eax, ebx
	
	mov edx, offset msj4_P15
	call writeString
	call writeDec
	call CrLf

exit

main15 ENDP

END main15