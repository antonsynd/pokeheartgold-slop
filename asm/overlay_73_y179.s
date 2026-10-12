#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021EA3D0
	.extern ov73_021EA744

	.text

	.text
	thumb_func_start ov73_021EA3D0
ov73_021EA3D0: ; 0x021EA3D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r0, [sp]
	ldr r0, _021EA514 ; =0x00000BB8
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	mov r0, #0x32
	str r0, [sp, #0x50]
	ldr r0, [sp]
	mov r7, #0
	str r0, [sp, #0x54]
	bl sub_0203769C
	add r5, r7, #0
	str r0, [sp, #0x5c]
	mov r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x3c
	str r0, [sp, #0x60]
	add r0, sp, #0x28
	ldr r4, _021EA518 ; =ov73_021EA744
	str r0, [sp, #0x64]
	str r5, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r5, [sp, #0x24]
_021EA402:
	ldr r0, [sp]
	ldr r1, [r4]
	blx r1
	ldr r1, [sp, #0x1c]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x1c]
	cmp r5, #2
	blt _021EA402
	ldr r4, _021EA518 ; =ov73_021EA744
	mov r5, #0
_021EA41A:
	ldr r0, [sp]
	ldr r1, [r4]
	blx r1
	ldr r1, [sp, #0x20]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x20]
	cmp r5, #3
	blt _021EA41A
	ldr r4, _021EA518 ; =ov73_021EA744
	mov r5, #0
_021EA432:
	ldr r0, [sp]
	ldr r1, [r4]
	blx r1
	ldr r1, [sp, #0x24]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x24]
	cmp r5, #4
	blt _021EA432
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _021EA518 ; =ov73_021EA744
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	str r0, [sp, #0xc]
_021EA452:
	ldr r1, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r1, r0
	bhi _021EA466
	bl GF_AssertFail
_021EA466:
	mov r6, #0
	ldr r4, [sp, #4]
	add r5, r6, #0
_021EA46C:
	add r0, r6, #0
	bl sub_02034818
	cmp r0, #0
	beq _021EA47E
	ldr r0, [sp, #0x60]
	add r1, r4, r7
	str r1, [r0, r5]
	b _021EA484
_021EA47E:
	ldr r1, [sp, #0x60]
	mov r0, #0
	str r0, [r1, r5]
_021EA484:
	mov r0, #0x2f
	lsl r0, r0, #6
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, #4
	cmp r6, #5
	blt _021EA46C
	ldr r0, [sp, #8]
	cmp r0, #7
	beq _021EA4A0
	cmp r0, #8
	beq _021EA4A0
	cmp r0, #9
	bne _021EA4D2
_021EA4A0:
	mov r6, #0
	ldr r4, [sp, #4]
	add r5, r6, #0
_021EA4A6:
	add r0, r6, #0
	bl sub_02034818
	cmp r0, #0
	beq _021EA4BE
	ldr r0, [sp, #0xc]
	sub r0, #0x1c
	ldr r0, [r0]
	add r1, r4, r0
	ldr r0, [sp, #0x64]
	str r1, [r0, r5]
	b _021EA4C4
_021EA4BE:
	ldr r1, [sp, #0x64]
	mov r0, #0
	str r0, [r1, r5]
_021EA4C4:
	mov r0, #0x2f
	lsl r0, r0, #6
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, #4
	cmp r6, #5
	blt _021EA4A6
_021EA4D2:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021EA4DE
	add r0, sp, #0x50
	blx r1
_021EA4DE:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r7, r7, r0
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xa
	blo _021EA452
	ldr r0, [sp]
	bl sub_020270C4
	add r4, r0, #0
	bl sub_0202E43C
	add r0, r4, #0
	bl sub_0202E474
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EA514: .word 0x00000BB8
_021EA518: .word ov73_021EA744
	thumb_func_end ov73_021EA3D0

