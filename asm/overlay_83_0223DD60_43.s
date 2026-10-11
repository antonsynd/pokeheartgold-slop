	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0223FD4C
	.public ov83_0223FF44
	.public ov83_02240238
	.public ov83_02240DB0
	.public ov83_02240FAC
	.public ov83_022411B0
	.public ov83_022411DC
	.public ov83_02241208
	.public ov83_02241254
	.public ov83_02241E18
	.public ov83_022421E0

    .text

	thumb_func_start ov83_02240FAC
ov83_02240FAC: ; 0x02240FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r6, r2, #0
	bl ov83_02247768
	add r5, r0, #0
	ldr r0, _0224119C ; =0x000007A4
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	str r0, [sp, #0x14]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl CalculateHpBarColor
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_022411B0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsl r1, r7, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl CalculateHpBarColor
	add r1, r0, #0
	add r0, r4, #0
	bl ov83_022411DC
	add r7, r0, #0
	cmp r6, #0xa
	bls _02241018
	b _02241196
_02241018:
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02241024: ; jump table
	.short _02241196 - _02241024 - 2 ; case 0
	.short _02241048 - _02241024 - 2 ; case 1
	.short _02241048 - _02241024 - 2 ; case 2
	.short _02241048 - _02241024 - 2 ; case 3
	.short _0224103A - _02241024 - 2 ; case 4
	.short _02241196 - _02241024 - 2 ; case 5
	.short _0224110C - _02241024 - 2 ; case 6
	.short _0224110C - _02241024 - 2 ; case 7
	.short _0224103A - _02241024 - 2 ; case 8
	.short _0224117A - _02241024 - 2 ; case 9
	.short _02241188 - _02241024 - 2 ; case 10
_0224103A:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241048:
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	bne _0224108E
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02241064
	mov r1, #0x40
	b _02241066
_02241064:
	mov r1, #0x20
_02241066:
	mov r0, #8
	str r0, [sp]
	lsl r0, r5, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x3e
	str r0, [sp, #8]
	ldr r0, _022411A0 ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _022411A4 ; =0x0000075C
	str r0, [r4, r1]
_0224108E:
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022410AC
	bl ov83_02247624
	cmp r0, #0
	bne _022410AC
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _022411A4 ; =0x0000075C
	mov r1, #0
	str r1, [r4, r0]
_022410AC:
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02241196
	ldr r0, [sp, #0x14]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r1, r4, #0
	add r3, r0, #0
	add r0, r4, #0
	add r1, #0x80
	add r2, r5, #0
	bl ov83_02240238
	ldrb r0, [r4, #0xd]
	cmp r0, r5
	bne _022410E0
	add r0, r4, #0
	bl ov83_02241E18
	add r0, r4, #0
	mov r1, #0
	bl ov83_022421E0
_022410E0:
	lsl r5, r5, #2
	ldr r0, _022411A8 ; =0x00000768
	add r1, r4, r5
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl ov83_022475D4
	ldr r0, _022411AC ; =0x0000073C
	add r1, r4, r5
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov83_02247600
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224110C:
	ldrb r1, [r4, #0xe]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	bne _02241152
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02241128
	mov r1, #0x40
	b _0224112A
_02241128:
	mov r1, #0x20
_0224112A:
	mov r0, #0x10
	str r0, [sp]
	lsl r0, r5, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x3e
	str r0, [sp, #8]
	ldr r0, _022411A0 ; =0x00000518
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov83_02247454
	ldr r1, _022411A4 ; =0x0000075C
	str r0, [r4, r1]
_02241152:
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	bl ov83_02247624
	cmp r0, #0
	bne _02241196
	ldr r0, _022411A4 ; =0x0000075C
	ldr r0, [r4, r0]
	bl ov83_0224753C
	ldr r0, _022411A4 ; =0x0000075C
	mov r1, #0
	str r1, [r4, r0]
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224117A:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241188:
	ldrb r1, [r4, #0xe]
	mov r0, #4
	add sp, #0x20
	bic r1, r0
	strb r1, [r4, #0xe]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02241196:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224119C: .word 0x000007A4
_022411A0: .word 0x00000518
_022411A4: .word 0x0000075C
_022411A8: .word 0x00000768
_022411AC: .word 0x0000073C
	thumb_func_end ov83_02240FAC

	thumb_func_start ov83_022411B0
ov83_022411B0: ; 0x022411B0
	cmp r1, #4
	bhi _022411D8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022411C0: ; jump table
	.short _022411D8 - _022411C0 - 2 ; case 0
	.short _022411D6 - _022411C0 - 2 ; case 1
	.short _022411D2 - _022411C0 - 2 ; case 2
	.short _022411CE - _022411C0 - 2 ; case 3
	.short _022411CA - _022411C0 - 2 ; case 4
_022411CA:
	mov r0, #1
	bx lr
_022411CE:
	mov r0, #2
	bx lr
_022411D2:
	mov r0, #3
	bx lr
_022411D6:
	mov r0, #4
_022411D8:
	bx lr
	.balign 4, 0
	thumb_func_end ov83_022411B0

	thumb_func_start ov83_022411DC
ov83_022411DC: ; 0x022411DC
	cmp r1, #4
	bhi _02241204
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022411EC: ; jump table
	.short _02241204 - _022411EC - 2 ; case 0
	.short _02241202 - _022411EC - 2 ; case 1
	.short _022411FE - _022411EC - 2 ; case 2
	.short _022411FA - _022411EC - 2 ; case 3
	.short _022411F6 - _022411EC - 2 ; case 4
_022411F6:
	mov r0, #0xf
	bx lr
_022411FA:
	mov r0, #0xf
	bx lr
_022411FE:
	mov r0, #0xe
	bx lr
_02241202:
	mov r0, #0xd
_02241204:
	bx lr
	.balign 4, 0
	thumb_func_end ov83_022411DC

	thumb_func_start ov83_02241208
ov83_02241208: ; 0x02241208
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _02241222
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	b _02241228
_02241222:
	cmp r1, r0
	blt _02241228
	mov r1, #0
_02241228:
	strb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_02240DB0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241250 ; =0x000007A4
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov83_0223FD4C
	pop {r4, pc}
	.balign 4, 0
_02241250: .word 0x000007A4
	thumb_func_end ov83_02241208

	thumb_func_start ov83_02241254
ov83_02241254: ; 0x02241254
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _0224126E
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	b _02241274
_0224126E:
	cmp r1, r0
	blt _02241274
	mov r1, #0
_02241274:
	strb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_02240DB0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _0224129C ; =0x000007A4
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov83_0223FF44
	pop {r4, pc}
	.balign 4, 0
_0224129C: .word 0x000007A4
	thumb_func_end ov83_02241254

