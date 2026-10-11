	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_022657B4
	.extern ov49_0226A70C

    .text

	.text
	thumb_func_start ov49_022657B4
ov49_022657B4: ; 0x022657B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	ldr r4, _02265840 ; =ov49_0226A70C
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
_022657C4:
	ldr r0, _02265844 ; =0x0001081C
	mov r6, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _02265848 ; =0x000106DC
	add r0, r5, r0
	str r0, [sp, #0x18]
	ldr r0, _0226584C ; =0x00010550
	add r0, r5, r0
	str r0, [sp, #0x1c]
_022657D8:
	add r7, r4, r6
	ldrb r1, [r7, #2]
	cmp r1, #0x11
	beq _0226582A
	mov r0, #0x14
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02265848 ; =0x000106DC
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0226582A
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02265850 ; =0x00010640
	ldr r0, [r1, r0]
	bl NNS_G3dGetTex
	ldrb r1, [r4]
	lsl r1, r1, #4
	add r2, r5, r1
	ldr r1, _02265854 ; =0x0001055C
	str r0, [r2, r1]
	ldrb r3, [r7, #2]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r1, r3, #0
	str r0, [sp, #4]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r3, #0xb7
	add r0, r0, r1
	ldrb r1, [r4]
	lsl r2, r1, #4
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	ldr r2, [sp, #8]
	bl sub_020180BC
_0226582A:
	add r6, r6, #1
	cmp r6, #2
	blt _022657D8
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x27
	blt _022657C4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02265840: .word ov49_0226A70C
_02265844: .word 0x0001081C
_02265848: .word 0x000106DC
_0226584C: .word 0x00010550
_02265850: .word 0x00010640
_02265854: .word 0x0001055C
	thumb_func_end ov49_022657B4

