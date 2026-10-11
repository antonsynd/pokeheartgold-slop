	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02243240
	.extern ov81_02243658
	.extern ov81_022436F0
	.extern ov81_02243808

	.text

	.text
	thumb_func_start ov81_02243240
ov81_02243240: ; 0x02243240
	push {lr}
	sub sp, #0xc
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	ldr r0, _02243264 ; =ov81_022436F0
	ldr r1, _02243268 ; =ov81_02243808
	ldr r2, _0224326C ; =ov81_02243658
	bl GridInputHandler_Create
	add sp, #0xc
	pop {pc}
	nop
_02243264: .word ov81_022436F0
_02243268: .word ov81_02243808
_0224326C: .word ov81_02243658
	thumb_func_end ov81_02243240

