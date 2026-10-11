	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED4D4
	.public ov103_021EEC68

	.text

	thumb_func_start ov103_021ED4D4
ov103_021ED4D4: ; 0x021ED4D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x8e
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021ED4EE
	cmp r0, #2
	beq _021ED50E
	b _021ED52E
_021ED4EE:
	mov r0, #0x8e
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl YesNoPrompt_Reset
	mov r1, #0x8f
	ldr r2, [r4, #0xc]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r4, #0
	lsl r2, r1, #3
	ldr r1, _021ED534 ; =ov103_021EEC68
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
_021ED50E:
	mov r0, #0x8e
	ldr r1, [r4, #0xc]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl YesNoPrompt_Reset
	mov r1, #0x8f
	ldr r2, [r4, #0xc]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, r4, #0
	lsl r2, r1, #3
	ldr r1, _021ED538 ; =ov103_021EEC68 + 4
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
_021ED52E:
	mov r0, #4
	pop {r4, pc}
	nop
_021ED534: .word ov103_021EEC68
_021ED538: .word ov103_021EEC68 + 4
	thumb_func_end ov103_021ED4D4

