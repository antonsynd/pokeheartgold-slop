	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02241E18

    .text

	.text
	thumb_func_start ov83_02241E18
ov83_02241E18: ; 0x02241E18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241FA8 ; =0x000007A4
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	bl AcquireMonLock
	str r0, [sp, #4]
	ldr r0, _02241FAC ; =0x00000804
	str r6, [r5, r0]
	add r0, r6, #0
	bl Mon_GetBoxMon
	ldr r1, _02241FB0 ; =0x00000808
	mov r2, #0
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #5
	bl GetMonData
	ldr r1, _02241FB4 ; =0x0000080C
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa1
	bl GetMonData
	ldr r1, _02241FB8 ; =0x0000080F
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa
	bl GetMonData
	mov r1, #0x81
	lsl r1, r1, #4
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GetMonNature
	ldr r1, _02241FBC ; =0x00000811
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r6, #0
	mov r1, #6
	bl GetMonData
	ldr r1, _02241FC0 ; =0x00000812
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa3
	bl GetMonData
	ldr r1, _02241FC4 ; =0x00000818
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa4
	bl GetMonData
	ldr r1, _02241FC8 ; =0x0000081A
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa5
	bl GetMonData
	ldr r1, _02241FCC ; =0x0000081C
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	ldr r1, _02241FD0 ; =0x0000081E
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa6
	bl GetMonData
	mov r1, #0x82
	lsl r1, r1, #4
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl GetMonData
	ldr r1, _02241FD4 ; =0x00000822
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa7
	bl GetMonData
	ldr r1, _02241FD8 ; =0x00000824
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0x70
	bl GetMonData
	ldr r1, _02241FDC ; =0x00000826
	strb r0, [r5, r1]
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl GetMonData
	ldr r1, _02241FE0 ; =0x00000814
	mov r2, #0
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xb0
	bl GetMonData
	cmp r0, #1
	ldr r1, _02241FE4 ; =0x0000080E
	bne _02241F24
	ldrb r2, [r5, r1]
	mov r0, #0x80
	bic r2, r0
	strb r2, [r5, r1]
	b _02241F2C
_02241F24:
	ldrb r2, [r5, r1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r5, r1]
_02241F2C:
	add r0, r6, #0
	bl GetMonGender
	ldr r3, _02241FE4 ; =0x0000080E
	mov r2, #0x7f
	ldrb r1, [r5, r3]
	mov r4, #0
	bic r1, r2
	mov r2, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r5, r3]
_02241F44:
	lsl r0, r4, #1
	add r0, r5, r0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	ldr r2, [sp]
	ldr r1, _02241FE8 ; =0x00000828
	add r7, r5, r4
	strh r0, [r2, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	mov r2, #0
	bl GetMonData
	mov r1, #0x83
	lsl r1, r1, #4
	strb r0, [r7, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r1, r1, #0x18
	ldr r2, [sp]
	ldr r0, _02241FE8 ; =0x00000828
	lsr r1, r1, #0x18
	ldrh r0, [r2, r0]
	bl GetMoveMaxPP
	ldr r1, _02241FEC ; =0x00000834
	strb r0, [r7, r1]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _02241F44
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ReleaseMonLock
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02241FA8: .word 0x000007A4
_02241FAC: .word 0x00000804
_02241FB0: .word 0x00000808
_02241FB4: .word 0x0000080C
_02241FB8: .word 0x0000080F
_02241FBC: .word 0x00000811
_02241FC0: .word 0x00000812
_02241FC4: .word 0x00000818
_02241FC8: .word 0x0000081A
_02241FCC: .word 0x0000081C
_02241FD0: .word 0x0000081E
_02241FD4: .word 0x00000822
_02241FD8: .word 0x00000824
_02241FDC: .word 0x00000826
_02241FE0: .word 0x00000814
_02241FE4: .word 0x0000080E
_02241FE8: .word 0x00000828
_02241FEC: .word 0x00000834
	thumb_func_end ov83_02241E18

