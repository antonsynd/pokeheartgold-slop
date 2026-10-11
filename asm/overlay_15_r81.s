#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FE528
	.public ov15_021FE584
	.public ov15_021FE5A4
	.public ov15_021FE5C4
	.extern ov15_021F9D60

	.text

	.text
	thumb_func_start ov15_021FE528
ov15_021FE528: ; 0x021FE528
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xd
	mov r7, #1
_021FE534:
	str r6, [sp]
	str r7, [sp, #4]
	add r2, r4, #0
	add r2, #0xcd
	lsl r2, r2, #0x10
	lsl r3, r4, #0x18
	str r7, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r5]
	mov r1, #3
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	mov r0, #0xe
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #4
	add r2, #0xf1
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r4, #0x18
	ldr r0, [r5]
	mov r1, #3
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _021FE534
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov15_021FE528

	thumb_func_start ov15_021FE584
ov15_021FE584: ; 0x021FE584
	push {r3, r4, r5, lr}
	lsl r1, r1, #0x10
	add r4, r2, #0
	lsr r1, r1, #0x10
	mov r2, #0
	add r5, r0, #0
	bl ov15_021F9D60
	add r2, r0, #0
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl BufferItemName
	pop {r3, r4, r5, pc}
	thumb_func_end ov15_021FE584

	thumb_func_start ov15_021FE5A4
ov15_021FE5A4: ; 0x021FE5A4
	push {r3, r4, r5, lr}
	lsl r1, r1, #0x10
	add r4, r2, #0
	lsr r1, r1, #0x10
	mov r2, #0
	add r5, r0, #0
	bl ov15_021F9D60
	add r2, r0, #0
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl BufferItemNamePlural
	pop {r3, r4, r5, pc}
	thumb_func_end ov15_021FE5A4

	thumb_func_start ov15_021FE5C4
ov15_021FE5C4: ; 0x021FE5C4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _021FE618 ; =0x0000FFFF
	add r6, r1, #0
	cmp r6, r0
	beq _021FE5E6
	mov r0, #0x82
	mov r1, #6
	bl String_New
	add r1, r6, #0
	mov r2, #6
	add r4, r0, #0
	bl GetItemDescIntoString
	b _021FE5F4
_021FE5E6:
	mov r0, #0x2f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x61
	bl NewString_ReadMsgData
	add r4, r0, #0
_021FE5F4:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FE61C ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #4
	mov r3, #0x14
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	add r0, r4, #0
	bl String_Delete
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021FE618: .word 0x0000FFFF
_021FE61C: .word 0x000F0E00
	thumb_func_end ov15_021FE5C4

