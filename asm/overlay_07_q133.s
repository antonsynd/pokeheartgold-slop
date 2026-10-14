	.include "macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221EEC0
	.extern ov07_0221C4A8
	.extern ov07_0221DF1C
	.extern ov07_0221ED14

	.text

	.text
	thumb_func_start ov07_0221EEC0
ov07_0221EEC0: ; 0x0221EEC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov07_0221DF1C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov07_0221C4A8
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x18]
	ldr r2, _0221EF08 ; =0x0000044C
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1]
	add r1, r1, #4
	str r1, [r5, #0x18]
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	add r1, r1, #3
	str r1, [r4, #0x14]
	ldr r1, _0221EF0C ; =0xFFFF0000
	and r0, r1
	lsr r0, r0, #0x10
	str r0, [r4, #0x18]
	ldr r0, _0221EF10 ; =ov07_0221ED14
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	nop
_0221EF08: .word 0x0000044C
_0221EF0C: .word 0xFFFF0000
_0221EF10: .word ov07_0221ED14
	thumb_func_end ov07_0221EEC0

