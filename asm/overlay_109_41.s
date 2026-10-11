	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E71BC
	.extern ov109_021E7178
	.extern ov109_021E7890

	.text

	.text
	thumb_func_start ov109_021E71BC
ov109_021E71BC: ; 0x021E71BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xc
	add r7, r2, #0
	bl _s32_div_f
	ldrb r1, [r4, #0x19]
	cmp r0, r1
	bne _021E71FE
	add r0, r5, #0
	mov r1, #0xc
	bl _s32_div_f
	ldr r0, _021E7244 ; =ov109_021E7890
	mov r2, #3
	ldrb r3, [r0, r1]
	mov r1, #0
	lsl r0, r3, #0x16
	lsr r0, r0, #0x18
	str r0, [sp]
	lsr r6, r3, #0x1f
	lsl r5, r3, #0x1e
	sub r5, r5, r6
	mov r3, #0x1e
	ror r5, r3
	add r3, r6, r5
	lsl r3, r3, #0x18
	add r0, r4, #0
	lsr r3, r3, #0x18
	bl ov109_021E7178
_021E71FE:
	add r0, r7, #0
	mov r1, #0xc
	bl _s32_div_f
	ldrb r1, [r4, #0x19]
	cmp r0, r1
	bne _021E7238
	add r0, r7, #0
	mov r1, #0xc
	bl _s32_div_f
	ldr r0, _021E7244 ; =ov109_021E7890
	mov r2, #3
	ldrb r5, [r0, r1]
	mov r1, #0
	lsl r0, r5, #0x16
	lsr r0, r0, #0x18
	str r0, [sp]
	lsr r3, r5, #0x1f
	lsl r6, r5, #0x1e
	sub r6, r6, r3
	mov r5, #0x1e
	ror r6, r5
	add r3, r3, r6
	lsl r3, r3, #0x18
	add r0, r4, #0
	lsr r3, r3, #0x18
	bl ov109_021E7178
_021E7238:
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7244: .word ov109_021E7890
	thumb_func_end ov109_021E71BC

