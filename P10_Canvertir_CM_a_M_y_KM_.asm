TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo Hernandez Licea Luis Armando
; Semestre: 8vo Semestre ISC
;Convertir de centímetros a metros y kilómetros
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

.data
; Área de Declaración de Variables
msj1_E10 db " Ingrese CM ",0
msj2_E10 db " Los Metros son: ",0
msj3_E10 db " Los Kilometros son: ",0

metros dword 1
kilometros dword 1
centimetros dword 1

.code
 mainE10 PROC
;Lógica del Programa
	mov edx, offset msj1_E10
	call writeString
	call readint		; cm en eax
	mov ebx, 0

ciclo1:
cmp eax, 100	
jl metrosC
	sub eax, 100
	inc ebx
jmp ciclo1
metrosC:
mov metros, ebx

mov eax, ebx	; metros
mov ebx, 0
ciclo2:
cmp eax, 1000	
jl kmC
	sub eax, 1000
	inc ebx
jmp ciclo2
kmC:
mov kilometros, ebx



mov edx, offset msj2_E10
call writeString
mov eax, metros
call writedec
call crlf
mov edx, offset msj3_E10
call writeString
mov eax, kilometros
call writedec

call crlf
exit
mainE10 ENDP
END mainE10
