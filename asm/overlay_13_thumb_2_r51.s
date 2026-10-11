	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223E1C
	.extern ov13_0224DF30
	.extern ov13_0224DFC4

	.text

	.text
	thumb_func_start ov13_02223E1C
ov13_02223E1C: ; 0x02223E1C
	push {r4, lr}
	add r4, r1, #0
	beq _02223E3A
	cmp r2, #0
	ble _02223E3A
	ldr r0, _02223E3C ; =ov13_0224DFC4
	bl OS_LockMutex
	ldr r1, _02223E40 ; =ov13_0224DF30
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _02223E3C ; =ov13_0224DFC4
	bl OS_UnlockMutex
_02223E3A:
	pop {r4, pc}
	.balign 4, 0
_02223E3C: .word ov13_0224DFC4
_02223E40: .word ov13_0224DF30
	thumb_func_end ov13_02223E1C

