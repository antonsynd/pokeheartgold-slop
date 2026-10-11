#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FE1D0
	.public ov15_021FE204
	.public ov15_021FE3E0
	.extern ov15_022008D0
	.extern ov15_022008E8

	.text

	.text
	thumb_func_start ov15_021FE1D0
ov15_021FE1D0: ; 0x021FE1D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _021FE200
	mov r6, #0
	add r4, r5, #0
	add r4, #0xb4
	add r7, r6, #0
_021FE1E4:
	add r0, r4, #0
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r4, #0
	bl RemoveWindow
	add r0, r5, #0
	add r0, #0xb4
	add r6, r6, #1
	str r7, [r0]
	add r4, #0x10
	add r5, #0x10
	cmp r6, #0xc
	blt _021FE1E4
_021FE200:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov15_021FE1D0

	thumb_func_start ov15_021FE204
ov15_021FE204: ; 0x021FE204
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r3, #0x5d
	lsl r3, r3, #2
	str r0, [sp, #0x14]
	ldr r0, [r0, r3]
	cmp r0, #0
	beq _021FE216
	b _021FE3BC
_021FE216:
	mov r0, #7
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021FE3C0 ; =0x000002CF
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r1, r3
	ldr r0, [r0]
	mov r3, #0xc
	bl AddWindowParameterized
	mov r1, #0x5d
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x14]
	ldr r4, _021FE3C4 ; =0x0000031B
	str r0, [sp, #0x18]
	add r0, #0xb4
	ldr r5, _021FE3C8 ; =ov15_022008E8
	mov r6, #0
	str r0, [sp, #0x18]
_021FE252:
	add r0, r6, #0
	add r0, #0xd
	lsl r7, r0, #4
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0]
	lsl r3, r3, #0x18
	add r1, r1, r7
	mov r2, #4
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [sp, #0x18]
	mov r1, #0
	add r0, r0, r7
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, #0x14
	add r5, #8
	cmp r6, #4
	blt _021FE252
	ldr r0, [sp, #0x14]
	ldr r4, _021FE3CC ; =0x000002FB
	str r0, [sp, #0x1c]
	add r0, #0xb4
	ldr r5, _021FE3D0 ; =ov15_022008D0
	mov r6, #0
	str r0, [sp, #0x1c]
_021FE2A8:
	add r0, r6, #0
	add r0, #0x11
	lsl r7, r0, #4
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0]
	lsl r3, r3, #0x18
	add r1, r1, r7
	mov r2, #4
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r0, [sp, #0x1c]
	mov r1, #0
	add r0, r0, r7
	bl FillWindowPixelBuffer
	add r6, r6, #1
	add r4, r4, #6
	add r5, #8
	cmp r6, #3
	blt _021FE2A8
	mov r0, #0x15
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _021FE3D4 ; =0x0000030D
	mov r2, #0x7d
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r0, [r0]
	mov r2, #4
	mov r3, #0xe
	bl AddWindowParameterized
	mov r1, #0x7d
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #1
	str r0, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r2, #4
	mov r4, #0x81
	str r2, [sp, #8]
	mov r3, #0xb
	ldr r0, _021FE3C4 ; =0x0000031B
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	lsl r4, r4, #2
	ldr r0, [r0]
	add r1, r1, r4
	bl AddWindowParameterized
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	add r0, r0, r1
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r3, #0
	str r3, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r2, #4
	str r2, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _021FE3D8 ; =0x00000363
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r4, #0x10
	ldr r0, [r0]
	add r1, r1, r4
	bl AddWindowParameterized
	mov r1, #0x85
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #0xe
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _021FE3DC ; =0x00000387
	mov r2, #0x89
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r0, [r0]
	mov r2, #4
	mov r3, #0x18
	bl AddWindowParameterized
	mov r1, #0x89
	ldr r0, [sp, #0x14]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0
	bl FillWindowPixelBuffer
_021FE3BC:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021FE3C0: .word 0x000002CF
_021FE3C4: .word 0x0000031B
_021FE3C8: .word ov15_022008E8
_021FE3CC: .word 0x000002FB
_021FE3D0: .word ov15_022008D0
_021FE3D4: .word 0x0000030D
_021FE3D8: .word 0x00000363
_021FE3DC: .word 0x00000387
	thumb_func_end ov15_021FE204

	thumb_func_start ov15_021FE3E0
ov15_021FE3E0: ; 0x021FE3E0
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021FE4C6
	ldr r5, [sp]
	mov r4, #0
	add r6, r5, #0
	add r6, #0xb4
_021FE3F6:
	add r0, r4, #0
	add r0, #0x11
	lsl r7, r0, #4
	add r0, r6, r7
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r6, r7
	bl RemoveWindow
	mov r0, #0x71
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _021FE3F6
	add r1, r0, #0
	ldr r0, [sp]
	add r1, #0x60
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	mov r1, #0x89
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	bl RemoveWindow
	mov r1, #0x89
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	sub r1, #0x10
	add r0, r0, r1
	bl RemoveWindow
	mov r1, #0x85
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	sub r1, #0x10
	add r0, r0, r1
	bl RemoveWindow
	mov r1, #0x81
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
	sub r1, #0x10
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	mov r1, #0x7d
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	bl RemoveWindow
	ldr r0, [sp]
	mov r1, #0x7d
	add r6, r0, #0
	mov r5, #0
	lsl r1, r1, #2
	str r5, [r0, r1]
	add r4, r0, #0
	add r6, #0xb4
_021FE482:
	add r0, r5, #0
	add r0, #0xd
	lsl r7, r0, #4
	add r0, r6, r7
	bl ClearWindowTilemapAndScheduleTransfer
	add r0, r6, r7
	bl RemoveWindow
	mov r0, #0x61
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #4
	blt _021FE482
	add r1, r0, #0
	ldr r0, [sp]
	sub r1, #0x10
	add r0, r0, r1
	bl ClearWindowTilemapAndScheduleTransfer
	mov r1, #0x5d
	ldr r0, [sp]
	lsl r1, r1, #2
	add r0, r0, r1
	bl RemoveWindow
	mov r1, #0x5d
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r0, r1]
_021FE4C6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov15_021FE3E0

