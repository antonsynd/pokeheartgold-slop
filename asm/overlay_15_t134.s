#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_02200140
	.extern ov15_021FF8F0
	.extern ov15_022000F4
	.extern ov15_02200B0C

	.text

	.text
	thumb_func_start ov15_02200140
ov15_02200140: ; 0x02200140
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r6, _022001BC ; =ov15_02200B0C
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	mov r4, #0
	add r5, r7, #0
_02200152:
	mov r0, #0x95
	mov r1, #0x34
	mov r2, #0x36
	lsl r0, r0, #2
	mov r3, #1
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x14
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [sp, #4]
	cmp r4, r0
	bge _0220019A
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0220018C
	ldr r3, [sp]
	mov r2, #6
	ldrsh r2, [r3, r2]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r2, r4
	lsl r2, r2, #1
	add r3, r7, r2
	ldr r2, _022001C0 ; =0x000006A4
	ldrh r2, [r3, r2]
	bl ov15_021FF8F0
_0220018C:
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	b _022001A6
_0220019A:
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_022001A6:
	add r4, r4, #1
	add r6, #0x34
	add r5, r5, #4
	cmp r4, #6
	blt _02200152
	add r0, r7, #0
	bl ov15_022000F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022001BC: .word ov15_02200B0C
_022001C0: .word 0x000006A4
	thumb_func_end ov15_02200140

