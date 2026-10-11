	.include "asm/macros.inc"
	.include "overlay_37.inc"
	.include "global.inc"
	.public ov37_021E72E8
	.extern ov37_021E713C
	.extern ov37_021E72B4
	.extern ov37_021E7AC8

	.text

	.text
	thumb_func_start ov37_021E72E8
ov37_021E72E8: ; 0x021E72E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	mov r0, #0
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	add r5, r1, #0
	add r7, r2, #0
_021E72FE:
	ldrb r0, [r5, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	beq _021E736E
	ldrh r0, [r7, #2]
	cmp r0, #0
	beq _021E7318
	ldrb r0, [r7]
	sub r0, #9
	str r0, [sp, #0x2c]
	ldrb r0, [r7, #1]
	sub r0, #0x11
	str r0, [sp, #0x28]
_021E7318:
	ldrb r0, [r5, #8]
	mov r4, #0
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x1d
	cmp r1, #0
	ble _021E736E
	mov r0, #1
	str r0, [sp, #0x20]
	cmp r1, #0
	ble _021E736E
_021E732C:
	add r0, sp, #0x2c
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrh r0, [r7, #2]
	mov r6, #0xc0
	add r3, r5, r4
	str r0, [sp, #0xc]
	ldrb r1, [r5, #8]
	ldrb r3, [r3, #4]
	ldr r0, [sp, #0x10]
	lsl r2, r1, #0x18
	lsr r2, r2, #0x1e
	mul r6, r2
	ldr r2, _021E73B0 ; =ov37_021E7AC8
	lsl r1, r1, #0x1d
	add r2, r2, r6
	lsr r6, r1, #0x1d
	mov r1, #0x18
	mul r1, r6
	add r1, r2, r1
	ldrb r2, [r5, r4]
	sub r3, #0x11
	sub r2, #9
	bl ov37_021E713C
	ldrb r0, [r5, #8]
	add r4, r4, #1
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	cmp r4, r0
	blt _021E732C
_021E736E:
	ldr r0, [sp, #0x24]
	add r5, #0xa
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _021E72FE
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021E738E
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021E738E
	ldr r0, [sp, #0x10]
	bl CopyWindowToVram
_021E738E:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov37_021E72B4
	mov r3, #0
	mov r1, #0x38
_021E739A:
	ldr r0, [sp, #0x14]
	add r3, r3, #1
	ldrb r2, [r0, #8]
	bic r2, r1
	strb r2, [r0, #8]
	add r0, #0xa
	str r0, [sp, #0x14]
	cmp r3, #5
	blt _021E739A
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E73B0: .word ov37_021E7AC8
	thumb_func_end ov37_021E72E8

