	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02221EC4
	.public ov07_02221EEC
	.extern ov07_02231D70
	.extern ov07_02236444

	.text

	.text
	thumb_func_start ov07_02221EC4
ov07_02221EC4: ; 0x02221EC4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r0, [r5, #4]
	bl sub_02015524
	add r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	add r2, sp, #0
	bl ov07_02231D70
	add r0, sp, #0
	add r1, r4, #0
	bl Camera_SetLookAtCamTarget
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov07_02221EC4

	thumb_func_start ov07_02221EEC
ov07_02221EEC: ; 0x02221EEC
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _02221F00 ; =ov07_02236444
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_02221F00: .word ov07_02236444
	thumb_func_end ov07_02221EEC

