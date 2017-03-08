
;ZVLASTNOSTI BODKOVEHO ZAPISU

;PROGRAM VYPISE ZADAJ 123

;treba naplnit ds, ale je jedno akou adresou z dat
 ;- nemusi byt prva!
;nemusi byt assume
; nemusi byt ends




name znak          ;pseudoinstrukcia na pomenovanie tohoto programu-modulu
                   ;nie je to meno suboru,v ktorom je program ulozeny

.model small       ; deklaracia maleho modulu

.stack 100h        ; deklaracia zasobnikoveho segmentu velkosti 256B

.data
ent equ 13 
x db '0'
y db '1'
menu db 'zadaj ','$'	
z db '2'

.code              ; zaciatok segmentu instrukcii

start:             ; navestie prvej instrukcie
	mov ax,@DATA; alebo seg data, seg menu
	mov ds,ax
	mov dx,offset menu
	mov ah,9
	int 21h
	inc x
	mov al,x
	mov dl,al
	mov ah,2
	int 21h
	inc y
	mov dl,y
	mov ah,2
	int 21h
	inc z
	mov dl,z
	mov ah,2   
	int 21h   
	mov ah,4ch 
	int 21h    
	end start 	