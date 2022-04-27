TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Se requiere determinar cuál es acomodo (de mayor a menor) 
;que se le debe dar a tres objetos con valor diferente.

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

msj1_EF4 db " Valor objeto 1: ",0
msj2_EF4 db " Valor objeto 2: ",0
msj3_EF4 db " Valor objeto 3: ",0
msj4_EF4 db " El orden de mayor a menor es: ",0


Obj1_EF4 dword 0
Obj2_EF4 dword 0
Obj3_EF4 dword 0
Mayor4_EF4 dword 0
Medio5_EF4 dword 0
Menor6_EF4 dword 0

Kilometros_EF3 dword 0
CostoKM_EF3 dword 0
.code
 mainEF4 PROC
;Lógica del Programa

	mov edx, offset msj1_EF4	;Mensaje Ingrese valor objeto 1
	call writeString
	call readint				;se realiza lectura
	mov Obj1_EF4, eax	
	call crlf
	
	mov edx, offset msj2_EF4	;Mensaje Ingrese valor objeto 2
	call writeString
	call readint				;se realiza lectura
	mov Obj2_EF4, eax	
	call crlf

	mov edx, offset msj3_EF4	;Mensaje Ingrese valor objeto 3
	call writeString
	call readint				;se realiza lectura
	mov Obj3_EF4, eax	
	call crlf
	
;se busca el mayor----------------
	mov eax, Obj1_EF4
	mov Mayor4_EF4, eax
	mov ebx, Obj2_EF4
	cmp eax, ebx
	jg mayor1			;Salta si eax es mayor a ebx
	mov Mayor4_EF4, ebx
	mov eax, Mayor4_EF4
	mayor1:

	mov ebx, Obj3_EF4
	cmp eax, ebx
	jg mayor2			;Salta si eax es mayor a ebx
	mov Mayor4_EF4, ebx
	mov eax, Mayor4_EF4
	mayor2:

;se busca él menor ---------------

	mov eax, Obj1_EF4
	mov Menor6_EF4, eax
	mov ebx, Obj2_EF4
	cmp eax, ebx
	jl menor1			;Salta si eax es menor ebx
	mov Menor6_EF4, ebx
	mov eax, Menor6_EF4
	menor1:

	mov ebx, Obj3_EF4
	cmp eax, ebx
	jl menor2			;Salta si eax es menor ebx
	mov Menor6_EF4, ebx
	mov eax, Menor6_EF4
	menor2:


;se busca él medio --------------------------------------
	mov ebx, Obj3_EF4
	mov Medio5_EF4, ebx

	mov eax, Mayor4_EF4 
	mov ebx, Obj1_EF4
	cmp eax, ebx	
	je medio1			;Salta si si es igual
	mov eax, Menor6_EF4 
	cmp eax, ebx
	je medio1			;Salta si si es igual
	mov Medio5_EF4, ebx
	medio1:

	mov eax, Mayor4_EF4
	mov ebx, Obj2_EF4
	cmp eax, ebx	
	je medio2			;Salta si es igual
	mov eax, Menor6_EF4 
	cmp eax, ebx
	je medio2			;Salta si si es igual
	mov Medio5_EF4, ebx	
	medio2:

	mov eax, Mayor4_EF4
	call writedec
	call crlf
	mov eax, Medio5_EF4
	call writedec
	call crlf
	mov eax, Menor6_EF4
	call writedec
	call crlf


	
exit
mainEF4 ENDP
END mainEF4

