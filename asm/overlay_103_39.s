	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED9D8
	.public ov103_021EDB60
	.public ov103_021EE0CC
	.public ov103_021EE888
	.public ov103_021EEAC8

	.text

	thumb_func_start ov103_021ED9D8
ov103_021ED9D8: ; 0x021ED9D8
	push {r4, lr}
	add r4, r0, #0
	bl ov103_021EE888
	ldr r0, [r4, #0xc]
	mov r1, #0xa
	ldr r0, [r0, #4]
	bl sub_0201980C
	mov r0, #0x9e
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	add r0, r4, #0
	bl ov103_021EEAC8
	ldr r0, [r4, #0xc]
	mov r1, #2
	mov r2, #1
	bl ov103_021EE0CC
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov103_021EDB60
	mov r0, #9
	pop {r4, pc}
	thumb_func_end ov103_021ED9D8

