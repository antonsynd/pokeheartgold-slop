	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02238C30
	.public ov57_02238D80
	.extern ov57_0223A0A8
	.extern ov57_0223BD7C
	.extern ov57_0223BECC

	.text

	.text
	thumb_func_start ov57_02238C30
ov57_02238C30: ; 0x02238C30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r3, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x58]
	add r0, r7, #0
	bl ov57_0223A0A8
	cmp r0, #3
	bhi _02238CA2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02238C50: ; jump table
	.short _02238C58 - _02238C50 - 2 ; case 0
	.short _02238C68 - _02238C50 - 2 ; case 1
	.short _02238C7C - _02238C50 - 2 ; case 2
	.short _02238C90 - _02238C50 - 2 ; case 3
_02238C58:
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	mov r0, #1
	mov r4, #6
	str r0, [sp, #0x20]
	b _02238CA2
_02238C68:
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #4
	str r0, [sp, #0x20]
	mov r0, #1
	mov r4, #8
	str r0, [sp, #0x24]
	b _02238CA2
_02238C7C:
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #4
	str r0, [sp, #0x20]
	mov r0, #1
	mov r4, #8
	str r0, [sp, #0x24]
	b _02238CA2
_02238C90:
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #4
	str r0, [sp, #0x20]
	mov r0, #1
	mov r4, #8
	str r0, [sp, #0x24]
_02238CA2:
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #1
	mov r1, #0x34
	str r0, [sp, #0x14]
	bl ListMenuItems_New
	mov r1, #0x6f
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xb
	mov r3, #0x34
	bl NewMsgDataFromNarc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _02238D04
	add r5, sp, #0x18
_02238CCE:
	ldr r1, [r5]
	ldr r0, [sp, #0x10]
	lsl r2, r1, #3
	ldr r1, _02238D74 ; =ov57_0223BECC
	ldr r1, [r1, r2]
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r2, [r5]
	mov r0, #0x6f
	lsl r3, r2, #3
	ldr r2, _02238D74 ; =ov57_0223BECC
	lsl r0, r0, #2
	add r2, r2, r3
	ldr r0, [r7, r0]
	ldr r2, [r2, #4]
	add r1, r4, #0
	bl ListMenuItems_AddItem
	add r0, r4, #0
	bl String_Delete
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02238CCE
_02238D04:
	ldr r0, [sp, #0x10]
	bl DestroyMsgData
	add r0, sp, #0x28
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r2, _02238D78 ; =ov57_0223BD7C
	add r0, sp, #0x18
	ldrh r3, [r2]
	add r1, sp, #0x28
	strh r3, [r0, #0x10]
	ldrh r3, [r2, #2]
	strh r3, [r0, #0x12]
	ldrh r3, [r2, #4]
	strh r3, [r0, #0x14]
	ldrh r3, [r2, #6]
	strh r3, [r0, #0x16]
	ldrh r3, [r2, #8]
	ldrh r2, [r2, #0xa]
	strh r3, [r0, #0x18]
	strh r2, [r0, #0x1a]
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r2, [r7, r0]
	add r0, #0x8c
	str r2, [sp, #0x34]
	ldr r2, [sp, #0xc]
	str r2, [sp, #0x38]
	ldr r2, [sp, #0x14]
	lsl r3, r2, #1
	strb r2, [r1, #0x14]
	add r3, r2, r3
	mov r2, #0x17
	sub r2, r2, r3
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #8
	str r2, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	ldr r2, _02238D7C ; =0x0000040C
	ldr r0, [r7, r0]
	ldr r2, [r7, r2]
	mov r3, #0x16
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl TouchscreenListMenu_Create
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r7, r1]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238D74: .word ov57_0223BECC
_02238D78: .word ov57_0223BD7C
_02238D7C: .word 0x0000040C
	thumb_func_end ov57_02238C30

	thumb_func_start ov57_02238D80
ov57_02238D80: ; 0x02238D80
	push {r4, lr}
	mov r1, #0x93
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r0, #0x27
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x19
	ldr r0, _02238DA8 ; =0x0000040C
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	bl TouchscreenListMenu_Destroy
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ListMenuItems_Delete
	pop {r4, pc}
	.balign 4, 0
_02238DA8: .word 0x0000040C
	thumb_func_end ov57_02238D80

