#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EF31C
	.public ov112_021EF3F8
	.extern ov112_021EF1F0
	.extern ov112_021F04DC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EF31C
ov112_021EF31C: ; 0x021EF31C
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	cmp r0, #0
	bne _021EF3EA
	ldr r6, [r5, #0xc]
	ldr r0, [r4, #0x20]
	cmp r6, #0x12
	bne _021EF38C
	bl SaveArray_Party_Get
	ldr r1, [r5, #0x10]
	bl Party_GetMonByIndex
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	strh r0, [r5, #0x18]
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r5, #0
	add r1, #0x30
	strb r0, [r1]
	add r2, r5, #0
	add r0, r6, #0
	mov r1, #0x75
	add r2, #0x1a
	bl GetMonData
	add r0, r6, #0
	bl MonIsShiny
	add r1, r5, #0
	add r1, #0x31
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	add r5, #0x32
	strb r0, [r5]
	ldr r0, _021EF3F0 ; =0x0001E42C
	mov r1, #0
	str r6, [r4, r0]
	add r0, r0, #4
	add sp, #0x30
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021EF38C:
	bl SaveArray_PCStorage_Get
	ldr r2, [r5, #0x10]
	add r1, r6, #0
	bl PCStorage_GetMonByIndexPair
	mov r1, #0xac
	mov r2, #0
	add r6, r0, #0
	bl GetBoxMonData
	cmp r0, #0
	beq _021EF3B0
	ldr r0, _021EF3F4 ; =0x0001E430
	mov r1, #0
	str r6, [r4, r0]
	sub r0, r0, #4
	str r1, [r4, r0]
_021EF3B0:
	ldr r0, [r4, #0x20]
	bl SaveArray_PCStorage_Get
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	add r3, sp, #0
	bl ov112_021EF1F0
	ldr r0, [sp]
	mov r2, #0xb
	strh r0, [r5, #0x18]
	add r0, sp, #0
	ldrh r1, [r0, #0xa]
	add r0, r5, #0
	add r0, #0x30
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x1a
	add r1, sp, #0x18
	bl CopyU16StringArrayN
	add r0, r5, #0
	add r1, sp, #0
	ldrh r2, [r1, #0x10]
	add r0, #0x31
	add r5, #0x32
	strb r2, [r0]
	ldrh r0, [r1, #0x12]
	strb r0, [r5]
_021EF3EA:
	add sp, #0x30
	pop {r4, r5, r6, pc}
	nop
_021EF3F0: .word 0x0001E42C
_021EF3F4: .word 0x0001E430
	thumb_func_end ov112_021EF31C

	thumb_func_start ov112_021EF3F8
ov112_021EF3F8: ; 0x021EF3F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r0, #0
	ldr r0, _021EF564 ; =0x0001D764
	add r4, r1, #0
	add r0, r2, r0
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021EF412
	cmp r4, r0
	bne _021EF414
_021EF412:
	b _021EF550
_021EF414:
	mov r1, #2
	add r0, sp, #0x34
	strb r1, [r0, #9]
	cmp r5, #0x12
	ldr r0, [r2, #0x20]
	bne _021EF4D6
	bl SaveArray_Party_Get
	add r1, r4, #0
	bl Party_GetMonByIndex
	mov r1, #0
	add r7, r0, #0
	add r2, r1, #0
	bl GetMonData
	str r0, [sp, #0x34]
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r1, sp, #4
	strh r0, [r1, #0x34]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x34
	strb r0, [r1, #7]
	add r2, sp, #0x3c
	add r0, r7, #0
	mov r1, #0x75
	add r2, #2
	bl GetMonData
	add r0, r7, #0
	bl MonIsShiny
	add r1, sp, #0x34
	strb r0, [r1, #6]
	add r0, r7, #0
	mov r1, #0x6f
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x34
	strb r0, [r1, #8]
	add r0, r7, #0
	mov r1, #0xb
	mov r2, #0
	bl GetMonData
	mov r4, #0
	mov r3, #1
	add r5, r0, #0
	add r1, r4, #0
	add r2, sp, #0x34
	add r0, r3, #0
_021EF48C:
	add r6, r5, #0
	asr r6, r4
	tst r6, r0
	beq _021EF49C
	add r6, r2, r4
	add r6, #0x20
	strb r3, [r6]
	b _021EF4A2
_021EF49C:
	add r6, r2, r4
	add r6, #0x20
	strb r1, [r6]
_021EF4A2:
	add r4, r4, #1
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	cmp r4, #6
	blo _021EF48C
	add r0, r7, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x34
	strh r0, [r1, #0x26]
	add r0, r7, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x54
	strb r0, [r1, #8]
	ldr r0, [sp]
	add r1, sp, #0x34
	ldr r0, [r0, #8]
	bl ov112_021F04DC
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_021EF4D6:
	bl SaveArray_PCStorage_Get
	add r1, r5, #0
	add r2, r4, #0
	add r3, sp, #4
	bl ov112_021EF1F0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp, #0x34]
	add r0, sp, #4
	strh r1, [r0, #0x34]
	ldrh r1, [r0, #0xa]
	add r0, sp, #0x34
	mov r2, #0xb
	strb r1, [r0, #7]
	add r0, sp, #0x3c
	add r0, #2
	add r1, sp, #0x1c
	bl CopyU16StringArrayN
	add r0, sp, #4
	ldrh r1, [r0, #0x10]
	add r2, sp, #0x34
	mov r5, #0
	strb r1, [r2, #6]
	ldrh r1, [r0, #0x12]
	mov r3, #1
	strb r1, [r2, #8]
	ldrh r4, [r0, #0x16]
	add r1, r5, #0
	add r0, r3, #0
_021EF516:
	add r6, r4, #0
	asr r6, r5
	tst r6, r0
	beq _021EF526
	add r6, r2, r5
	add r6, #0x20
	strb r3, [r6]
	b _021EF52C
_021EF526:
	add r6, r2, r5
	add r6, #0x20
	strb r1, [r6]
_021EF52C:
	add r5, r5, #1
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	cmp r5, #6
	blo _021EF516
	add r0, sp, #4
	ldrh r2, [r0, #0xc]
	add r1, sp, #0x34
	strh r2, [r1, #0x26]
	ldrh r2, [r0, #0x14]
	add r0, sp, #0x54
	strb r2, [r0, #8]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl ov112_021F04DC
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_021EF550:
	mov r0, #0
	add r1, sp, #0x34
	strb r0, [r1, #9]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl ov112_021F04DC
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EF564: .word 0x0001D764
	thumb_func_end ov112_021EF3F8

