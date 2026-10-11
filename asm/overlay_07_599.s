	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02231DE8
	.extern ov07_02236858

	.text

	.text
	thumb_func_start ov07_02231DE8
ov07_02231DE8: ; 0x02231DE8
	push {r3, lr}
	add r3, r1, #0
	cmp r0, #0
	bne _02231DF8
	add r0, r3, #0
	bl sub_02015510
	pop {r3, pc}
_02231DF8:
	ldr r2, _02231E04 ; =ov07_02236858
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	pop {r3, pc}
	.balign 4, 0
_02231E04: .word ov07_02236858
	thumb_func_end ov07_02231DE8

