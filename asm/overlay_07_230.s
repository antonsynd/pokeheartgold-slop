	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02221E24
	.extern ov07_02236414

	.text

	.text
	thumb_func_start ov07_02221E24
ov07_02221E24: ; 0x02221E24
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _02221E5C ; =ov07_02236414
	add r0, sp, #0
	ldrh r2, [r1]
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldr r0, [r4, #4]
	bl sub_02015524
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02015528
	add r0, sp, #0
	add r1, r5, #0
	bl Camera_SetAnglePos
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02221E5C: .word ov07_02236414
	thumb_func_end ov07_02221E24

