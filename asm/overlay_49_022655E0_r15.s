	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265958

    .text

	.text
	thumb_func_start ov49_02265958
ov49_02265958: ; 0x02265958
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02265962
	mov r0, #1
	bx lr
_02265962:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02265958

