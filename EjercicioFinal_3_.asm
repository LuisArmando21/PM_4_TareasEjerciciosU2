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

msj1_EF3 db " Ingrese su edad ",0
msj2_EF3 db " Aproximadamente ha vivido: ",0
msj3_EF3 db " Meses: ",0
msj4_EF3 db " Semanas: ",0
msj5_EF3 db " Dias: ",0
msj6_EF3 db " Horas: ",0

Edad_EF3 dword 0
Meses_EF3 dword 0
Semanas_EF3 dword 0
Dias_EF3 dword 0
Horas_EF3 dword 0

Kilometros_EF3 dword 0
CostoKM_EF3 dword 0
.code
 mainEF3 PROC
;Lógica del Programa

	mov edx, offset msj1_EF3	;mensaje ingrese su edad
	call writeString
	call crlf
	call readint 
	mov Edad_EF3, eax	;respaldo edad
	
	;calculo meses
	mov eax, Edad_EF3
	mov ecx, 12
	mul ecx
	mov Meses_EF3, eax

	;calculo semanas
	mov ecx, 52
	mov eax, Edad_EF3
	mul ecx
	mov Semanas_EF3, eax

	;calculo dias
	mov ecx, 365
	mov eax, Edad_EF3
	mul ecx
	mov Dias_EF3, eax

	;calculo horas
	mov ecx, Dias_EF3
	mov eax, 24
	mul ecx
	mov Horas_EF3, eax

	mov edx, offset msj2_EF3	;mensaje aproximadamente
	call writeString
	call crlf

	mov edx, offset msj3_EF3	;mensaje meses
	call writeString
	mov eax, Meses_EF3
	call writedec
	call crlf

	mov edx, offset msj4_EF3	;mensaje semanas
	call writeString
	mov eax, Semanas_EF3
	call writedec
	call crlf


	mov edx, offset msj5_EF3	;mensaje dias
	call writeString
	mov eax, Dias_EF3
	call writedec
	call crlf

	mov edx, offset msj6_EF3	;mensaje horas
	call writeString
	mov eax, Horas_EF3
	call writedec
	call crlf
	



	
exit
mainEF3 ENDP
END mainEF3

