	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public _0222ED5C
	.public ov43_0222A318
	.public ov43_0222D0F8
	.public ov43_0222D134
	.public ov43_0222D15C
	.public ov43_0222D47C
	.public ov43_0222D4C4
	.public ov43_0222D508
	.public ov43_0222D584
	.public ov43_0222D654
	.public ov43_0222D778
	.public ov43_0222D87C
	.public ov43_0222DCC4

	.text

	thumb_func_start ov43_0222D0F8
ov43_0222D0F8: ; 0x0222D0F8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, _0222D130 ; =_0222ED5C
	add r4, r1, #0
	ldrb r5, [r3, #1]
	ldrb r3, [r3, #2]
	add r1, sp, #0xc
	strb r5, [r1]
	strb r3, [r1, #1]
	mov r1, #0xe
	str r1, [sp]
	mov r1, #4
	str r1, [sp, #4]
	add r0, sp, #0xc
	ldrb r0, [r0, r2]
	mov r1, #2
	mov r2, #0x11
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r3, #0x14
	bl BgTilemapRectChangePalette
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222D130: .word _0222ED5C
	thumb_func_end ov43_0222D0F8

	thumb_func_start ov43_0222D134
ov43_0222D134: ; 0x0222D134
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r6, r2, #0
	add r7, r3, #0
	bl Save_VarsFlags_Get
	mov r1, #2
	mov r2, #0x1b
	bl Save_VarsFlags_FlypointFlagAction
	str r0, [r5, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov43_0222D584
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222D134

	thumb_func_start ov43_0222D15C
ov43_0222D15C: ; 0x0222D15C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldrb r5, [r6, #8]
	add r4, r0, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r5, #6
	bhi _0222D220
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0222D178: ; jump table
	.short _0222D186 - _0222D178 - 2 ; case 0
	.short _0222D18C - _0222D178 - 2 ; case 1
	.short _0222D19E - _0222D178 - 2 ; case 2
	.short _0222D1A6 - _0222D178 - 2 ; case 3
	.short _0222D1BC - _0222D178 - 2 ; case 4
	.short _0222D1CA - _0222D178 - 2 ; case 5
	.short _0222D20C - _0222D178 - 2 ; case 6
_0222D186:
	mov r0, #0
	strh r0, [r4, #0xe]
	strh r0, [r4]
_0222D18C:
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov43_0222D654
	mov r0, #2
	strb r0, [r6, #8]
	b _0222D220
_0222D19E:
	bl ov43_0222D47C
	strb r0, [r6, #8]
	b _0222D220
_0222D1A6:
	bl ov43_0222D4C4
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov43_0222D508
	mov r0, #4
	strb r0, [r6, #8]
	b _0222D220
_0222D1BC:
	bl ov43_0222D508
	cmp r0, #1
	bne _0222D220
	mov r0, #2
	strb r0, [r6, #8]
	b _0222D220
_0222D1CA:
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _0222D1DC
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _0222D220
_0222D1DC:
	ldr r1, [r4, #8]
	add r0, r6, #0
	bl ov43_0222DCC4
	cmp r0, #0
	beq _0222D206
	ldr r0, _0222D224 ; =0x000005E5
	bl PlaySE
	add r0, r4, #0
	add r1, r7, #0
	bl ov43_0222D87C
	add r0, r6, #0
	mov r1, #4
	mov r2, #1
	bl ov43_0222A318
	mov r0, #1
	strh r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0222D206:
	mov r0, #2
	strb r0, [r6, #8]
	b _0222D220
_0222D20C:
	add r1, r7, #0
	bl ov43_0222D778
	add r0, r6, #0
	mov r1, #1
	mov r2, #9
	bl ov43_0222A318
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222D220:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222D224: .word 0x000005E5
	thumb_func_end ov43_0222D15C

