#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E6778
	.public ov73_021E67A8
	.public ov73_021E6830
	.extern ov73_021E66F0
	.extern ov73_021E71E4

	.text

	.text
	thumb_func_start ov73_021E6778
ov73_021E6778: ; 0x021E6778
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203769C
	cmp r0, #0
	bne _021E6794
	mov r0, #0
	str r0, [sp]
	mov r0, #0x75
	add r1, sp, #0
	mov r2, #1
	bl sub_02037030
_021E6794:
	mov r0, #0xc6
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov73_021E66F0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov73_021E6778

	thumb_func_start ov73_021E67A8
ov73_021E67A8: ; 0x021E67A8
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r3, #0xc5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x1f
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r1, #0x19
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #6
	strb r1, [r0, #0x11]
	ldrb r1, [r0, #0x12]
	mov r2, #0xf
	lsl r3, r3, #2
	bic r1, r2
	ldr r2, [r4, r3]
	sub r3, #0x2c
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	mov r2, #0xf
	and r2, r5
	orr r1, r2
	strb r1, [r0, #0x12]
	ldrb r2, [r0, #0x12]
	mov r1, #0xf0
	bic r2, r1
	strb r2, [r0, #0x12]
	ldr r0, [r4, r3]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	ldr r0, _021E682C ; =0x00004A15
	mov r1, #1
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _021E6814
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl ov73_021E71E4
_021E6814:
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov73_021E71E4
	ldr r0, [r4]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021E682C: .word 0x00004A15
	thumb_func_end ov73_021E67A8

	thumb_func_start ov73_021E6830
ov73_021E6830: ; 0x021E6830
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E6888 ; =0x00004A15
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _021E6886
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl YesNoPrompt_IsInTouchMode
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x2c
	ldr r0, [r4, r1]
	bl YesNoPrompt_Reset
	ldr r0, _021E6888 ; =0x00004A15
	mov r1, #0
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _021E686C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov73_021E71E4
_021E686C:
	mov r1, #0
	ldr r0, _021E688C ; =0x00004A38
	mvn r1, r1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov73_021E71E4
	ldr r0, [r4]
	mov r1, #1
	bl ScheduleBgTilemapBufferTransfer
_021E6886:
	pop {r4, pc}
	.balign 4, 0
_021E6888: .word 0x00004A15
_021E688C: .word 0x00004A38
	thumb_func_end ov73_021E6830

