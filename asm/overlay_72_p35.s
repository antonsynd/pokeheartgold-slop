	.include "macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223894C
	.extern ov72_022387C4
	.extern ov72_0223B660

	.text

	.text
	thumb_func_start ov72_0223894C
ov72_0223894C: ; 0x0223894C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov72_022387C4
	bl sub_0203A930
	ldr r4, [r5, #0x1c]
	ldr r1, _02238978 ; =ov72_0223B660
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x1c]
	cmp r4, r1
	beq _02238976
	mov r1, #0xfd
	mov r2, #0
	lsl r1, r1, #4
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_02238976:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02238978: .word ov72_0223B660
	thumb_func_end ov72_0223894C

