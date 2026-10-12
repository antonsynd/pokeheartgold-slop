	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EC4CC
	.extern ov102_021EC820

	.text

	.text
	thumb_func_start ov102_021EC4CC
ov102_021EC4CC: ; 0x021EC4CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0x1b
	blo _021EC4DC
	bl GF_AssertFail
_021EC4DC:
	mov r0, #0xa
	add r1, r5, #0
	mul r1, r0
	ldr r0, _021EC4F0 ; =ov102_021EC820 + 2
	ldrb r0, [r0, r1]
	str r0, [r4]
	ldr r0, _021EC4F4 ; =ov102_021EC820 + 3
	ldrb r0, [r0, r1]
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EC4F0: .word ov102_021EC820 + 2
_021EC4F4: .word ov102_021EC820 + 3
	thumb_func_end ov102_021EC4CC

