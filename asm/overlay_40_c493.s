	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02243A28
	.public ov40_02243B48

	.text

	.text
	thumb_func_start ov40_02243A28
ov40_02243A28: ; 0x02243A28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov r2, #0x89
	lsl r2, r2, #2
	add r1, r2, #4
	ldr r5, [r0, r1]
	add r1, r2, #0
	add r1, #0xc
	ldr r1, [r0, r1]
	ldr r6, [r0, r2]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r7, [r0, r1]
	sub r1, r2, #4
	ldr r4, [r0, r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x36
	add r2, r7, #0
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x2b
	add r2, r7, #0
	mov r3, #3
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	str r4, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x28
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x29
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0x2a
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0x58
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02243B44 ; =0x000003E9
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02243B44 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x57
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _02243B44 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x55
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _02243B44 ; =0x000003E9
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x56
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02243B44: .word 0x000003E9
	thumb_func_end ov40_02243A28

	thumb_func_start ov40_02243B48
ov40_02243B48: ; 0x02243B48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02243B74
	mov r7, #0x81
	add r4, r5, #0
	lsl r7, r7, #2
_02243B5E:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02243B6A
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
_02243B6A:
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02243B5E
_02243B74:
	mov r6, #0x57
	mov r4, #0
	mov r7, #1
	lsl r6, r6, #2
_02243B7C:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _02243B88
	add r1, r7, #0
	bl ManagedSprite_SetDrawFlag
_02243B88:
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #2
	blt _02243B7C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov40_02243B48

