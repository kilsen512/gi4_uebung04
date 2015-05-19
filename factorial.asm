SECTION .data
	ergebnis dd 0
	n dd 8	
	
SECTION .text
	global main

main:
	mov eax, dword [n]	;Zwischenergebnis
	mov ecx, 1		;Counter
schleife:
	cmp ecx, dword [n]	
	je end	
	imul eax, ecx		;multiply by counter
	inc ecx
	jmp schleife
end:
	mov dword [ergebnis], eax	
	mov ebx, 0
	mov eax, 1
	int 0x80
	
