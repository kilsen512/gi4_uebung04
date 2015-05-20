SECTION .data
	a dd 0
	b dd 7	
	
SECTION .text
	global main

main:
	mov eax, [a]	
	inc eax		;a++	
	jz bone		;if a==0
	mov DWORD[b],0 	;false b=0
	
end:	
	mov ebx, 0
	mov eax, 1
	int 0x80
bone:
	mov DWORD[b],1	;true
	jmp end
	
