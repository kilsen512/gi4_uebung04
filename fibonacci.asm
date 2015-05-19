SECTION .data
	ergebnis dd 0
	n dd 8	
	high1 dd 1
	
SECTION .text
	global main

main:
	mov eax, 0			;Zwischenergebnis
	mov ecx, dword [n]		;Counter, gesuchte fibonacci Zahl
schleife:
	cmp ecx, 0	
	je end
	
	mov edx, eax			;temp var	
	add eax, [high1]		;fn=fn_1+fn_2	

	mov [high1], edx		;save old result in high1
	dec ecx
	jmp schleife

end:
	mov dword [ergebnis], eax	
	mov ebx, 0
	mov eax, 1
	int 0x80
