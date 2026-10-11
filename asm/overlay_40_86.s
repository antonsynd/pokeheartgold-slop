	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02230DCC
	.public ov40_02230E08
	.public ov40_0223D540

	.text

	thumb_func_start ov40_02230DCC
ov40_02230DCC: ; 0x02230DCC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl ov40_0223D540
	mov r1, #0x51
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x40
	bl String_New
	add r6, r0, #0
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	bl FontID_String_AllCharsValid
	cmp r0, #0
	bne _02230DFE
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov40_02230E08
_02230DFE:
	add r0, r6, #0
	bl String_Delete
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov40_02230DCC

