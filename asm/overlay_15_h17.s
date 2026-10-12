#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021F9DB4

	.text

	.text
	thumb_func_start ov15_021F9DB4
ov15_021F9DB4: ; 0x021F9DB4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r1, [r7, r0]
	mov r5, #0
	add r1, #0x64
	strb r5, [r1]
	ldr r0, [r7, r0]
	add r4, r0, #4
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	bne _021F9E12
	add r2, r5, #0
	mov r1, #0xc
_021F9DD2:
	add r0, r5, #0
	mul r0, r1
	add r3, r4, r0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F9DE2
	strh r2, [r3, #4]
	strh r2, [r3, #6]
_021F9DE2:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021F9DD2
	mov r2, #0
	mov r1, #0xc
_021F9DF0:
	add r0, r2, #0
	mul r0, r1
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F9E06
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r0, #0x64
	strb r2, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F9E06:
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	cmp r2, #8
	blo _021F9DF0
	pop {r3, r4, r5, r6, r7, pc}
_021F9E12:
	mov r0, #0xc
	mul r0, r5
	add r6, r4, r0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F9E3E
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldrb r1, [r6, #8]
	add r2, sp, #0
	ldr r0, [r0, #0x6c]
	add r2, #1
	add r3, sp, #0
	bl BagCursor_Field_PocketGetPosition
	add r0, sp, #0
	ldrb r0, [r0, #1]
	strh r0, [r6, #4]
	add r0, sp, #0
	ldrb r0, [r0]
	strh r0, [r6, #6]
_021F9E3E:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021F9E12
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r0, [r0, #0x6c]
	bl BagCursor_Field_GetPocket
	mov r1, #0xc
	mul r1, r0
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021F9E7A
	mov r3, #0
	mov r2, #0xc
_021F9E62:
	add r1, r3, #0
	mul r1, r2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021F9E70
	add r0, r3, #0
	b _021F9E7A
_021F9E70:
	add r1, r3, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r3, #8
	blo _021F9E62
_021F9E7A:
	mov r1, #0
	mov r2, #0xc
_021F9E7E:
	add r3, r1, #0
	mul r3, r2
	add r5, r4, r3
	ldr r3, [r4, r3]
	cmp r3, #0
	beq _021F9E9C
	ldrb r3, [r5, #8]
	cmp r0, r3
	bne _021F9E9C
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r0, #0x64
	strb r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
_021F9E9C:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #8
	blo _021F9E7E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov15_021F9DB4

