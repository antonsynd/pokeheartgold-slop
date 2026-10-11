	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223B0C4

	.text

	.text
	thumb_func_start ov72_0223B0C4
ov72_0223B0C4: ; 0x0223B0C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r1, [r4, #0x28]
	mov r0, #0xef
	bl NARC_New
	add r1, r4, #0
	add r1, #0x2f
	ldrb r1, [r1]
	str r0, [sp, #0x14]
	cmp r1, #3
	bhi _0223B108
	mov r1, #0x20
	str r1, [sp]
	ldr r1, [r4, #0x28]
	add r3, r4, #0
	str r1, [sp, #4]
	add r3, #0x2e
	ldrb r3, [r3]
	mov r1, #0
	add r2, r1, #0
	lsl r3, r3, #5
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	ldr r2, [r4, #0x28]
	mov r0, #0
	lsl r1, r1, #5
	bl LoadFontPal0
	b _0223B130
_0223B108:
	mov r1, #0x20
	str r1, [sp]
	ldr r1, [r4, #0x28]
	add r3, r4, #0
	str r1, [sp, #4]
	add r3, #0x2e
	ldrb r3, [r3]
	mov r1, #0
	mov r2, #4
	lsl r3, r3, #5
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	ldr r2, [r4, #0x28]
	mov r0, #4
	lsl r1, r1, #5
	bl LoadFontPal0
_0223B130:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	add r3, r4, #0
	str r0, [sp, #0xc]
	add r3, #0x2f
	ldrb r3, [r3]
	ldr r0, [sp, #0x14]
	ldr r2, [r4]
	mov r1, #1
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldr r0, [r4, #0x28]
	mov r1, #0xa
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #0
	add r3, sp, #0x18
	bl GfGfxLoader_GetScrnDataFromOpenNarc
	add r1, r4, #0
	add r1, #0x2f
	str r0, [sp, #0x10]
	ldrb r1, [r1]
	ldr r0, [r4]
	bl GetBgTilemapBuffer
	ldr r2, [sp, #0x18]
	mov r5, #3
	ldr r7, _0223B1C4 ; =0x00000FFF
	add r3, r0, #0
	mov r1, #0
	add r2, #0xc
	lsl r5, r5, #8
_0223B178:
	add r0, r4, #0
	add r0, #0x2e
	ldrh r6, [r2]
	ldrb r0, [r0]
	add r1, r1, #1
	and r6, r7
	lsl r0, r0, #0xc
	orr r0, r6
	strh r0, [r3]
	add r2, r2, #2
	add r3, r3, #2
	cmp r1, r5
	blt _0223B178
	add r1, r4, #0
	add r1, #0x2f
	ldrb r1, [r1]
	ldr r0, [r4]
	bl BgCommitTilemapBufferToVram
	ldr r0, [sp, #0x10]
	bl Heap_Free
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	mov r1, #1
	bl ToggleBgLayer
	add r4, #0x32
	ldrb r0, [r4]
	mov r1, #1
	bl ToggleBgLayer
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0223B1C4: .word 0x00000FFF
	thumb_func_end ov72_0223B0C4

