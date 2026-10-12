	.include "asm/macros.inc"
	.include "overlay_56.inc"
	.include "global.inc"
	.public ov56_021E63FC
	.extern ov56_021E5D08

	.text

	.text
	thumb_func_start ov56_021E63FC
ov56_021E63FC: ; 0x021E63FC
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [r4, #0x30]
	cmp r1, #0
	bne _021E6410
	bl SysTask_Destroy
	add sp, #8
	pop {r4, pc}
_021E6410:
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _021E6474
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _021E6474
	ldrb r1, [r4, #0x17]
	ldrb r0, [r4, #0x16]
	cmp r1, r0
	beq _021E642E
	add r0, r4, #0
	bl ov56_021E5D08
	ldrb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
_021E642E:
	ldrb r0, [r4, #0x14]
	mov r1, #0
	mov r3, #1
	str r0, [sp]
	ldr r0, _021E6478 ; =0x00007FFF
	str r0, [sp, #4]
	ldrb r2, [r4, #0x16]
	ldr r0, [r4, #0x30]
	add r2, #0x22
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl PaletteData_BlendPalette
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	cmp r0, #0
	beq _021E6464
	sub r0, r1, #1
	strb r0, [r4, #0x14]
	cmp r1, #1
	bne _021E6474
	ldrb r1, [r4, #0x15]
	mov r0, #1
	add sp, #8
	eor r0, r1
	strb r0, [r4, #0x15]
	pop {r4, pc}
_021E6464:
	add r0, r1, #1
	strb r0, [r4, #0x14]
	cmp r1, #0xc
	bne _021E6474
	ldrb r1, [r4, #0x15]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #0x15]
_021E6474:
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021E6478: .word 0x00007FFF
	thumb_func_end ov56_021E63FC

