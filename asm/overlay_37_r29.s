	.include "asm/macros.inc"
	.include "overlay_37.inc"
	.include "global.inc"
	.public ov37_021E6CC0
	.extern ov37_021E68AC
	.extern ov37_021E76A0
	.extern ov37_021E7844
	.extern ov37_021E7880

	.text

	.text
	thumb_func_start ov37_021E6CC0
ov37_021E6CC0: ; 0x021E6CC0
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x30]
	add r4, r1, #0
	bl ov37_021E76A0
	cmp r0, #0
	beq _021E6D06
	ldr r0, [r5]
	mov r1, #0xb4
	str r0, [sp]
	mov r0, #0
	str r1, [sp, #8]
	mov r1, #8
	str r1, [sp, #0xc]
	str r0, [sp, #4]
	mov r2, #0x19
	add r1, sp, #0
	strb r2, [r1, #0x10]
	mov r2, #6
	strb r2, [r1, #0x11]
	strb r0, [r1, #0x13]
	add r0, r5, #0
	add r1, sp, #0
	bl ov37_021E7880
	cmp r0, #0
	bne _021E6CFE
	bl GF_AssertFail
_021E6CFE:
	add r0, r5, #0
	mov r1, #0xe
	bl ov37_021E7844
_021E6D06:
	add r0, r5, #0
	bl ov37_021E68AC
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov37_021E6CC0

