	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FA2C
	.public ov40_0222FA5C
	.public ov40_0222FA88
	.public ov40_02244E08
	.public ov40_02244E0C

	.text

	thumb_func_start ov40_0222FA2C
ov40_0222FA2C: ; 0x0222FA2C
	push {r3, r4}
	ldr r2, [r0, #0xc]
	sub r4, r1, r2
	add r3, r4, #0
	mov r2, #1
	mul r3, r4
	lsl r2, r2, #8
	cmp r3, r2
	blt _0222FA52
	cmp r4, #0
	bge _0222FA48
	mov r2, #0
	mvn r2, r2
	b _0222FA4A
_0222FA48:
	mov r2, #1
_0222FA4A:
	strh r2, [r0, #0x10]
	str r1, [r0, #0xc]
	pop {r3, r4}
	bx lr
_0222FA52:
	mov r1, #0
	strh r1, [r0, #0x10]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov40_0222FA2C

	thumb_func_start ov40_0222FA5C
ov40_0222FA5C: ; 0x0222FA5C
	ldr r2, [r1, #0x48]
	cmp r2, #0
	beq _0222FA74
	ldr r1, [r1, #4]
	cmp r1, #2
	bge _0222FA6E
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
_0222FA6E:
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
_0222FA74:
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #4]
	cmp r2, r1
	blt _0222FA82
	mov r1, #0
	str r1, [r0, #0x14]
	bx lr
_0222FA82:
	mov r1, #1
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov40_0222FA5C

	thumb_func_start ov40_0222FA88
ov40_0222FA88: ; 0x0222FA88
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	mov r4, #0
	bl System_GetTouchHeldCoords
	add r6, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0222FAAC
	ldr r0, [r5, #0x18]
	bl ManagedSprite_TickTwoFrames
	ldr r0, [r5, #0x1c]
	bl ManagedSprite_TickTwoFrames
_0222FAAC:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0222FAC6
	cmp r6, #0
	bne _0222FAC6
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
_0222FAC6:
	ldr r0, _0222FB20 ; =ov40_02244E08
	bl TouchscreenHitbox_TouchHeldIsIn
	cmp r0, #0
	bne _0222FADA
	ldr r0, _0222FB24 ; =ov40_02244E0C
	bl TouchscreenHitbox_TouchHeldIsIn
	cmp r0, #0
	beq _0222FADC
_0222FADA:
	mov r4, #1
_0222FADC:
	cmp r4, #0
	ldr r0, [r5, #4]
	beq _0222FB0C
	cmp r0, #0
	bne _0222FAFA
	mov r0, #1
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	str r0, [r5, #8]
	ldr r0, [sp]
	add sp, #8
	str r0, [r5, #0xc]
	mov r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_0222FAFA:
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	ldr r1, [sp]
	add r0, r5, #0
	bl ov40_0222FA2C
	add sp, #8
	pop {r4, r5, r6, pc}
_0222FB0C:
	cmp r0, #0
	beq _0222FB1A
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
_0222FB1A:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0222FB20: .word ov40_02244E08
_0222FB24: .word ov40_02244E0C
	thumb_func_end ov40_0222FA88

