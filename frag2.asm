SECTION .data
	a RESD 10
	i DD 0

SECTION .text
	global main

main:
	mov eax, DWORD[i]
	mov ebx, a

forloop:
	mov DWORD[ebx + eax*4], eax	;base+index*scale
	inc eax				;i++
	cmp eax, 10			;i<10
	jl forloop	
	
end:	
	mov ebx, 0
	mov eax, 1
	int 0x80	
