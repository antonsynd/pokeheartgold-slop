#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F1584
	.public ov112_021F15CC
	.public ov112_021F15E4
	.public ov112_021F1624
	.extern ov112_021F13BC
	.extern ov112_021F13CC
	.extern ov112_021F1488
	.extern ov112_021F1504
	.extern ov112_021F1548
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F1584
ov112_021F1584: ; 0x021F1584
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r0, [r1]
	add r7, r2, #0
	mov r4, #1
	mov ip, r3
	cmp r0, #0
	beq _021F15AC
	ldr r0, _021F15C8 ; =0x0000FFFF
	mov r3, #0
	add r5, r1, #0
_021F159A:
	ldrh r2, [r5]
	cmp r2, r0
	bne _021F15A4
	mov r4, #0
	b _021F15AC
_021F15A4:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #0xb
	blt _021F159A
_021F15AC:
	cmp r4, #0
	beq _021F15BC
	add r0, r6, #0
	add r1, r7, #0
	mov r2, ip
	bl ov112_021F1548
	pop {r3, r4, r5, r6, r7, pc}
_021F15BC:
	add r0, r6, #0
	add r2, r7, #0
	mov r3, #0xb
	bl ov112_021F1488
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F15C8: .word 0x0000FFFF
	thumb_func_end ov112_021F1584

	thumb_func_start ov112_021F15CC
ov112_021F15CC: ; 0x021F15CC
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x58]
	bl BufferIntegerAsString
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov112_021F15CC

	thumb_func_start ov112_021F15E4
ov112_021F15E4: ; 0x021F15E4
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r4, _021F1620 ; =0x0000013D
	add r1, r0, #0
	ldrb r0, [r1, r4]
	mov r3, #0
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, #0xc0
	ldr r2, [r0]
	add r0, sp, #0xc
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	add r0, sp, #0
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	add r0, r4, #0
	sub r0, #0x1d
	sub r4, #0xd
	add r0, r1, r0
	ldr r2, [r2]
	add r1, r1, r4
	bl RTC_ConvertSecondToDateTime
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021F1620: .word 0x0000013D
	thumb_func_end ov112_021F15E4

	thumb_func_start ov112_021F1624
ov112_021F1624: ; 0x021F1624
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021F1788 ; =0x0000013D
	str r1, [sp, #4]
	ldrb r1, [r5, r0]
	str r2, [sp, #8]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r6, [r1]
	add r1, r0, #0
	sub r1, #0x19
	ldr r1, [r5, r1]
	str r1, [sp, #0x10]
	add r1, r0, #0
	sub r1, #0x15
	sub r0, #0xd
	ldr r1, [r5, r1]
	ldr r4, [r5, r0]
	str r1, [sp, #0xc]
	cmp r4, #0xc
	bge _021F165C
	mov r7, #0x57
	cmp r4, #0
	bne _021F1664
	mov r4, #0xc
	b _021F1664
_021F165C:
	mov r7, #0x58
	sub r4, #0xc
	bne _021F1664
	mov r4, #0xc
_021F1664:
	ldr r1, [r5, #8]
	add r0, r5, #0
	mov r2, #0
	mov r3, #9
	bl ov112_021F1488
	add r1, r6, #0
	ldrh r3, [r6, #0xa]
	add r0, r5, #0
	add r1, #0x20
	mov r2, #1
	bl ov112_021F1584
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x10
	mov r2, #2
	mov r3, #9
	bl ov112_021F1488
	add r1, r6, #0
	ldrh r3, [r6, #0xc]
	add r0, r5, #0
	add r1, #0x36
	mov r2, #3
	bl ov112_021F1584
	ldrh r1, [r6, #0xe]
	add r0, r5, #0
	bl ov112_021F1504
	add r1, r6, #0
	ldrh r3, [r6, #0xc]
	add r0, r5, #0
	add r1, #0x36
	mov r2, #5
	bl ov112_021F1584
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	mov r3, #2
	bl ov112_021F15CC
	mov r0, #0
	add r2, r6, #0
	str r0, [sp]
	add r2, #0x78
	ldrh r2, [r2]
	add r0, r5, #0
	mov r1, #7
	mov r3, #5
	bl ov112_021F15CC
	add r6, #0x4c
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #8
	mov r3, #0x15
	bl ov112_021F1488
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	mov r1, #9
	mov r3, #2
	bl ov112_021F15CC
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0xa
	mov r3, #2
	bl ov112_021F15CC
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	add r0, r5, #0
	bl ov112_021F13CC
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	mov r1, #9
	mov r3, #2
	bl ov112_021F15CC
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0xa
	mov r3, #2
	bl ov112_021F15CC
	mov r1, #0
	add r0, r5, #0
	mov r2, #0x56
	add r3, r1, #0
	bl ov112_021F13BC
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #0
	mov r3, #2
	bl ov112_021F15CC
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x5c]
	ldr r3, [r5, #4]
	add r2, r7, #0
	bl ReadMsgData_ExpandPlaceholders
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x28
	bl GetWindowWidth
	add r3, r0, #0
	mov r0, #1
	add r1, r4, #0
	mov r2, #0
	lsl r3, r3, #3
	bl FontID_String_GetCenterAlignmentX
	add r6, r0, #0
	add r0, r4, #0
	bl String_Delete
	lsl r3, r6, #0x18
	add r0, r5, #0
	mov r1, #1
	add r2, r7, #0
	lsr r3, r3, #0x18
	bl ov112_021F13BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021F1788: .word 0x0000013D
	thumb_func_end ov112_021F1624

