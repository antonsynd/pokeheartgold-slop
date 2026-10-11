	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238674
	.public ov59_022393D4
	.public ov59_02239428
	.public ov59_02239604
	.public ov59_02239704
	.public ov59_022397E4
	.public ov59_022398CC
	.public ov59_022399F0

	.text

	thumb_func_start ov59_02238674
ov59_02238674: ; 0x02238674
	push {r4, lr}
	add r4, r0, #0
	bl ov59_02239428
	add r0, r4, #0
	bl ov59_02239604
	add r0, r4, #0
	bl ov59_02239704
	add r0, r4, #0
	bl ov59_022397E4
	add r0, r4, #0
	bl ov59_022398CC
	add r0, r4, #0
	bl ov59_022399F0
	ldr r0, _022386A4 ; =ov59_022393D4
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	pop {r4, pc}
	.balign 4, 0
_022386A4: .word ov59_022393D4
	thumb_func_end ov59_02238674

