	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E5CE0
	.public ov56_021E5D08

	.text

	.text
	thumb_func_start ov56_021E5CE0
ov56_021E5CE0: ; 0x021E5CE0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_021E5CE8:
	ldr r0, [r6, #0x1c]
	add r0, #0x1e
	add r0, r0, r5
	bl MailMsg_IsInit
	cmp r0, #0
	beq _021E5CFA
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E5CFA:
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _021E5CE8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov56_021E5CE0

	thumb_func_start ov56_021E5D08
ov56_021E5D08: ; 0x021E5D08
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r1, #0
	ldr r0, _021E5D30 ; =0x00007FFF
	str r1, [sp]
	str r0, [sp, #4]
	ldrb r2, [r4, #0x17]
	ldr r0, [r4, #0x30]
	mov r3, #1
	add r2, #0x22
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl PaletteData_BlendPalette
	mov r0, #0
	strb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021E5D30: .word 0x00007FFF
	thumb_func_end ov56_021E5D08

