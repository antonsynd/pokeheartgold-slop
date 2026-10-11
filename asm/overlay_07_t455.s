	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222A838
	.extern ov07_0221C410
	.extern ov07_0221C4E8
	.extern ov07_0221EB98
	.extern ov07_02222AC4
	.extern ov07_0222A710
	.extern ov07_02231FE4
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_0222A838
ov07_0222A838: ; 0x0222A838
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r1, #0x54
	add r5, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #4
	bl ov07_02231FE4
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov07_0221C4E8
	mov r1, #2
	str r0, [r4, #0x20]
	bl ManagedSprite_SetOamMode
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _0222A8CC ; =0xFFFF1FFF
	and r2, r1
	lsr r1, r0, #0xb
	orr r1, r2
	str r1, [r0]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1b
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0222A8D0 ; =0xFFFFC0FF
	and r2, r1
	mov r1, #0x17
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0]
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov07_0221C4E8
	mov r1, #1
	str r0, [r4, #0x24]
	bl ManagedSprite_SetOamMode
	mov r1, #0x10
	str r1, [sp]
	add r0, r4, #0
	mov r2, #2
	str r1, [sp, #4]
	add r0, #0x2c
	add r3, r2, #0
	bl ov07_02222AC4
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov07_0221EB98
	mov r0, #2
	mov r1, #1
	bl ToggleBgLayer
	ldr r0, [r4, #8]
	ldr r1, _0222A8D4 ; =ov07_0222A710
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0222A8CC: .word 0xFFFF1FFF
_0222A8D0: .word 0xFFFFC0FF
_0222A8D4: .word ov07_0222A710
	thumb_func_end ov07_0222A838

