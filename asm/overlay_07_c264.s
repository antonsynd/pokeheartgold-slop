	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02221DC4
	.extern ov07_0221BFC0
	.extern ov07_02236414

	.text

	.text
	thumb_func_start ov07_02221DC4
ov07_02221DC4: ; 0x02221DC4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r1, _02221E20 ; =ov07_02236414
	add r0, sp, #0
	ldrh r2, [r1, #0x10]
	strh r2, [r0, #8]
	ldrh r2, [r1, #0x12]
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #0x14]
	strh r2, [r0, #0xc]
	ldrh r2, [r1, #0x16]
	strh r2, [r0, #0xe]
	ldrh r2, [r1, #0x28]
	strh r2, [r0]
	ldrh r2, [r1, #0x2a]
	strh r2, [r0, #2]
	ldrh r2, [r1, #0x2c]
	strh r2, [r0, #4]
	ldrh r1, [r1, #0x2e]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02015524
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02015528
	ldr r0, [r4]
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02221E12
	add r0, sp, #8
	add r1, r5, #0
	bl Camera_SetAnglePos
	b _02221E1A
_02221E12:
	add r0, sp, #0
	add r1, r5, #0
	bl Camera_SetAnglePos
_02221E1A:
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02221E20: .word ov07_02236414
	thumb_func_end ov07_02221DC4

