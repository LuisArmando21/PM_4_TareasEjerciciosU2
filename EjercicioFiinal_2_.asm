TITLE Introduccion

;DESCRPICIÓN
;Objetivo: La compañía de autobuses “La curva loca” requiere determinar 
;el cos­to que tendrá el boleto de un viaje sencillo, esto basado en los 
;kilóme­tros por recorrer y en el costo por kilómetro.
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

msj1_EF2 db " La Curva Loca ",0
msj2_EF2 db " Kilometros a recorrer: ",0
msj3_EF2 db " Costo por kilometro ",0
msj4_EF2 db " El costo es: ",0
msj5_EF2 db "$ por recorrer ",0
msj6_EF2 db " kilometros  ",0

Kilometros_EF2 dword 0
CostoKM_EF2 dword 0
.code
 mainEF2 PROC
;Lógica del Programa

	mov edx, offset msj1_EF2
	call writeString
	call crlf
	call crlf

	mov edx, offset msj2_EF2	;mensaje kilometros a recorrer
	call writeString
	call readint	
	mov Kilometros_EF2, eax
	

	mov edx, offset msj3_EF2	;mensaje costo kilometros
	call writeString
	call readint	
	mov CostoKM_EF2, eax


	mov edx, offset msj4_EF2	;mensaje el costo es
	call writeString
	mov ecx, Kilometros_EF2
	mul ecx						; se multiplica costo por kilometros a recorrer
	call writedec

	mov edx, offset msj5_EF2	;mensaje por recorrer
	call writeString
	
	mov eax, Kilometros_EF2
	call writedec

	mov edx, offset msj6_EF2	;mensaje km
	call writeString
	call crlf

exit
mainEF2 ENDP
END mainEF2

