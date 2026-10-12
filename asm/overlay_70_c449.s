#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022442B4
	.public ov70_022444E4

	.text

	.text
	thumb_func_start ov70_022442B4
ov70_022442B4: ; 0x022442B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	ldr r4, [r0, #4]
	mov r0, #0x58
	mov r1, #0x3d
	bl NARC_New
	mov r2, #0
	str r2, [sp]
	mov r1, #0x3d
	str r1, [sp, #4]
	mov r1, #3
	add r3, r2, #0
	str r0, [sp, #0x2c]
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r3, #0
	str r3, [sp]
	mov r0, #0x3d
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r1, #3
	mov r2, #4
	bl GfGfxLoader_GXLoadPalFromOpenNarc
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3d
	bl LoadFontPal1
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x3d
	bl LoadFontPal1
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bl Options_GetFrame
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3d
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xe
	bl LoadUserFrameGfx2
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3d
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl LoadUserFrameGfx1
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #2
	add r2, r4, #0
	mov r3, #1
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #6
	add r2, r4, #0
	mov r3, #1
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #0xb
	add r2, r4, #0
	mov r3, #5
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #0xc
	add r2, r4, #0
	mov r3, #5
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	add r1, r0, #0
	bl BG_SetMaskColor
	mov r0, #4
	mov r1, #0
	bl BG_SetMaskColor
	mov r2, #0x33
	ldr r1, _022444CC ; =0x000012D0
	ldr r0, [sp, #0x10]
	lsl r2, r2, #4
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x2c]
	mov r1, #5
	add r2, sp, #0x38
	mov r3, #0x3d
	bl GfGfxLoader_GetPlttDataFromOpenNarc
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r2, _022444D0 ; =0x000012D8
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl MIi_CpuCopy16
	ldr r0, [sp, #0x38]
	ldr r2, _022444D4 ; =0x00001358
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl Heap_Free
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, _022444D4 ; =0x00001358
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	sub r1, #0x80
	add r0, r0, r1
	str r0, [sp, #0x14]
_02244404:
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r1, r0, #5
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x30]
_02244416:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _02244420
	bl GF_AssertFail
_02244420:
	ldr r0, [sp, #0x30]
	mov r7, #1
	add r4, r0, #2
	ldr r0, [sp, #0x18]
	add r6, r0, #2
	ldr r0, [sp, #0x14]
	add r5, r0, #2
	ldr r0, [sp, #0x20]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_02244438:
	ldr r0, _022444D0 ; =0x000012D8
	ldr r3, [sp, #0x34]
	ldrh r0, [r4, r0]
	add r1, r6, #0
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	bl BlendPalette
	add r7, r7, #1
	add r4, r4, #2
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _02244438
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _02244482
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _02244416
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02244416
_02244482:
	ldr r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _02244404
	ldr r1, _022444D4 ; =0x00001358
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	bl DC_FlushRange
	ldr r1, _022444D8 ; =0x000012D4
	ldr r0, [sp, #0x10]
	mov r2, #1
	str r2, [r0, r1]
	ldr r2, _022444DC ; =0x000015FC
	mov r3, #0
	str r3, [r0, r2]
	sub r2, r1, #4
	ldr r1, [sp, #0x10]
	ldr r0, _022444E0 ; =ov70_022444E4
	add r1, r1, r2
	mov r2, #0x14
	bl SysTask_CreateOnVBlankQueue
	ldr r2, _022444CC ; =0x000012D0
	ldr r1, [sp, #0x10]
	str r0, [r1, r2]
	ldr r0, [sp, #0x2c]
	bl NARC_Delete
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022444CC: .word 0x000012D0
_022444D0: .word 0x000012D8
_022444D4: .word 0x00001358
_022444D8: .word 0x000012D4
_022444DC: .word 0x000015FC
_022444E0: .word ov70_022444E4
	thumb_func_end ov70_022442B4

	thumb_func_start ov70_022444E4
ov70_022444E4: ; 0x022444E4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02244582
	ldr r1, _02244584 ; =0x0000032B
	mov r0, #1
	ldrb r2, [r4, r1]
	eor r2, r0
	strb r2, [r4, r1]
	ldrb r2, [r4, r1]
	tst r0, r2
	bne _02244582
	add r0, r1, #1
	ldr r0, [r4, r0]
	cmp r0, #1
	bhi _0224451A
	sub r0, r1, #3
	ldrsh r0, [r4, r0]
	add r2, r4, #0
	add r2, #0x88
	lsl r0, r0, #5
	add r0, r2, r0
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
_0224451A:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244528
	cmp r0, #2
	bne _0224453E
_02244528:
	mov r0, #0xca
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
_0224453E:
	ldr r0, _02244588 ; =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _02244566
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _02244582
	mov r2, #0x13
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_02244566:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _02244582
	mov r2, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eor r1, r2
	strb r1, [r4, r0]
_02244582:
	pop {r4, pc}
	.balign 4, 0
_02244584: .word 0x0000032B
_02244588: .word 0x0000032A
	thumb_func_end ov70_022444E4

