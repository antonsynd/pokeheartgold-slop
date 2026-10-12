	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E7258
	.extern ov99_021E7180

	.text

	.text
	thumb_func_start ov99_021E7258
ov99_021E7258: ; 0x021E7258
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov99_021E7180
	add r5, r0, #0
	mov r4, #0
	mov r7, #1
_021E7266:
	lsl r0, r4, #2
	add r1, r6, r0
	ldr r0, _021E7288 ; =0x00000444
	ldr r0, [r1, r0]
	add r1, r5, #0
	and r1, r7
	bl ManagedSprite_SetDrawFlag
	lsl r0, r5, #0x17
	lsr r5, r0, #0x18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021E7266
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7288: .word 0x00000444
	thumb_func_end ov99_021E7258

