#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021EB1E8.inc"
	.include "global.inc"
	.public ov01_021EB4B8
	.extern ov01_021EB56C
	.extern ov01_021EB578

	.text

	.text
	thumb_func_start ov01_021EB4B8
ov01_021EB4B8: ; 0x021EB4B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _021EB564 ; =0xFFFFF000
	add r6, r0, #0
	add r0, #0x14
	bl GF_InitG2dRenderer
	mov r0, #0
	add r3, r6, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0xac
	add r1, sp, #0xc
	mov r2, #1
	add r3, #0x14
	bl sub_0200B27C
	mov r4, #0
	add r5, r6, #0
	mov r7, #0xe
_021EB4EE:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl Create2DGfxResObjMan
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021EB4EE
	bl GF2DGfxResHeader_sizeof
	add r1, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl Heap_Alloc
	str r0, [r6, #0x10]
	mov r1, #0
	mov r2, #0x39
	bl ov01_021EB578
	ldr r0, [r6, #0x10]
	mov r1, #1
	mov r2, #0x3a
	bl ov01_021EB578
	ldr r0, [r6, #0x10]
	mov r1, #2
	mov r2, #0x37
	bl ov01_021EB578
	ldr r0, [r6, #0x10]
	mov r1, #3
	mov r2, #0x38
	bl ov01_021EB578
	mov r0, #0x40
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, sp, #0
	bl SpriteList_Create
	add r1, r6, #0
	add r1, #0xf4
	str r0, [r1]
	ldr r0, _021EB568 ; =ov01_021EB56C
	add r1, r6, #0
	mov r2, #0xa
	bl SysTask_CreateOnMainQueue
	add r6, #0xf8
	str r0, [r6]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021EB564: .word 0xFFFFF000
_021EB568: .word ov01_021EB56C
	thumb_func_end ov01_021EB4B8

