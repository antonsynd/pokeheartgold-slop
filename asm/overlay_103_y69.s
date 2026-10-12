	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDD98

	.text

	.text
	thumb_func_start ov103_021EDD98
ov103_021EDD98: ; 0x021EDD98
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02090F6C
	str r0, [r4, #0x24]
	cmp r0, #1
	bne _021EDDD8
	ldr r0, [r4, #8]
	ldr r0, [r0]
	bl SaveArray_Party_Get
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	bl Party_GetMonByIndex
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl sub_02090F70
	ldr r0, [r4, #8]
	ldr r0, [r0]
	bl Save_Bag_Get
	ldrh r1, [r4, #0x22]
	mov r2, #1
	mov r3, #0x9c
	bl Bag_TakeItem
_021EDDD8:
	ldr r0, [r4, #0x14]
	bl sub_02090F90
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov103_021EDD98

