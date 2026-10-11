	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222D24C
	.public ov43_0222D2FC
	.public ov43_0222D3B8
	.extern ov43_0222AD40
	.extern ov43_0222D230
	.extern ov43_0222DB28
	.extern ov43_0222DB94
	.extern ov43_0222ED18
	.extern ov43_0222EE42
	.extern ov43_0222EE84

	.text

	.text
	thumb_func_start ov43_0222D24C
ov43_0222D24C: ; 0x0222D24C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r2, #0
	cmp r3, #5
	bhi _0222D2F2
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222D262: ; jump table
	.short _0222D26E - _0222D262 - 2 ; case 0
	.short _0222D284 - _0222D262 - 2 ; case 1
	.short _0222D28E - _0222D262 - 2 ; case 2
	.short _0222D2AC - _0222D262 - 2 ; case 3
	.short _0222D2C8 - _0222D262 - 2 ; case 4
	.short _0222D2DE - _0222D262 - 2 ; case 5
_0222D26E:
	mov r1, #0
	ldrsh r1, [r4, r1]
	bl ov43_0222D230
	cmp r0, #0
	beq _0222D2F2
	ldr r0, _0222D2F8 ; =0x000005DD
	bl PlaySE
	mov r0, #6
	pop {r3, r4, r5, pc}
_0222D284:
	ldr r0, _0222D2F8 ; =0x000005DD
	bl PlaySE
	mov r0, #6
	pop {r3, r4, r5, pc}
_0222D28E:
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r1, r5, #0
	bl ov43_0222DB28
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r1, r5, #0
	bl ov43_0222DB94
	mov r0, #2
	str r0, [r4, #8]
	mov r0, #3
	pop {r3, r4, r5, pc}
_0222D2AC:
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r1, r5, #0
	bl ov43_0222DB28
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	add r1, r5, #0
	bl ov43_0222DB94
	mov r0, #3
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0222D2C8:
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #4
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ov43_0222AD40
	mov r0, #5
	pop {r3, r4, r5, pc}
_0222D2DE:
	mov r2, #1
	str r2, [r4, #8]
	mov r0, #4
	strh r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #3
	bl ov43_0222AD40
	mov r0, #5
	pop {r3, r4, r5, pc}
_0222D2F2:
	mov r0, #2
	pop {r3, r4, r5, pc}
	nop
_0222D2F8: .word 0x000005DD
	thumb_func_end ov43_0222D24C

	thumb_func_start ov43_0222D2FC
ov43_0222D2FC: ; 0x0222D2FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222D3B0 ; =gSystem
	add r4, r1, #0
	ldr r1, [r0, #0x48]
	ldr r0, _0222D3B4 ; =0x00000CF3
	add r6, r2, #0
	tst r0, r1
	beq _0222D312
	mov r0, #0
	str r0, [r4]
_0222D312:
	ldr r1, _0222D3B0 ; =gSystem
	mov r0, #3
	ldr r2, [r1, #0x48]
	tst r0, r2
	beq _0222D32A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #1
	bl ov43_0222D24C
	pop {r4, r5, r6, pc}
_0222D32A:
	ldr r0, [r1, #0x4c]
	mov r2, #0x20
	add r1, r0, #0
	tst r1, r2
	bne _0222D340
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _0222D358
	lsl r2, r2, #4
	tst r2, r0
	beq _0222D358
_0222D340:
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ov43_0222ED18
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #2
	bl ov43_0222D24C
	pop {r4, r5, r6, pc}
_0222D358:
	mov r2, #0x10
	add r3, r0, #0
	tst r3, r2
	bne _0222D36A
	cmp r1, #0
	beq _0222D380
	add r2, #0xf0
	tst r0, r2
	beq _0222D380
_0222D36A:
	add r0, r5, #0
	mov r1, #1
	bl ov43_0222ED18
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #3
	bl ov43_0222D24C
	pop {r4, r5, r6, pc}
_0222D380:
	ldr r0, _0222D3B0 ; =gSystem
	ldr r1, [r0, #0x44]
	mov r0, #0x40
	tst r0, r1
	beq _0222D398
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #4
	bl ov43_0222D24C
	pop {r4, r5, r6, pc}
_0222D398:
	mov r0, #0x80
	tst r0, r1
	beq _0222D3AC
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	mov r3, #5
	bl ov43_0222D24C
	pop {r4, r5, r6, pc}
_0222D3AC:
	mov r0, #2
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222D3B0: .word gSystem
_0222D3B4: .word 0x00000CF3
	thumb_func_end ov43_0222D2FC

	thumb_func_start ov43_0222D3B8
ov43_0222D3B8: ; 0x0222D3B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r7, r1, #0
	add r6, r3, #0
	str r2, [sp]
	cmp r0, #0
	beq _0222D3D0
	ldr r0, _0222D474 ; =ov43_0222EE84
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	b _0222D3D6
_0222D3D0:
	ldr r0, _0222D478 ; =ov43_0222EE42
	bl TouchscreenHitbox_FindHitboxAtTouchNew
_0222D3D6:
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222D3E4
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0222D3E4:
	cmp r4, #0
	bne _0222D3FA
	mov r0, #1
	str r0, [r6]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #4
	bl ov43_0222D24C
	pop {r3, r4, r5, r6, r7, pc}
_0222D3FA:
	cmp r4, #1
	bne _0222D410
	mov r0, #1
	str r0, [r6]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #5
	bl ov43_0222D24C
	pop {r3, r4, r5, r6, r7, pc}
_0222D410:
	sub r1, r4, #2
	lsl r1, r1, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	bl ov43_0222D230
	cmp r0, #0
	beq _0222D434
	sub r0, r4, #2
	strh r0, [r5]
	mov r3, #1
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	str r3, [r6]
	bl ov43_0222D24C
	pop {r3, r4, r5, r6, r7, pc}
_0222D434:
	mov r0, #0
	ldrsh r0, [r5, r0]
	sub r1, r4, #2
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	bne _0222D446
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0222D446:
	mov r0, #1
	str r0, [r6]
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222ED18
	cmp r4, #0
	blt _0222D464
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #3
	bl ov43_0222D24C
	pop {r3, r4, r5, r6, r7, pc}
_0222D464:
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #2
	bl ov43_0222D24C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222D474: .word ov43_0222EE84
_0222D478: .word ov43_0222EE42
	thumb_func_end ov43_0222D3B8

