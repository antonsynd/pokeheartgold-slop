	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E5EF8
	.extern ov95_021E7594

	.text

	.text
	thumb_func_start ov95_021E5EF8
ov95_021E5EF8: ; 0x021E5EF8
	push {r4, r5, r6, lr}
	sub sp, #0x38
	ldr r3, _021E5FDC ; =ov95_021E7594
	add r2, sp, #0x18
	add r6, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r5, [r6, #0x50]
	ldr r4, [r6, #0x54]
	ldr r6, [r6, #8]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E5FE0 ; =0x00004E20
	add r1, r5, #0
	str r0, [sp, #8]
	ldr r3, [sp, #0x18]
	add r0, r4, #0
	mov r2, #0x73
	bl SpriteSystem_LoadCharResObj
	mov r0, #0x73
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #2
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021E5FE4 ; =0x00004E21
	add r2, r4, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBuffer
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FE8 ; =0x00004E22
	add r1, r5, #0
	str r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	mov r2, #0x73
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FEC ; =0x00004E23
	add r1, r5, #0
	str r0, [sp, #4]
	ldr r3, [sp, #0x24]
	add r0, r4, #0
	mov r2, #0x73
	bl SpriteSystem_LoadAnimResObj
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E5FF0 ; =0x000061A8
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r2, #0x73
	mov r3, #7
	bl SpriteSystem_LoadCharResObj
	mov r0, #0x73
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _021E5FF4 ; =0x000061A9
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBuffer
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FF8 ; =0x000061AA
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x73
	mov r3, #6
	bl SpriteSystem_LoadCellResObj
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E5FFC ; =0x000061AB
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x73
	mov r3, #5
	bl SpriteSystem_LoadAnimResObj
	add sp, #0x38
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E5FDC: .word ov95_021E7594
_021E5FE0: .word 0x00004E20
_021E5FE4: .word 0x00004E21
_021E5FE8: .word 0x00004E22
_021E5FEC: .word 0x00004E23
_021E5FF0: .word 0x000061A8
_021E5FF4: .word 0x000061A9
_021E5FF8: .word 0x000061AA
_021E5FFC: .word 0x000061AB
	thumb_func_end ov95_021E5EF8

