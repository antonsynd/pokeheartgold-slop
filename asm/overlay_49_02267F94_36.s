	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_02268C74
	.extern ov49_0226A87C

    .text

	.text
	thumb_func_start ov49_02268C74
ov49_02268C74: ; 0x02268C74
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #6
	blo _02268C84
	bl GF_AssertFail
_02268C84:
	cmp r4, #6
	bhs _02268CA4
	add r1, r5, #0
	mov r0, #0
	add r1, #0xc
	strb r0, [r5, #0xc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r2, _02268CA8 ; =ov49_0226A87C
	lsl r3, r4, #2
	ldr r2, [r2, r3]
	add r0, r5, #0
	add r1, r6, #0
	blx r2
	strb r4, [r5, #8]
_02268CA4:
	pop {r4, r5, r6, pc}
	nop
_02268CA8: .word ov49_0226A87C
	thumb_func_end ov49_02268C74

