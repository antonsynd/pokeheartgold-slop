	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258DB0

	.text

	.text
	thumb_func_start ov90_02258DB0
ov90_02258DB0: ; 0x02258DB0
	push {r3, r4}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r4, r2, #1
	mov r3, #0
	cmp r4, #0
	ble _02258DCC
_02258DBE:
	ldrh r2, [r0]
	add r3, r3, #1
	add r2, r2, r1
	strh r2, [r0]
	add r0, r0, #2
	cmp r3, r4
	blt _02258DBE
_02258DCC:
	pop {r3, r4}
	bx lr
	thumb_func_end ov90_02258DB0

