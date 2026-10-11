	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_0225B068

	.text

	thumb_func_start ov48_0225B068
ov48_0225B068: ; 0x0225B068
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0225B0A0 ; =0x00000321
	mov r0, #0
	mov r1, #0x1b
	add r3, r4, #0
	bl NewMsgDataFromNarc
	str r0, [r5]
	mov r0, #8
	mov r1, #0x40
	add r2, r4, #0
	bl MessageFormat_New_Custom
	str r0, [r5, #4]
	mov r0, #0x80
	add r1, r4, #0
	bl String_New
	str r0, [r5, #8]
	mov r0, #0x80
	add r1, r4, #0
	bl String_New
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	nop
_0225B0A0: .word 0x00000321
	thumb_func_end ov48_0225B068

