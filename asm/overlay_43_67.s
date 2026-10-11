	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CA30

	.text

	thumb_func_start ov43_0222CA30
ov43_0222CA30: ; 0x0222CA30
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0222CA38:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0222CA44
	bl ov42_0222740C
	str r6, [r5, #0x18]
_0222CA44:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0222CA38
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov43_0222CA30

