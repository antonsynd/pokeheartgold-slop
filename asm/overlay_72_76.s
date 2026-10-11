	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223AC6C
	.public ov72_0223AE6C

	.text

	thumb_func_start ov72_0223AC6C
ov72_0223AC6C: ; 0x0223AC6C
	push {r4, lr}
	add r4, r0, #0
	bl ov72_0223AE6C
	cmp r0, #0
	bne _0223AC80
	ldr r0, _0223AC84 ; =0x00001313
	ldrb r1, [r4, r0]
	sub r0, r0, #1
	strb r1, [r4, r0]
_0223AC80:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0223AC84: .word 0x00001313
	thumb_func_end ov72_0223AC6C

