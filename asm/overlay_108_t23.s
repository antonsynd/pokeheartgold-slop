	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E6A58
	.extern _021EA720
	.extern ov108_021E79A8
	.extern ov108_021EA748
	.extern ov108_021EA74A

	.text

	.text
	thumb_func_start ov108_021E6A58
ov108_021E6A58: ; 0x021E6A58
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _021E6AE8 ; =_021EA720
	add r2, sp, #0xc
	ldrh r3, [r0, #0xc]
	ldr r5, _021E6AEC ; =ov108_021EA748
	add r1, sp, #0xc
	strh r3, [r2]
	ldrh r3, [r0, #0xe]
	strh r3, [r2, #2]
	ldrh r3, [r0, #0x10]
	strh r3, [r2, #4]
	ldrh r3, [r0, #0x12]
	strh r3, [r2, #6]
	ldrh r3, [r0, #0x14]
	ldrh r0, [r0, #0x16]
	strh r3, [r2, #8]
	strh r0, [r2, #0xa]
	ldr r0, _021E6AF0 ; =0x000004B4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r3, [r4, r0]
	add r0, r0, #4
	str r3, [sp, #0x1c]
	mov r3, #3
	strb r3, [r2, #0x14]
	ldr r2, _021E6AF4 ; =0x000184DF
	ldrb r2, [r4, r2]
	lsl r3, r2, #2
	ldr r2, _021E6AF8 ; =ov108_021EA74A
	ldrh r2, [r2, r3]
	ldrh r3, [r5, r3]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r2, [r4, #0x10]
	lsl r3, r3, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r4, r0]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl TouchscreenListMenu_Create
	ldr r1, _021E6AFC ; =0x000004BC
	ldr r2, _021E6AF4 ; =0x000184DF
	str r0, [r4, r1]
	mov r1, #1
	ldrb r2, [r4, r2]
	add r0, r4, #0
	add r3, r1, #0
	bl ov108_021E79A8
	ldr r2, _021E6AF4 ; =0x000184DF
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #4
	mov r3, #1
	bl ov108_021E79A8
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
_021E6AE8: .word _021EA720
_021E6AEC: .word ov108_021EA748
_021E6AF0: .word 0x000004B4
_021E6AF4: .word 0x000184DF
_021E6AF8: .word ov108_021EA74A
_021E6AFC: .word 0x000004BC
	thumb_func_end ov108_021E6A58

