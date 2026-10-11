	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259184

	.text

	thumb_func_start ov90_02259184
ov90_02259184: ; 0x02259184
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xec
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
	mov r1, #6
	str r0, [r5, #0xc]
	mov r0, #0
	lsl r1, r1, #6
	add r2, r4, #0
	bl LoadFontPal1
	mov r1, #6
	mov r0, #4
	lsl r1, r1, #6
	add r2, r4, #0
	bl LoadFontPal1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov90_02259184

