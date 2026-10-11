	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EE0CC
	.public ov103_021EE160
	.public ov103_021EE210

	.text

	thumb_func_start ov103_021EE160
ov103_021EE160: ; 0x021EE160
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, _021EE208 ; =0x000037F0
	add r5, r0, #0
	mov r6, #0
	mov r7, #2
_021EE16C:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl GetMonIconNaixEx
	str r6, [sp]
	add r3, r0, #0
	str r7, [sp, #4]
	mov r0, #0x25
	mov r1, #0x95
	mov r2, #0x9d
	str r4, [sp, #8]
	lsl r0, r0, #4
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	ldr r0, _021EE20C ; =0x000037F2
	add r4, r4, #1
	cmp r4, r0
	bls _021EE16C
	bl sub_02074490
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021EE208 ; =0x000037F0
	mov r2, #0x25
	lsl r2, r2, #4
	str r0, [sp, #0xc]
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x24
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	bl sub_02074494
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021EE208 ; =0x000037F0
	mov r2, #0x25
	lsl r2, r2, #4
	str r0, [sp, #4]
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x24
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	bl sub_02074498
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021EE208 ; =0x000037F0
	mov r2, #0x25
	lsl r2, r2, #4
	str r0, [sp, #4]
	add r1, r2, #4
	ldr r0, [r5, r2]
	add r2, #0x24
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE208: .word 0x000037F0
_021EE20C: .word 0x000037F2
	thumb_func_end ov103_021EE160

	thumb_func_start ov103_021EE210
ov103_021EE210: ; 0x021EE210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldrb r0, [r5, #0x1f]
	mov r4, #0
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	add r6, r4, #0
_021EE228:
	add r0, r7, #0
	bl sub_0202B4E4
	lsl r1, r4, #0x18
	add r3, r0, #0
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, #2
	bl sub_0202B404
	add r1, sp, #0x10
	strh r0, [r1]
	add r0, r1, #0
	ldrh r1, [r0]
	ldr r0, _021EE2DC ; =0x0000FFFF
	cmp r1, r0
	beq _021EE254
	lsl r0, r1, #0x14
	lsr r0, r0, #0x14
	str r0, [sp, #4]
	cmp r0, #7
	bne _021EE260
_021EE254:
	ldr r0, [r5, #0xc]
	add r1, r4, #4
	mov r2, #0
	bl ov103_021EE0CC
	b _021EE2CE
_021EE260:
	ldr r0, [r5, #0xc]
	add r1, r0, r6
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0]
	bl Sprite_GetImageProxy
	mov r1, #2
	bl NNS_G2dGetImageLocation
	str r0, [sp, #8]
	mov r0, #0x9d
	str r0, [sp]
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #4]
	mov r2, #0
	add r3, sp, #0x14
	bl GfGfxLoader_GetCharDataFromOpenNarc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r0, [sp, #0x14]
	mov r2, #2
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #8]
	lsl r2, r2, #8
	bl GXS_LoadOBJ
	ldr r0, [sp, #0xc]
	bl Heap_Free
	ldr r0, [r5, #0xc]
	add r1, r0, r6
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x10
	ldrh r1, [r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1c
	bl ManagedSprite_SetPaletteOverride
	ldr r0, [r5, #0xc]
	add r1, r4, #4
	mov r2, #1
	bl ov103_021EE0CC
_021EE2CE:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #3
	blo _021EE228
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE2DC: .word 0x0000FFFF
	thumb_func_end ov103_021EE210

