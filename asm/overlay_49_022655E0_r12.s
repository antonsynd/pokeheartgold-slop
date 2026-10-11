	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_022658E4
	.extern ov49_02265948
	.extern ov49_02265958
	.extern ov49_0226A538

    .text

	.text
	thumb_func_start ov49_022658E4
ov49_022658E4: ; 0x022658E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_02265958
	cmp r0, #0
	beq _02265918
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _022658FE
	bl GF_AssertFail
_022658FE:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _0226591C ; =ov49_0226A538
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _02265918
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02265948
_02265918:
	pop {r3, r4, r5, pc}
	nop
_0226591C: .word ov49_0226A538
	thumb_func_end ov49_022658E4

