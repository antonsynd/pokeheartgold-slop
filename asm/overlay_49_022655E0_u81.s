	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02267E18
	.extern ov49_02267EF8
	.extern ov49_02267F40

    .text

	.text
	thumb_func_start ov49_02267E18
ov49_02267E18: ; 0x02267E18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xed
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	str r1, [sp]
	cmp r0, #0
	ble _02267E86
	ldr r4, [sp, #8]
	add r6, sp, #0x10
_02267E34:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, r4
	ldrh r0, [r0, r4]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldr r0, [sp]
	cmp r1, r0
	bne _02267E72
	ldrb r7, [r6, #2]
	cmp r7, #4
	blo _02267E56
	bl GF_AssertFail
_02267E56:
	ldrb r0, [r6, #3]
	str r0, [sp, #4]
	cmp r0, #4
	bls _02267E62
	bl GF_AssertFail
_02267E62:
	mov r0, #0xec
	mul r0, r7
	ldr r1, [sp, #4]
	add r0, r5, r0
	bl ov49_02267EF8
	mov r0, #1
	str r0, [sp, #8]
_02267E72:
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xed
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _02267E34
_02267E86:
	mov r7, #1
	mov r6, #0
	add r4, r5, #0
_02267E8C:
	add r0, r4, #0
	bl ov49_02267F40
	cmp r0, #0
	bne _02267E98
	mov r7, #0
_02267E98:
	add r6, r6, #1
	add r4, #0xec
	cmp r6, #4
	blt _02267E8C
	ldr r0, _02267EB8 ; =0x000003B6
	ldrh r1, [r5, r0]
	ldr r0, [sp]
	cmp r1, r0
	bhi _02267EB2
	cmp r7, #1
	bne _02267EB2
	mov r0, #2
	str r0, [sp, #8]
_02267EB2:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02267EB8: .word 0x000003B6
	thumb_func_end ov49_02267E18

