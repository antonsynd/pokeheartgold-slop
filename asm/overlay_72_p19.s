	.include "macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238194

	.text

	.text
	thumb_func_start ov72_02238194
ov72_02238194: ; 0x02238194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0xef
	mov r1, #0x43
	bl NARC_New
	str r0, [sp, #0x14]
	mov r0, #0xee
	mov r1, #0x43
	bl NARC_New
	add r7, r0, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x43
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	ldr r1, _022383AC ; =0x00000BFC
	mov r0, #0x14
	add r1, r5, r1
	mov r2, #0x43
	bl G2dRenderer_Init
	ldr r1, _022383B0 ; =0x00000BF8
	mov r2, #1
	str r0, [r5, r1]
	add r0, r1, #4
	add r0, r5, r0
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r6, #0
	add r4, r5, #0
_022381EC:
	mov r0, #3
	add r1, r6, #0
	mov r2, #0x43
	bl Create2DGfxResObjMan
	ldr r1, _022383B4 ; =0x00000D24
	add r6, r6, #1
	str r0, [r4, r1]
	add r4, r4, #4
	cmp r6, #4
	blt _022381EC
	mov r3, #0
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x43
	str r0, [sp, #8]
	add r0, r1, #0
	ldr r0, [r5, r0]
	add r1, r7, #0
	mov r2, #1
	bl AddCharResObjFromOpenNarc
	ldr r1, _022383B8 ; =0x00000D34
	mov r2, #0
	str r0, [r5, r1]
	str r2, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x43
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	add r3, r2, #0
	bl AddPlttResObjFromOpenNarc
	ldr r1, _022383BC ; =0x00000D38
	mov r3, #0
	str r0, [r5, r1]
	str r3, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #0x43
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _022383C0 ; =0x00000D3C
	mov r3, #0
	str r0, [r5, r1]
	str r3, [sp]
	mov r2, #3
	str r2, [sp, #4]
	mov r0, #0x43
	sub r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0x35
	lsl r1, r1, #6
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x43
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r2, #5
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	ldr r1, _022383C4 ; =0x00000D44
	mov r2, #4
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0x43
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	ldr r1, _022383C8 ; =0x00000D48
	mov r2, #6
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x43
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _022383CC ; =0x00000D4C
	mov r2, #7
	str r0, [r5, r1]
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x43
	sub r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r7, #0
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0xd5
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x43
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0xc
	mov r3, #0
	bl AddCharResObjFromOpenNarc
	ldr r1, _022383D0 ; =0x00000D54
	mov r2, #0xb
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x43
	sub r1, #0x2c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r3, #0
	bl AddPlttResObjFromOpenNarc
	ldr r1, _022383D4 ; =0x00000D58
	mov r2, #0xd
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x43
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	ldr r1, _022383D8 ; =0x00000D5C
	mov r2, #0xe
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x43
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x14]
	mov r3, #0
	bl AddCellOrAnimResObjFromOpenNarc
	mov r1, #0xd6
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, #0x2c
	ldr r0, [r5, r1]
	bl SpriteTransfer_CreateCharTransferTask
	ldr r0, _022383C4 ; =0x00000D44
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateCharTransferTask
	ldr r0, _022383D0 ; =0x00000D54
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateCharTransferTask
	ldr r0, _022383BC ; =0x00000D38
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	ldr r0, _022383C8 ; =0x00000D48
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	ldr r0, _022383D4 ; =0x00000D58
	ldr r0, [r5, r0]
	bl SpriteTransfer_CreateExtPlttTransferTask
	add r0, r7, #0
	bl NARC_Delete
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022383AC: .word 0x00000BFC
_022383B0: .word 0x00000BF8
_022383B4: .word 0x00000D24
_022383B8: .word 0x00000D34
_022383BC: .word 0x00000D38
_022383C0: .word 0x00000D3C
_022383C4: .word 0x00000D44
_022383C8: .word 0x00000D48
_022383CC: .word 0x00000D4C
_022383D0: .word 0x00000D54
_022383D4: .word 0x00000D58
_022383D8: .word 0x00000D5C
	thumb_func_end ov72_02238194

