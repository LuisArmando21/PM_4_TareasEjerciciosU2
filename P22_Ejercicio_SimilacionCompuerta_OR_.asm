TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hernández Hernández
; Simular el funcionamiento de una compuerta OR
; entrada1 (0, 1)
; entrada2 (0, 1)
;  salida1 (0, 1)

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj1_E2 db " Valor 1: ",0
msj2_E2 db " Valor 2: ",0
msj3_E2 db " Resultado: ",0

.code 

main22 PROC
;Lógica del Programa

	mov edx, offset msj1_E2
	call writeString
	call readint	;n numeros se guarda en eax
	mov ebx, eax

		mov edx, offset msj2_E2
		call writeString
		call readint	;n numeros se guarda en eax
		mov ecx, eax
		mov eax, 1
	cmp ebx, 1
	jz salto1
	cmp ecx, 1
	jz salto2
		mov eax, 0
	salto1:
	salto2:
		mov edx, offset msj3_E2
		call writeString
		call writedec

exit

main22 ENDP

END main22