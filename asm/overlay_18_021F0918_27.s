	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F1324
	.public ov18_021F13DC
	.public ov18_021F1424
	.extern ov18_021FA3E8

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
	thumb_func_start ov18_021F1324
ov18_021F1324: ; 0x021F1324
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _021F13C4 ; =0x00000000
	beq _021F1354
	mov r7, #1
_021F1332:
	ldr r0, _021F13C8 ; =0x0000C550
	str r7, [sp]
	str r7, [sp, #4]
	add r0, r4, r0
	str r0, [sp, #8]
	ldr r0, _021F13CC ; =0x00000668
	ldr r1, _021F13D0 ; =0x0000066C
	ldr r2, _021F13D4 ; =0x00000854
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	mov r3, #0x4c
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	add r4, r4, #1
	cmp r4, r6
	blo _021F1332
_021F1354:
	bl sub_02074490
	ldr r1, _021F13D8 ; =0x00000858
	ldr r3, _021F13CC ; =0x00000668
	ldr r2, [r5, r1]
	sub r1, #8
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021F13C8 ; =0x0000C550
	str r0, [sp, #0x14]
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r0, [r5, r1]
	ldr r3, [r5, r3]
	mov r1, #2
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	bl sub_0207449C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021F13C8 ; =0x0000C550
	ldr r1, _021F13CC ; =0x00000668
	str r0, [sp, #4]
	ldr r2, _021F13D8 ; =0x00000858
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	bl sub_020744A8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _021F13C8 ; =0x0000C550
	ldr r1, _021F13CC ; =0x00000668
	str r0, [sp, #4]
	ldr r2, _021F13D8 ; =0x00000858
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F13C4: .word 0x00000000
_021F13C8: .word 0x0000C550
_021F13CC: .word 0x00000668
_021F13D0: .word 0x0000066C
_021F13D4: .word 0x00000854
_021F13D8: .word 0x00000858
	thumb_func_end ov18_021F1324

	thumb_func_start ov18_021F13DC
ov18_021F13DC: ; 0x021F13DC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r4, _021F1418 ; =0x00000000
	beq _021F13F8
	ldr r7, _021F141C ; =0x0000C550
_021F13E8:
	ldr r0, _021F1420 ; =0x0000066C
	add r1, r4, r7
	ldr r0, [r5, r0]
	bl SpriteManager_UnloadCharObjById
	add r4, r4, #1
	cmp r4, r6
	blo _021F13E8
_021F13F8:
	ldr r0, _021F1420 ; =0x0000066C
	ldr r1, _021F141C ; =0x0000C550
	ldr r0, [r5, r0]
	bl SpriteManager_UnloadPlttObjById
	ldr r0, _021F1420 ; =0x0000066C
	ldr r1, _021F141C ; =0x0000C550
	ldr r0, [r5, r0]
	bl SpriteManager_UnloadCellObjById
	ldr r0, _021F1420 ; =0x0000066C
	ldr r1, _021F141C ; =0x0000C550
	ldr r0, [r5, r0]
	bl SpriteManager_UnloadAnimObjById
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1418: .word 0x00000000
_021F141C: .word 0x0000C550
_021F1420: .word 0x0000066C
	thumb_func_end ov18_021F13DC

	thumb_func_start ov18_021F1424
ov18_021F1424: ; 0x021F1424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r7, r0, #0
	lsl r0, r1, #2
	ldr r3, _021F147C ; =ov18_021FA3E8
	mov r4, #0
	add r5, r7, r0
	add r2, sp, #0
	mov r6, #6
_021F1436:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _021F1436
	ldr r0, [r3]
	str r0, [r2]
_021F1442:
	add r6, sp, #0
	add r3, sp, #0x34
	mov r2, #6
_021F1448:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F1448
	ldr r0, [r6]
	ldr r1, _021F1480 ; =0x0000066C
	str r0, [r3]
	ldr r0, _021F1484 ; =0x0000C550
	add r2, sp, #0x34
	add r0, r4, r0
	str r0, [sp, #0x48]
	ldr r0, _021F1488 ; =0x00000668
	ldr r1, [r7, r1]
	ldr r0, [r7, r0]
	bl SpriteSystem_NewSprite
	mov r1, #0x67
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x3c
	blo _021F1442
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F147C: .word ov18_021FA3E8
_021F1480: .word 0x0000066C
_021F1484: .word 0x0000C550
_021F1488: .word 0x00000668
	thumb_func_end ov18_021F1424

