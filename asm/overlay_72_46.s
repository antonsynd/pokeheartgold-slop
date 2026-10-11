	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239EB4
	.public ov72_0223A444

	.text

	thumb_func_start ov72_02239EB4
ov72_02239EB4: ; 0x02239EB4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl Save_WriteFileAsync
	cmp r0, #2
	bne _02239ECE
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
_02239ECE:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov72_02239EB4

