	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E71DC
	.public ov99_021E723C

	.text

	thumb_func_start ov99_021E723C
ov99_021E723C: ; 0x021E723C
	push {r3, lr}
	bl ov99_021E71DC
	mov r1, #0
	bl Pokedex_GetSeenSpindaPersonality
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov99_021E723C

