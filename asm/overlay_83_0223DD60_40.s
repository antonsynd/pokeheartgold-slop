	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240E70

    .text

	thumb_func_start ov83_02240E70
ov83_02240E70: ; 0x02240E70
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov80_02237D8C
	cmp r0, #1
	bne _02240EA6
	cmp r4, #0
	bne _02240E8C
	mov r0, #0x28
	str r0, [r5]
	b _02240EBE
_02240E8C:
	cmp r4, #1
	bne _02240E96
	mov r0, #0x68
	str r0, [r5]
	b _02240EBE
_02240E96:
	cmp r4, #2
	bne _02240EA0
	mov r0, #0xa8
	str r0, [r5]
	b _02240EBE
_02240EA0:
	mov r0, #0xe8
	str r0, [r5]
	b _02240EBE
_02240EA6:
	cmp r4, #0
	bne _02240EB0
	mov r0, #0x48
	str r0, [r5]
	b _02240EBE
_02240EB0:
	cmp r4, #1
	bne _02240EBA
	mov r0, #0x88
	str r0, [r5]
	b _02240EBE
_02240EBA:
	mov r0, #0xc8
	str r0, [r5]
_02240EBE:
	mov r0, #0x58
	str r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_02240E70

