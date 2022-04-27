TITLE Introduccion

; DESCRPICIÓN
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hernández Hernández
; Ejericio 4 (24) Imprmir la nota obtenida por un alumno que obtuvo x calificación

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
;msj0_P24_Eje db "Ingrese la calificacion del alumno: ",0
;msj1_P24_Eje db "La nota es",0
;msj2_P24_A db "A",0
;msj3_P24_B db "B",0
;msj4_P24_C db "C",0
;msj5_P24_D db "D",0
;msj6_P24_E db "E",0
;msj7_P24_F db "F",0
msj1_E4 db " Ingrese Calificacion: ",0
msjA_E4 db " La nota es A ",0
msjB_E4 db " La nota es B ",0
msjC_E4 db " La nota es C ",0
msjD_E4 db " La nota es D ",0
msjE_E4 db " La nota es E ",0
msjF_E4 db " La nota es F ",0
msjP_E4 db " Ingrese 1 para continuar o 0 para salir ",0

.code 

main24 PROC
;Lógica del Programa
	
	;mov edx, offset msj0_P24_Eje
	;call writeString
	;call readInt
	;call CrLf

	;cmp eax, 6   ;
	;je calif_6   ; calif == 6? Si es true, salta
	;jl calif_5   ; calif < 6? Si es true, salta
	;Si no es algunas de las anteriores, entonces comparo de nuevo...

		;cmp eax, 8
			;calif_8:
			;je calif_8   ;calif === 8? si es true, salta
			;jl calif_7   ;calif < 8 y calif > 6? Si es treu, salta
			;Si no es algunas de las anteriores, entonces comparo de nuevo...

			;cmp eax, 9
			;je calif_9   ;calif == 9? Si es true, salta
			;si no es algunas de las anteriores, entonces sera 10

			;mov edx, offset msj2_P24_A
			;call writeString

	;calif_6:
		;mov edx, offset msj6_P24_E
		;jmp salir

	;calif_5:
		;mov edx, offset msj7_P24_F
		;jmp salir

	;calif_7:
		;mov edx, offset msj5_P24_D
		;jmp salir

	;calif_8:
		;mov edx, offset msj4_P24_C
		;jmp salir

	;calif_9:
		;mov edx, offset msj3_P24_B
		;jmp salir

;salir:
;call crlf
;call writeString

repetir:

	mov edx, offset msj1_E4	;mensaje 
	call writeString
	call readint	;n numeros se guarda en eax

	cmp eax, 10	
		jl noEsA
		mov edx, offset msjA_E4
		call writeString
		jmp continuar
		noEsA:

	cmp eax, 9
		jl noEsB
		mov edx, offset msjB_E4
		call writeString
		jmp continuar
		noEsB:

	cmp eax, 8
		jl noEsC
		mov edx, offset msjE_E4
		call writeString
		jmp continuar
		noEsC:

	cmp eax, 7
		jl noEsD
		mov edx, offset msjD_E4
		call writeString
		jmp continuar
		noEsD:

	cmp eax, 6
		jl noEsE
		mov edx, offset msjE_E4
		call writeString
		jmp continuar
		noEsE:

	cmp eax, 5
		jg noEsF
		mov edx, offset msjF_E4
		call writeString
		jmp continuar
		noEsF:

	continuar:
		call crlf
		mov edx, offset msjP_E4
		call writeString
		call readint

	cmp eax, 1
	jz repetir

exit

main24 ENDP

END main24