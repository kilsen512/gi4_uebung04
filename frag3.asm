SECTION .data
	i DD 10
	ergebnis DD 1

SECTION .text
	global main

main:
	mov eax, DWORD[ergebnis]
	mov ecx, DWORD[i]
	
	dec ecx

while:
	imul eax,ecx	;ergebnis
	loopnz while	;must be loopnz otherwise wrong results	

	mov [ergebnis], eax 
end:	
	mov ebx, 0
	mov eax, 1
	int 0x80	
