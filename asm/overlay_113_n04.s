	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E5A48

	.text

	.text
	thumb_func_start ov113_021E5A48
ov113_021E5A48: ; 0x021E5A48
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	add r7, r0, #0
	add r6, r1, #0
	add r4, r5, #0
_021E5A52:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #1
	bl Pokedex_GetSeenFormByIdx_Unown
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r0, #0
	add r1, #0xe6
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	bhi _021E5A70
	strb r0, [r6, r5]
	add r5, r5, #1
_021E5A70:
	add r4, r4, #1
	cmp r4, #0x1c
	blt _021E5A52
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov113_021E5A48

