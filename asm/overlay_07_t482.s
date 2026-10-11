	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222C2D4
	.extern ov07_0221C448
	.extern ov07_0222C1FC
	.extern ov07_0222C208
	.extern ov07_0222C214

	.text

	.text
	thumb_func_start ov07_0222C2D4
ov07_0222C2D4: ; 0x0222C2D4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	cmp r0, #6
	bhi _0222C348
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C2F0: ; jump table
	.short _0222C2FE - _0222C2F0 - 2 ; case 0
	.short _0222C316 - _0222C2F0 - 2 ; case 1
	.short _0222C362 - _0222C2F0 - 2 ; case 2
	.short _0222C378 - _0222C2F0 - 2 ; case 3
	.short _0222C418 - _0222C2F0 - 2 ; case 4
	.short _0222C442 - _0222C2F0 - 2 ; case 5
	.short _0222C482 - _0222C2F0 - 2 ; case 6
_0222C2FE:
	add r0, r4, #0
	add r0, #0xc
	bl ov07_0222C214
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0]
	b _0222C4AC
_0222C316:
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0]
	add r0, r4, #0
	add r1, #0xa
	add r0, #0xfc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0x1f
	sub r1, r1, r0
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0222C4B4 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0]
	ldr r0, _0222C4B8 ; =0x00000136
	cmp r1, r0
	bge _0222C34A
_0222C348:
	b _0222C4AC
_0222C34A:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ManagedSprite_SetOamMode
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0]
	b _0222C4AC
_0222C362:
	ldr r1, _0222C4BC ; =0x0000FFFF
	ldr r0, _0222C4B4 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0]
	b _0222C4AC
_0222C378:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	bgt _0222C3BC
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	mov r2, #0x4c
	add r3, r0, #0
	mul r3, r2
	add r0, r4, r3
	mov r1, #1
	add r0, #0xa0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	mul r2, r0
	add r0, r4, r2
	ldr r0, [r0, #0x58]
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf8
	str r1, [r0]
	add r0, r4, #0
	mov r1, #8
	add r0, #0xf4
	str r1, [r0]
_0222C3BC:
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	cmp r0, #2
	bge _0222C3D4
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xf4
	str r1, [r0]
_0222C3D4:
	add r0, r4, #0
	add r0, #0xc
	bl ov07_0222C214
	add r5, r4, #0
	add r6, r0, #0
	mov r7, #0
	add r5, #0x58
_0222C3E4:
	add r0, r5, #0
	bl ov07_0222C214
	str r0, [sp]
	cmp r0, #0
	bne _0222C3F8
	add r0, r5, #0
	mov r1, #0
	bl ov07_0222C208
_0222C3F8:
	ldr r0, [sp]
	add r7, r7, #1
	orr r6, r0
	add r5, #0x4c
	cmp r7, #2
	blt _0222C3E4
	cmp r6, #0
	bne _0222C4AC
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0]
	b _0222C4AC
_0222C418:
	ldr r0, [r4, #0xc]
	bl ManagedSprite_TickFrame
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	bne _0222C4AC
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0]
	b _0222C4AC
_0222C442:
	add r0, r4, #0
	add r0, #0xfc
	ldr r1, [r0]
	add r0, r4, #0
	sub r1, #0xa
	add r0, #0xfc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0x1f
	sub r1, r1, r0
	lsl r1, r1, #8
	orr r1, r0
	ldr r0, _0222C4B4 ; =0x04000052
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	bgt _0222C4AC
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xf0
	str r1, [r0]
	b _0222C4AC
_0222C482:
	add r5, r4, #0
	mov r6, #0
	add r5, #0x58
_0222C488:
	add r0, r5, #0
	bl ov07_0222C1FC
	add r6, r6, #1
	add r5, #0x4c
	cmp r6, #2
	blt _0222C488
	ldr r0, [r4, #0xc]
	bl Sprite_DeleteAndFreeResources
	ldr r0, [r4]
	add r1, r7, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
_0222C4AC:
	ldr r0, [r4, #8]
	bl SpriteSystem_DrawSprites
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222C4B4: .word 0x04000052
_0222C4B8: .word 0x00000136
_0222C4BC: .word 0x0000FFFF
	thumb_func_end ov07_0222C2D4

