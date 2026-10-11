	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022414E0
	.public ov81_02242D88
	.public ov81_02242E08
	.public ov81_022431E0
	.public ov81_02243270

	.text

	thumb_func_start ov81_022414E0
ov81_022414E0: ; 0x022414E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	mov r1, #0
	bl ov81_022431E0
	ldr r1, _02241520 ; =0x00000464
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	ldr r0, _02241520 ; =0x00000464
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov81_02243270
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	mov r0, #0xe2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242E08
	pop {r4, pc}
	.balign 4, 0
_02241520: .word 0x00000464
	thumb_func_end ov81_022414E0

