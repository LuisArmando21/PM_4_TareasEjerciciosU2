TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Una modista, para realizar sus prendas de vestir, encarga las X telas 
;que necesita al ex­tranjero. Para cada pedido, tiene que proporcionar las medidas 
;de las telas en centímetros, pero ella generalmente las tiene en metros. Ayúdale 
;a determinar cuántos centímetros de cada tela debe pedir con base en los metros que requiere.
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

msj1_EF1 db " Cantidad telas: ",0
msj2_EF1 db " Metros tela  ",0
msj3_EF1 db " Centimetos a pedir: ",0
msj4_EF1 db ": ",0
msj5_EF1 db " CM ",0


.code
 mainEF1 PROC
;Lógica del Programa

	mov edx, offset msj1_EF1
	call writeString

	call readint		
	mov ecx, eax			;ecx se utilizara como control de ciclo	
	mov ebx,1		;se limpia ebx

ciclo:
	mov edx, offset msj2_EF1	;mensaje 
	call writeString
	mov eax, ebx
	call writedec			;escribe inidce
	mov edx, offset msj4_EF1	;mensaje 
	call writeString
	call readint			;recibe metros 
	mov edx, offset msj3_EF1	;mensaje 
	call writeString
	mov edx, 100
	mul edx		;multiplica eax por 100
	
	call writedec
	mov edx, offset msj5_EF1	;mensaje 
	call writeString

	call crlf

	inc ebx
	cmp ebx, ecx
jle ciclo

	

exit
mainEF1 ENDP
END mainEF1
