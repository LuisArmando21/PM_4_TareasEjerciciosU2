TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo Hernandez Licea Luis Armando
; Semestre: 8vo Semestre ISC
;Calcular la distancia recorrida (D) por una persona que tiene una velocidad constante (V) durante un cierto tiempo (T)
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj1_E7 db " Ingrese la velocidad Km/h: ",0
msj2_E7 db " Ingrese el tiempo H: ",0
msj3_E7 db " Los KM recorridos son: ",0

.code
 mainE7 PROC
;Lógica del Programa
	mov edx, offset msj1_E7
	call writeString
	call readint
	mov ebx, eax	;se respalda eax en ebx velocidad

	mov edx, offset msj2_E7
	call writeString
	call readint	;se guarda en eax el tiempo

	mul ebx			; se multiplica eax tiempo por ebx velocidad, resultado en eax

mov edx, offset msj3_E7	;imprimir respuesta
	call writeString		
	call writedec
	call crlf


exit
mainE7 ENDP
END mainE7
