TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre: Angel Anastasio Hern�ndez Hern�ndez

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
t_P1msj_25 db " X ",0
t_P2msj_25 db " = ",0

.code 

main25 PROC
;L�gica del Programa
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	; Ejercicio: Realizar la version de este programa empleando al segmento de Pila
	mov ebx, 1 ; la impresion de las tablas comienza en 1 

	ciclo1:

		mov ecx, 1 ; contador de la tabla

		ciclo2:
			mov eax, ebx  ; para regresar el valor de tabla
			call writedec 

			mov edx, offset t_P1msj_25
			call writestring

			mov eax, ecx
			call writedec

			mov edx, offset t_P2msj_25
			call writestring

			;resuelve
			mul ebx
			call writedec

			call crlf

			inc ecx
			cmp ecx, 10
			jle ciclo2

		call crlf

		inc ebx
		cmp ebx, 10
		jle ciclo1
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
exit

main25 ENDP

END main25