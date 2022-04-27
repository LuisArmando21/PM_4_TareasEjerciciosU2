;Codigo a copiar como plantilla 

TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo Hernandez Licea Luis Armando
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj1_19 db " Cantidad a ingresar: ",0
msj2_19 db " El mayor fue : ",0
mayor_19 dword 0

.code
 main19 PROC
;Lógica del Programa
	
	mov edx, offset msj1_19
	call writeString
	call readint	;eax se guarda 
	mov ebx, eax	;se mueve a ebx
	mov ecx,0		;se limpia ecx
ciclo:
	call readint	;se guarda en eax

	cmp eax, ecx
	jl noMayor		;salta si op1 < op2
	mov ecx, eax	;se guarda el mayor en ecx
	noMayor: 

	dec ebx
	cmp ebx,0
jg ciclo

	call crlf
	mov edx, offset msj2_19
	mov eax, ecx
	call writestring
	call writedec
exit
main19 ENDP
END main19
