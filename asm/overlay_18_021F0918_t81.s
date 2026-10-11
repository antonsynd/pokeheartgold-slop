	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F32B8
	.extern ov18_021F118C
	.extern ov18_021F11C0
	.extern ov18_021F1424
	.extern ov18_021FA4EC
	.extern ov18_021FA520
	.extern ov18_021FB004
	.extern ov18_021FB54C
	.extern ov18_021FB580

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F32B8
ov18_021F32B8: ; 0x021F32B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r7, #0x67
	ldr r6, _021F340C ; =ov18_021FB004
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #4
_021F32C6:
	ldr r0, _021F3410 ; =0x00000668
	ldr r1, _021F3414 ; =0x0000066C
	mov r2, #0x34
	mul r2, r4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, r2
	bl SpriteSystem_NewSprite
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F11C0
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x19
	bls _021F32C6
	ldr r1, _021F3410 ; =0x00000668
	mov r3, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, _021F3418 ; =ov18_021FA520
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	ldr r1, _021F341C ; =0x0000071C
	mov r2, #0
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0x2b
	bl ov18_021F11C0
	ldr r1, _021F3410 ; =0x00000668
	mov r3, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, _021F3420 ; =ov18_021FB54C
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	ldr r1, _021F3424 ; =0x000006D8
	mov r3, #2
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x70
	sub r1, #0x6c
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, _021F3428 ; =ov18_021FB580
	lsl r3, r3, #0x14
	bl SpriteSystem_NewSpriteWithYOffset
	ldr r1, _021F342C ; =0x000006DC
	mov r2, #0
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0x1b
	bl ov18_021F11C0
	ldr r4, _021F3430 ; =ov18_021FA4EC
	add r3, sp, #0
	mov r2, #6
_021F3350:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F3350
	ldr r0, [r4]
	mov r4, #0x1c
	str r0, [r3]
	add r7, sp, #0
_021F3360:
	cmp r4, #0x1c
	bne _021F33A2
	mov r0, #0xe0
	strh r0, [r7]
	mov r0, #0x48
	strh r0, [r7, #2]
	ldr r0, _021F3410 ; =0x00000668
	ldr r1, _021F3414 ; =0x0000066C
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, sp, #0
	bl SpriteSystem_NewSprite
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x67
	lsl r1, r1, #4
	str r0, [r2, r1]
	ldr r0, _021F3434 ; =0x0000188C
	ldr r2, [r5, r0]
	cmp r2, #0xe
	bne _021F3398
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F11C0
	b _021F33F6
_021F3398:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F118C
	b _021F33F6
_021F33A2:
	add r0, r4, #0
	sub r0, #0x1d
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	mov r0, #0x30
	mul r0, r1
	add r0, #0x20
	strh r0, [r7]
	add r0, r6, #0
	mov r1, #5
	bl _s32_div_f
	mov r1, #0x28
	mul r1, r0
	add r1, #0x38
	strh r1, [r7, #2]
	ldr r0, _021F3410 ; =0x00000668
	ldr r1, _021F3414 ; =0x0000066C
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, sp, #0
	bl SpriteSystem_NewSprite
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0x67
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov18_021F118C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov18_021F11C0
_021F33F6:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x2a
	bls _021F3360
	add r0, r5, #0
	mov r1, #0x3b
	bl ov18_021F1424
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F340C: .word ov18_021FB004
_021F3410: .word 0x00000668
_021F3414: .word 0x0000066C
_021F3418: .word ov18_021FA520
_021F341C: .word 0x0000071C
_021F3420: .word ov18_021FB54C
_021F3424: .word 0x000006D8
_021F3428: .word ov18_021FB580
_021F342C: .word 0x000006DC
_021F3430: .word ov18_021FA4EC
_021F3434: .word 0x0000188C
	thumb_func_end ov18_021F32B8

