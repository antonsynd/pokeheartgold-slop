	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED00C
	.public ov103_021ED0A0
	.public ov103_021ED0C0
	.public ov103_021EDA40
	.public ov103_021EDA70
	.public ov103_021EDC00
	.public ov103_021EDC58
	.public ov103_021EDC68
	.public ov103_021EDD54
	.public ov103_021EDD98
	.public ov103_021EDDE4
	.public ov103_021EDE5C
	.public ov103_021EDE7C
	.public ov103_021EDEA8
	.public ov103_021EDF88
	.public ov103_021EE048
	.public ov103_021EE0CC
	.public ov103_021EE13C
	.public ov103_021EE160
	.public ov103_021EE2E0
	.public ov103_021EE644
	.public ov103_021EE8A8
	.public ov103_021EEC58
	.public ov103_021EED58

	.text

	thumb_func_start ov103_021EDD54
ov103_021EDD54: ; 0x021EDD54
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldrh r0, [r4, #0x22]
	bl ItemToMailId
	add r3, r0, #0
	mov r0, #0x9c
	add r2, r4, #0
	str r0, [sp]
	add r2, #0x21
	ldrb r2, [r2]
	ldr r0, [r4, #8]
	mov r1, #2
	lsl r2, r2, #0x19
	ldr r0, [r0]
	lsr r2, r2, #0x19
	bl sub_02090E68
	ldr r1, [r4, #8]
	mov r2, #0x9c
	ldr r1, [r1, #8]
	str r1, [r0, #0x1c]
	str r0, [r4, #0x14]
	ldr r0, _021EDD94 ; =ov103_021EEC58
	ldr r1, [r4, #0x14]
	bl OverlayManager_New
	str r0, [r4, #0x10]
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021EDD94: .word ov103_021EEC58
	thumb_func_end ov103_021EDD54

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

	thumb_func_start ov103_021EDDE4
ov103_021EDDE4: ; 0x021EDDE4
	push {r4, lr}
	add r4, r0, #0
	bl ov103_021EDC00
	add r0, r4, #0
	bl ov103_021EDC58
	add r0, r4, #0
	bl ov103_021ED0A0
	add r0, r4, #0
	bl ov103_021ED00C
	mov r1, #0x2e
	ldr r0, [r4, #0xc]
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
	cmp r1, #0xa
	bhi _021EDE1C
	mov r1, #0
	add r2, r1, #0
	bl ov103_021EE0CC
	ldr r0, [r4, #0xc]
	mov r1, #1
	mov r2, #0
	bl ov103_021EE0CC
_021EDE1C:
	ldr r1, [r4, #0xc]
	ldr r0, _021EDE58 ; =0x000002E2
	ldrh r1, [r1, r0]
	ldrh r0, [r4, #0x1c]
	cmp r0, r1
	bls _021EDE2E
	strh r1, [r4, #0x1c]
	mov r0, #0
	strb r0, [r4, #0x1e]
_021EDE2E:
	add r0, r4, #0
	bl ov103_021EE644
	add r0, r4, #0
	bl ov103_021ED0C0
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	ldr r0, [r0, #4]
	bl sub_0201980C
	add r0, r4, #0
	mov r1, #1
	bl ov103_021EE8A8
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	bl ov103_021EDA70
	pop {r4, pc}
	.balign 4, 0
_021EDE58: .word 0x000002E2
	thumb_func_end ov103_021EDDE4

	thumb_func_start ov103_021EDE5C
ov103_021EDE5C: ; 0x021EDE5C
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #0x22]
	mov r1, #9
	mov r3, #0
	bl ov103_021EDC68
	mov r1, #1
	str r1, [r4, #0x18]
	mov r0, #6
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl ov103_021EDA40
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov103_021EDE5C

	thumb_func_start ov103_021EDE7C
ov103_021EDE7C: ; 0x021EDE7C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bne _021EDE94
	mov r1, #3
	bl ov103_021EE8A8
	b _021EDE9A
_021EDE94:
	mov r1, #4
	bl ov103_021EE8A8
_021EDE9A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x18
	bl ov103_021EDA70
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov103_021EDE7C

	thumb_func_start ov103_021EDEA8
ov103_021EDEA8: ; 0x021EDEA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r5, #0xc]
	bl ov103_021EE13C
	ldr r0, [r5, #0xc]
	bl ov103_021EDF88
	ldr r0, [r5, #0xc]
	bl ov103_021EE2E0
	ldr r0, [r5, #0xc]
	bl ov103_021EE160
	mov r7, #0
	ldr r6, _021EDF4C ; =ov103_021EED58
	add r4, r7, #0
_021EDEDA:
	ldr r0, [r5, #0xc]
	add r1, r6, #0
	bl ov103_021EE048
	ldr r1, [r5, #0xc]
	add r7, r7, #1
	add r2, r1, r4
	mov r1, #0x96
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r6, #0x34
	add r4, r4, #4
	cmp r7, #7
	blo _021EDEDA
	ldr r0, [r5, #0xc]
	add r1, #0x88
	ldrh r1, [r0, r1]
	cmp r1, #0xa
	bhi _021EDF14
	mov r1, #0
	add r2, r1, #0
	bl ov103_021EE0CC
	ldr r0, [r5, #0xc]
	mov r1, #1
	mov r2, #0
	bl ov103_021EE0CC
	b _021EDF2C
_021EDF14:
	ldrh r1, [r5, #0x1c]
	cmp r1, #0
	bne _021EDF24
	mov r1, #0
	add r2, r1, #0
	bl ov103_021EE0CC
	b _021EDF2C
_021EDF24:
	mov r1, #1
	mov r2, #0
	bl ov103_021EE0CC
_021EDF2C:
	ldr r0, [r5, #0xc]
	mov r1, #4
	mov r2, #0
	bl ov103_021EE0CC
	ldr r0, [r5, #0xc]
	mov r1, #5
	mov r2, #0
	bl ov103_021EE0CC
	ldr r0, [r5, #0xc]
	mov r1, #6
	mov r2, #0
	bl ov103_021EE0CC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EDF4C: .word ov103_021EED58
	thumb_func_end ov103_021EDEA8

