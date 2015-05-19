SECTION .data
	ergebnis dq 0			;result for n=0
	n dd 100	
	last_low dd 1
	last_high dd 0
	current_low dd 0
	current_high dd 0 
	
SECTION .text
	global main

main:
	mov eax, 0			;Zwischenergebnis
	mov ecx, dword [n]		;Counter, gesuchte fibonacci Zahl

schleife:
	cmp ecx, 0	
	je end
	
	mov eax, [current_low]		;temp var last result	
	mov ebx, [current_high]	
	add eax, [last_low]		;fn=fn_1+fn_2
	adc ebx, [last_high]		;result now in eax, ebx	
	jc overflow			;check if 64 bit overflow
		
					;at this point important information in eax, ebx, current_low, current_high	
	mov edx, [current_low]		;temp var
	mov [current_low], eax		;write current_low result from eax
	mov [last_low], edx		;write old current_low in last_low	
	mov edx, [current_high]		;temp
	mov [current_high], ebx		;write current_high result from ebx
	mov [last_high],edx 		;write old current_high in last_high
 			
	dec ecx
	jmp schleife

end:
	mov ebx, 0
	mov eax, 1
	int 0x80

overflow:
	mov DWORD[ergebnis], 0
	mov DWORD[ergebnis+4], 0
	jmp end
	
