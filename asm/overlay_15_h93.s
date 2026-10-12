#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FD4C0
	.public ov15_021FD574
	.extern ov15_021FA098
	.extern ov15_021FD43C
	.extern ov15_0220005C
	.extern ov15_02200294
	.extern ov15_02201328
	.extern ov15_02201340

	.text

	.text
	thumb_func_start ov15_021FD4C0
ov15_021FD4C0: ; 0x021FD4C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0x10]
	lsl r1, r1, #0x18
	add r5, r2, #0
	lsr r1, r1, #0x18
	add r6, r0, #0
	str r3, [sp, #0x14]
	bl GetBgTilemapBuffer
	str r0, [sp, #0x18]
	sub r0, r5, #1
	ldr r1, _021FD56C ; =ov15_02201340
	lsl r0, r0, #3
	add r5, r1, r0
	ldr r0, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021FD4E6:
	ldrb r0, [r5, #1]
	add r1, r7, #0
	mov r2, #0
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5]
	add r0, r6, #0
	bl FillBgTilemapRect
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021FD4E6
	mov r1, #0
	ldr r0, [sp, #0x14]
	mvn r1, r1
	cmp r0, r1
	beq _021FD566
	ldr r1, _021FD570 ; =ov15_02201328
	lsl r0, r0, #2
	add r3, r1, r0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	ldrb r0, [r3, #1]
	bhi _021FD546
	str r0, [sp]
	ldrb r0, [r3, #2]
	ldr r1, [sp, #0x10]
	mov r4, #6
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	lsl r1, r1, #0x18
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	lsl r4, r4, #8
	ldrb r3, [r3]
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, r2, r4
	bl LoadRectToBgTilemapRect
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021FD546:
	str r0, [sp]
	ldrb r0, [r3, #2]
	ldr r1, [sp, #0x10]
	mov r4, #0x1b
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	lsl r1, r1, #0x18
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	lsl r4, r4, #6
	ldrb r3, [r3]
	add r0, r6, #0
	lsr r1, r1, #0x18
	add r2, r2, r4
	bl LoadRectToBgTilemapRect
_021FD566:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021FD56C: .word ov15_02201340
_021FD570: .word ov15_02201328
	thumb_func_end ov15_021FD4C0

	thumb_func_start ov15_021FD574
ov15_021FD574: ; 0x021FD574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #4
	bls _021FD588
	bl GF_AssertFail
_021FD588:
	cmp r5, #4
	bls _021FD58E
	b _021FD770
_021FD58E:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021FD59A: ; jump table
	.short _021FD5A4 - _021FD59A - 2 ; case 0
	.short _021FD62E - _021FD59A - 2 ; case 1
	.short _021FD6C6 - _021FD59A - 2 ; case 2
	.short _021FD70C - _021FD59A - 2 ; case 3
	.short _021FD740 - _021FD59A - 2 ; case 4
_021FD5A4:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	mov r1, #0x2b
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4]
	ldr r3, [r3, #8]
	mov r1, #5
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4]
	mov r1, #5
	bl GetBgTilemapBuffer
	ldr r1, [sp, #4]
	ldr r1, [r1, #8]
	bl DC_FlushRange
	ldr r0, [r4]
	mov r1, #5
	add r2, r6, #0
	bl ov15_021FD43C
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	mov r1, #0x27
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov15_0220005C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021FD62E:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	mov r1, #0x2c
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4]
	ldr r3, [r3, #8]
	mov r1, #5
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4]
	mov r1, #5
	bl GetBgTilemapBuffer
	ldr r1, [sp, #4]
	ldr r1, [r1, #8]
	bl DC_FlushRange
	ldr r0, [r4]
	mov r1, #5
	add r2, r6, #0
	add r3, r7, #0
	bl ov15_021FD4C0
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	mov r1, #0x2a
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	add r0, r4, #0
	bl ov15_02200294
	add r0, r4, #0
	bl ov15_021FA098
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl ov15_0220005C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021FD6C6:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	mov r1, #0x2d
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	ldr r0, [r4]
	mov r1, #5
	add r2, r6, #0
	bl ov15_021FD43C
	ldr r0, [r4]
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021FD70C:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	mov r1, #0x34
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021FD740:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xf
	mov r1, #0x35
	mov r2, #0
	add r3, sp, #4
	bl GfGfxLoader_GetScrnData
	ldr r3, [sp, #4]
	add r5, r0, #0
	add r2, r3, #0
	ldr r0, [r4]
	ldr r3, [r3, #8]
	mov r1, #6
	add r2, #0xc
	bl BG_LoadScreenTilemapData
	ldr r0, [r4]
	mov r1, #6
	bl ScheduleBgTilemapBufferTransfer
	add r0, r5, #0
	bl Heap_Free
_021FD770:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov15_021FD574

