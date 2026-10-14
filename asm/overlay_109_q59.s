	.include "macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E7030
	.extern _021E7884
	.extern ov109_021E7178

	.text

	.text
	thumb_func_start ov109_021E7030
ov109_021E7030: ; 0x021E7030
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	mov r0, #0xc
	mul r0, r2
	str r3, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	add r0, r0, #2
	str r0, [sp, #0xc]
_021E704C:
	ldr r4, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	cmp r1, r0
	bge _021E70AA
	ldr r1, _021E70C0 ; =_021E7884
	ldr r0, [sp, #0x14]
	add r1, r1, r0
	add r0, r4, #0
	add r6, r1, r0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021E7066:
	ldrb r1, [r6]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r1, r0
	str r7, [sp]
	bhs _021E7092
	lsl r1, r1, #3
	add r1, r5, r1
	add r1, #0xd0
	lsl r3, r4, #0x18
	ldr r1, [r1]
	ldr r2, [sp, #4]
	add r0, r5, #0
	lsr r3, r3, #0x18
	bl ov109_021E7178
	b _021E70A0
_021E7092:
	lsl r3, r4, #0x18
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	lsr r3, r3, #0x18
	bl ov109_021E7178
_021E70A0:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r6, r6, #1
	cmp r4, r0
	blt _021E7066
_021E70AA:
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _021E704C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E70C0: .word _021E7884
	thumb_func_end ov109_021E7030

