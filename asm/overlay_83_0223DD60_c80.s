	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0224153C
	.public ov83_022415F4
	.public ov83_022416A0
	.extern _02247D0C
	.extern ov83_0223FD14
	.extern ov83_02240C60
	.extern ov83_02240C8C
	.extern ov83_02240CFC
	.extern ov83_02240F7C
	.extern ov83_0224152C
	.extern ov83_02241E18
	.extern ov83_022421E0

    .text

	.text
	thumb_func_start ov83_0224153C
ov83_0224153C: ; 0x0224153C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r5, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov83_02240F7C
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #0
	bne _02241580
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	add r0, r5, #0
	add r2, r2, #4
	add r3, r3, #1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r1, r4, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov83_02240C8C
	b _022415E8
_02241580:
	bl sub_0203769C
	cmp r0, #0
	add r2, sp, #4
	bne _022415BA
	ldrh r0, [r2, #4]
	add r1, r4, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r2, #6]
	add r0, r5, #0
	bl ov83_02240C8C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov83_02240CFC
	b _022415E8
_022415BA:
	ldrh r0, [r2, #4]
	add r1, r4, #0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	mov r0, #0
	str r0, [sp]
	ldrh r2, [r2, #6]
	add r0, r5, #0
	bl ov83_02240CFC
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r3, #1
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl ov83_02240C8C
_022415E8:
	add r0, r4, #0
	bl ScheduleWindowCopyToVram
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov83_0224153C

	thumb_func_start ov83_022415F4
ov83_022415F4: ; 0x022415F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r2, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _0224168C ; =0x000007A4
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	ldr r0, _02241690 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	mov r2, #0
	bl ov83_0224777C
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02240C60
	ldr r0, _02241694 ; =0x00000508
	ldr r0, [r5, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	bl ov83_02247944
	sub r1, r4, #1
	lsl r2, r1, #1
	ldr r1, _02241698 ; =_02247D0C
	add r0, r5, #0
	ldrh r1, [r1, r2]
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r5, #0xa]
	cmp r4, #1
	beq _0224165A
	cmp r4, #2
	beq _02241664
	cmp r4, #3
	beq _0224166E
	b _02241680
_0224165A:
	add r0, r6, #0
	mov r1, #0x18
	bl ov83_0224152C
	b _02241684
_02241664:
	add r0, r6, #0
	mov r1, #0x29
	bl ov83_0224152C
	b _02241684
_0224166E:
	add r0, r6, #0
	mov r1, #0x18
	bl ov83_0224152C
	add r0, r6, #0
	mov r1, #0x29
	bl ov83_0224152C
	b _02241684
_02241680:
	bl GF_AssertFail
_02241684:
	ldr r0, _0224169C ; =0x000005EC
	bl PlaySE
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0224168C: .word 0x000007A4
_02241690: .word 0x0000050C
_02241694: .word 0x00000508
_02241698: .word _02247D0C
_0224169C: .word 0x000005EC
	thumb_func_end ov83_022415F4

	thumb_func_start ov83_022416A0
ov83_022416A0: ; 0x022416A0
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r1, #0
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241724 ; =0x000007A4
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	mov r1, #6
	add r2, sp, #0x18
	add r6, r0, #0
	bl SetMonData
	ldrb r0, [r5, #0xd]
	cmp r0, r4
	bne _022416D6
	add r0, r5, #0
	bl ov83_02241E18
	add r0, r5, #0
	mov r1, #0
	bl ov83_022421E0
_022416D6:
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov83_02247768
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02241728 ; =0x0000074C
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov83_0224755C
	add r0, r6, #0
	bl Mon_GetBoxMon
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov83_02240C60
	add r2, sp, #0x10
	ldrh r2, [r2, #8]
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl BufferItemName
	add r0, r5, #0
	mov r1, #0x3b
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r5, #0xa]
	ldr r0, _0224172C ; =0x00000623
	bl PlaySE
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02241724: .word 0x000007A4
_02241728: .word 0x0000074C
_0224172C: .word 0x00000623
	thumb_func_end ov83_022416A0

