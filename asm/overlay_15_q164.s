#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FF570
	.extern ov15_021FE914
	.extern ov15_021FE9F0
	.extern ov15_021FF66C

	.text

	.text
	thumb_func_start ov15_021FF570
ov15_021FF570: ; 0x021FF570
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #8]
	add r6, r1, #0
	cmp r0, #3
	beq _021FF586
	cmp r0, #7
	beq _021FF5D8
	b _021FF632
_021FF586:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FF668 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x28]
	ldr r2, [r4]
	lsl r7, r0, #2
	add r0, r5, #0
	add r1, r6, #0
	add r2, r2, r7
	mov r3, #0x10
	bl ov15_021FE914
	ldr r3, [r4]
	mov r0, #0x52
	ldrh r1, [r3, r7]
	lsl r0, r0, #2
	cmp r1, r0
	blo _021FF662
	add r0, #0x5b
	cmp r1, r0
	bhi _021FF662
	mov r1, #0xbd
	lsl r1, r1, #2
	add r3, r3, r7
	ldr r0, [r5, r1]
	sub r1, r1, #4
	ldrh r3, [r3, #2]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov15_021FF66C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021FF5D8:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FF668 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r0, [sp, #0x28]
	lsl r7, r0, #2
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Bag_GetRegisteredItem1
	ldr r1, [r4]
	ldrh r1, [r1, r7]
	cmp r1, r0
	bne _021FF610
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x10
	mov r3, #0
	bl ov15_021FE9F0
_021FF610:
	mov r0, #0x8e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl Bag_GetRegisteredItem2
	ldr r1, [r4]
	ldrh r1, [r1, r7]
	cmp r1, r0
	bne _021FF662
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x10
	mov r3, #1
	bl ov15_021FE9F0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021FF632:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021FF668 ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterizedWithColor
	ldr r3, [sp, #0x28]
	mov r1, #0xbd
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	sub r1, r1, #4
	ldr r4, [r4]
	lsl r3, r3, #2
	add r3, r4, r3
	ldrh r3, [r3, #2]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov15_021FF66C
_021FF662:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021FF668: .word 0x00010200
	thumb_func_end ov15_021FF570

