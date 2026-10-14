	.include "asm/macros.inc"
	.include "unk_0205AC88.inc"
	.include "global.inc"
	.public sub_0205AD3C
	.extern sub_0205B3CC

	.public _020FC824

	.text

	.text
	thumb_func_start sub_0205AD3C
sub_0205AD3C: ; 0x0205AD3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl SysTask_Destroy
	ldr r0, _0205AD5C ; =0x000004DC
	ldr r0, [r4, r0]
	bl sub_0205B3CC
	mov r0, #0x57
	bl Heap_Destroy
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
_0205AD5C: .word 0x000004DC
	thumb_func_end sub_0205AD3C

