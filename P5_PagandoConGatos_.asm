TITLE Introduccion

; DESCRPICI�N
; Objetivo: Archivo de Ejemplo

; Autore(s):
; Mtro. Alejandro Garcia
; Su Nombre.Angel Anastasio Hern�ndez Hern�ndez
; Programa #5: Pagando con gatos. Un art�culo de N pesos debe ser pagado con gatos,
; donde cada gato equivale a 5 pesos. Solo se aceptan 4 pesos o menos, lo dem�s
; deber� ser pagado en gatos. 

; Semestre: 8vo Semestre ISC
; FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data

; �rea de Declaraci�n de Variables
msj0_P5 db "Ingresa el precio del producto: ",0
msj1_P5 db "Cantidad de gatos a pagar: ",0
msj2_P5 db "Cantidad de monedas a dar para completar el pago: ",0
.code 

main5 PROC
;L�gica del Programa

	mov edx, offset msj0_P5
	call writeString
	call readInt    ;Lee un dato y se guarda en eax: 13
	call CrLf

	mov ebx, eax    ;Se respalda eax en ebx, ebx = 13, eax = 13
	mov ecx, 5d     ;ecx almacena la cantidad de pesos que equivale un gato, ecx = 5d pesos
	mov edx, 0      ;Se limpia el registro para evitar un sobre flujo
	div ecx         ;Se divide eax 12 / ecx 5
					;El resultado de la divisi�n de almacena en eax = 2

	mov edx, offset msj1_P5
	call writeString
	call writeDec   ;Se muestra la cantidad de gatos a pagar, el resultado se guarda en eax = 2
	call CrLf
	call CrLf

	mul ecx
	sub ebx, eax

	mov eax, ebx

	mov edx, offset msj2_P5
	call writeString
	call writeDec
	call CrLf

exit

main5 ENDP

END main5