;Codigo a copiar como plantilla 

TITLE Introduccion

;DESCRPICI�N
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo Hernandez Licea Luis Armando
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
msj1_tmsj2 db " Serie fibonachi candidad: ",0
utimo_16 dword 1
.code
 main16 PROC
;L�gica del Programa
	mov edx, offset msj1_tmsj2
	call writeString
	call readint	;eax se guarda 
	mov ebx, eax	;se mueve a ebx
	mov ecx, 1	;valor 1
	mov eax, 1	;valor 2
	mov edx, 2

ciclo:
	add eax, ecx	;se hace la suma uno mas el ultimo resultado	
	call writedec	;se imprime eax
	call crlf
	
	cmp edx, 0
	jle continuar
	mov ecx, utimo_16	;se mueve el ultimo resultado 
	mov utimo_16, eax
	mov edx, 2
	continuar: 
	dec edx
	
	
	
	dec ebx
	cmp ebx,0
jg ciclo

exit
main16 ENDP
END main16
