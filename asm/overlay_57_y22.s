	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_022384C0
	.public ov57_02238508
	.public ov57_0223853C

	.text

	.text
	thumb_func_start ov57_022384C0
ov57_022384C0: ; 0x022384C0
	push {r4, r5, r6, r7}
	mov r2, #0xfb
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldr r4, _02238504 ; =0x00000351
	lsl r2, r2, #3
	add r2, r0, r2
	ldr r2, [r2, #8]
	mov r1, #0
	add r3, r4, #1
	sub r5, r4, #1
_022384D6:
	ldrb r7, [r0, r5]
	ldrb r6, [r2]
	cmp r7, r6
	bne _022384EE
	ldrb r7, [r0, r4]
	ldrb r6, [r2, #1]
	cmp r7, r6
	bne _022384EE
	ldrb r7, [r0, r3]
	ldrb r6, [r2, #2]
	cmp r7, r6
	beq _022384F4
_022384EE:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_022384F4:
	add r1, r1, #1
	add r2, r2, #3
	add r0, #0x10
	cmp r1, #8
	blt _022384D6
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_02238504: .word 0x00000351
	thumb_func_end ov57_022384C0

	thumb_func_start ov57_02238508
ov57_02238508: ; 0x02238508
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r4, r1, #4
	mov r0, #0xd5
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	add r2, sp, #0
	mov r0, #2
	ldrsh r1, [r2, r0]
	ldr r0, _02238538 ; =0x00000351
	add r3, r5, r4
	strb r1, [r3, r0]
	mov r1, #0
	ldrsh r1, [r2, r1]
	add r0, r0, #1
	strb r1, [r3, r0]
	pop {r3, r4, r5, pc}
	nop
_02238538: .word 0x00000351
	thumb_func_end ov57_02238508

	thumb_func_start ov57_0223853C
ov57_0223853C: ; 0x0223853C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #0x35
	add r7, r0, #0
	lsl r3, r3, #4
	mov r0, #0
	add r1, r7, #0
	add r2, sp, #0
	add r4, r3, #1
	add r5, r3, #2
_02238550:
	ldrb r6, [r1, r3]
	add r0, r0, #1
	strb r6, [r2]
	ldrb r6, [r1, r4]
	strb r6, [r2, #1]
	ldrb r6, [r1, r5]
	add r1, #0x10
	strb r6, [r2, #2]
	add r2, r2, #3
	cmp r0, #8
	blt _02238550
	ldr r0, [r7]
	mov r2, #0xfb
	lsl r2, r2, #2
	ldr r0, [r0, #0x20]
	ldr r2, [r7, r2]
	add r1, sp, #0
	bl SealCase_SetCapsuleI
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov57_0223853C

