TITLE Introduccion

;DESCRPICIÓN
;Objetivo: “El náufrago satisfecho” ofrece hamburguesas 
;sencillas, dobles y triples, las cuales tienen un costo 
;de $20, $25 y $28 respectivamente. La empresa acepta 
;tarjetas de crédito con un cargo de $25 sobre la compra. 
;Suponiendo que los clientes adquieren sólo un tipo de hamburguesa. 
;Se quiere determinar cuánto debe pagar una persona por N hamburguesas.

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

msj1_EF5 db " El naufrago satisfecho ",0
msj2_EF5 db " 1 - Hamburgesa sencilla $20 ",0
msj3_EF5 db " 2 - Hamburgesa doble $25 ",0
msj4_EF5 db " 3 - Hamburgesa triple $28 ",0
msj5_EF5 db " Tipo de hamburgesa:  ",0
msj6_EF5 db " Ingrese cantidad de hamburgesas:  ",0
msj7_EF5 db " Costo de las hamburgesas:  ",0
msj8_EF5 db " Total a a pagar a credito:  ",0
msj9_EF5 db "$  ",0

Edad_EF5 dword 0


Kilometros_EF5 dword 0
CostoKM_EF5 dword 0
.code
 mainEF5 PROC
;Lógica del Programa

	mov edx, offset msj1_EF5	
	call writeString
	call crlf
	call crlf
	mov edx, offset msj2_EF5	
	call writeString
	call crlf
	mov edx, offset msj3_EF5	
	call writeString
	call crlf
	mov edx, offset msj4_EF5	
	call writeString
	call crlf
	mov edx, offset msj5_EF5	
	call writeString
	call readint	;se guarda en eax
	mov ecx, eax	;se respalda en ecx tipo hamburgesa 

	mov edx, offset msj6_EF5	
	call writeString	
	call readint	;se lee cantidad de hamburgesas

	call crlf
	cmp ecx, 1
	je sencilla
	cmp ecx, 2
	je doble
	cmp ecx, 3
	je triple



	sencilla:
	mov ecx, 20
	mul ecx		;multiplica eax * ecx	
	jz salto

	doble:
	mov ecx, 25
	mul ecx		;multiplica eax * ecx
	jz salto
	
	triple:
	mov ecx, 28
	mul ecx		;multiplica eax * ecx
	
	salto:
	mov edx, offset msj7_EF5	
	call writeString	
	call writedec
	mov edx, offset msj9_EF5	
	call writeString	
	call crlf

	mov edx, offset msj8_EF5	
	call writeString
	add eax, 25
	call writedec
	mov edx, offset msj9_EF5	
	call writeString
	call crlf

	
exit
mainEF5 ENDP
END mainEF5

