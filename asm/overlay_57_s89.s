	.include "macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02239EB4
	.extern ov57_022385A4
	.extern ov57_0223BE48
	.extern ov57_0223BE7C

	.text

	.text
	thumb_func_start ov57_02239EB4
ov57_02239EB4: ; 0x02239EB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r7, r0, #0
	add r0, #0xdc
	ldr r6, [r0]
	add r0, r7, #0
	add r0, #0xe0
	ldr r5, [r0]
	ldr r0, _02239FF4 ; =0x00000414
	mov r1, #0
	add r2, sp, #0x6c
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	add r4, r7, r0
	strh r1, [r2, #6]
	mov r0, #0x3c
	str r0, [sp, #0x74]
	mov r0, #2
	str r0, [sp, #0x7c]
	mov r0, #1
	str r1, [sp, #0x9c]
	sub r1, r0, #2
	str r0, [sp, #0x98]
	str r0, [sp, #0x78]
	ldr r0, _02239FF8 ; =0x000061C2
	str r1, [sp, #0x90]
	str r0, [sp, #0x80]
	ldr r0, _02239FFC ; =0x00006594
	str r1, [sp, #0x94]
	str r0, [sp, #0x84]
	ldr r0, _0223A000 ; =0x00006994
	add r1, r5, #0
	str r0, [sp, #0x88]
	ldr r0, _0223A004 ; =0x00006D7B
	str r0, [sp, #0x8c]
	add r0, r6, #0
	bl SpriteSystem_NewSprite
	str r0, [r4, #0x20]
	ldr r0, _0223A008 ; =0x000061C5
	add r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _02239FFC ; =0x00006594
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223A00C ; =0x00006997
	str r0, [sp, #0x88]
	ldr r0, _0223A010 ; =0x00006D7E
	str r0, [sp, #0x8c]
	add r0, r6, #0
	bl SpriteSystem_NewSprite
	str r0, [r4, #0x24]
	mov r0, #1
	str r0, [sp, #0x98]
	str r0, [sp, #0x78]
	ldr r0, _0223A014 ; =0x000088CF
	add r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _02239FFC ; =0x00006594
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223A018 ; =0x00006991
	str r0, [sp, #0x88]
	ldr r0, _0223A01C ; =0x00006D78
	str r0, [sp, #0x8c]
	add r0, r6, #0
	bl SpriteSystem_NewSprite
	str r0, [r4, #0x28]
	mov r0, #1
	str r0, [sp, #0x98]
	mov r0, #0
	str r0, [sp, #0x78]
	ldr r0, _0223A020 ; =0x000061BC
	add r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _02239FFC ; =0x00006594
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223A024 ; =0x0000698E
	str r0, [sp, #0x88]
	ldr r0, _0223A028 ; =0x00006D75
	str r0, [sp, #0x8c]
	add r0, r6, #0
	bl SpriteSystem_NewSprite
	str r0, [r4, #0x2c]
	add r0, r6, #0
	add r1, r5, #0
	add r2, sp, #0x6c
	bl SpriteSystem_NewSprite
	ldr r3, _0223A02C ; =ov57_0223BE48
	str r0, [r4, #0x30]
	add r2, sp, #0x38
	mov r1, #0x1a
_02239F78:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02239F78
	ldr r3, _0223A030 ; =ov57_0223BE7C
	add r2, sp, #4
	mov r1, #0x1a
_02239F8A:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02239F8A
	mov r0, #8
	str r0, [sp]
	mov r0, #0x1f
	add r4, r7, #0
	lsl r0, r0, #4
	add r7, r7, r0
	add r6, sp, #0x58
	add r4, #0x20
	add r5, sp, #0x24
	add r7, #0x20
_02239FAA:
	ldr r0, _02239FF4 ; =0x00000414
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, r0]
	bl ManagedSprite_SetPositionXY
	ldr r0, _02239FF4 ; =0x00000414
	ldr r0, [r4, r0]
	bl ManagedSprite_TickFrame
	ldr r0, _02239FF4 ; =0x00000414
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetAnimationFrame
	ldr r1, _02239FF4 ; =0x00000414
	mov r2, #0
	mov r3, #2
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r4, r1]
	add r0, r7, #0
	bl ov57_022385A4
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r4, r4, #4
	add r5, r5, #4
	add r7, r7, #4
	str r0, [sp]
	cmp r0, #0xd
	blt _02239FAA
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02239FF4: .word 0x00000414
_02239FF8: .word 0x000061C2
_02239FFC: .word 0x00006594
_0223A000: .word 0x00006994
_0223A004: .word 0x00006D7B
_0223A008: .word 0x000061C5
_0223A00C: .word 0x00006997
_0223A010: .word 0x00006D7E
_0223A014: .word 0x000088CF
_0223A018: .word 0x00006991
_0223A01C: .word 0x00006D78
_0223A020: .word 0x000061BC
_0223A024: .word 0x0000698E
_0223A028: .word 0x00006D75
_0223A02C: .word ov57_0223BE48
_0223A030: .word ov57_0223BE7C
	thumb_func_end ov57_02239EB4

