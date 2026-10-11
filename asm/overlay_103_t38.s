	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED7E4
	.extern ov103_021ECFFC
	.extern ov103_021EDA40
	.extern ov103_021EDA70
	.extern ov103_021EDB60
	.extern ov103_021EDBB0
	.extern ov103_021EDC68
	.extern ov103_021EE0CC
	.extern ov103_021EE374
	.extern ov103_021EE60C
	.extern ov103_021EE888
	.extern ov103_021EE8A8

	.text

	.text
	thumb_func_start ov103_021ED7E4
ov103_021ED7E4: ; 0x021ED7E4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x91
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl TouchscreenListMenu_HandleInput
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _021ED816
	bhs _021ED89E
	cmp r0, #3
	bhi _021ED8CA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ED80E: ; jump table
	.short _021ED81E - _021ED80E - 2 ; case 0
	.short _021ED84A - _021ED80E - 2 ; case 1
	.short _021ED864 - _021ED80E - 2 ; case 2
	.short _021ED89E - _021ED80E - 2 ; case 3
_021ED816:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	b _021ED8CA
_021ED81E:
	add r0, r4, #0
	bl ov103_021ECFFC
	add r0, r4, #0
	bl ov103_021EE888
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #1
	bl ov103_021EE0CC
	ldr r0, [r4, #0xc]
	bl ov103_021EE60C
	ldr r0, [r4, #0xc]
	bl ov103_021EE374
	add r0, r4, #0
	bl ov103_021EDBB0
	mov r0, #0xf
	pop {r4, pc}
_021ED84A:
	add r0, r4, #0
	bl ov103_021ECFFC
	add r0, r4, #0
	mov r1, #0
	bl ov103_021EE8A8
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x11
	bl ov103_021EDA70
	pop {r4, pc}
_021ED864:
	add r0, r4, #0
	bl ov103_021ECFFC
	ldrb r0, [r4, #0x1f]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	add r1, r1, r0
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl Mail_GetType
	bl MailToItemId
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #0
	bl ov103_021EDC68
	mov r0, #0
	str r0, [r4, #0x18]
	mov r0, #6
	str r0, [r4, #0x28]
	add r0, r4, #0
	mov r1, #1
	bl ov103_021EDA40
	pop {r4, pc}
_021ED89E:
	add r0, r4, #0
	bl ov103_021ECFFC
	add r0, r4, #0
	bl ov103_021EE888
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	ldr r0, [r0, #4]
	bl sub_0201980C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov103_021EDB60
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #1
	bl ov103_021EE0CC
	mov r0, #9
	pop {r4, pc}
_021ED8CA:
	mov r0, #0xe
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov103_021ED7E4

