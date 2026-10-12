	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259E38
	.extern ov90_02259234
	.extern ov90_022592C4

	.text

	.text
	thumb_func_start ov90_02259E38
ov90_02259E38: ; 0x02259E38
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r1, r2, #0
	add r6, r0, #0
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	add r4, r3, #0
	bl ov90_02259234
	ldr r0, [sp, #0x1c]
	add r1, sp, #8
	cmp r0, #5
	bne _02259E70
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	lsl r3, r4, #0x18
	mov r1, #0xe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov90_022592C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02259E70:
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	lsl r3, r4, #0x18
	mov r1, #0xd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov90_022592C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov90_02259E38

