TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hernández Hernández
; Programa #6: Calcular el IMC

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data

; Área de Declaración de Variables
msj0_P6 db "Ingresa tu peso en KG: ",0
msj1_P6 db "Ingresa tu estatura en M: ",0
msj2_P6 db "Tu masa corporal es de: ",0
.code 

main6 PROC
;Lógica del Programa
	
	mov edx, offset msj0_P6
	call writeString
	call readInt
	call crLf

	mov ebx, eax

	mov edx, offset msj1_P6
	call writeString
	call readInt
	call crLf

	mul eax
	mov edx, 0
	div ebx

	mov edx, offset msj2_P6
	call writeString
	call writeDec
	call CrLf

exit

main6 ENDP

END main6