	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265920
	.extern ov49_02265958
	.extern ov49_02266AF0

    .text

	.text
	thumb_func_start ov49_02265920
ov49_02265920: ; 0x02265920
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_02265958
	cmp r0, #0
	bne _02265934
	mov r0, #0
	pop {r3, r4, r5, pc}
_02265934:
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _0226593E
	bl GF_AssertFail
_0226593E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02266AF0
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02265920

