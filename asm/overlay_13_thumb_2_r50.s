	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223DEC
	.extern ov13_0224DF30
	.extern ov13_0224DFC4

	.text

	.text
	thumb_func_start ov13_02223DEC
ov13_02223DEC: ; 0x02223DEC
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0
	ble _02223E0E
	ldr r0, _02223E14 ; =ov13_0224DFC4
	bl OS_LockMutex
	ldr r1, _02223E18 ; =ov13_0224DF30
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r4, r0, #0
	ldr r0, _02223E14 ; =ov13_0224DFC4
	bl OS_UnlockMutex
	add r0, r4, #0
	pop {r4, pc}
_02223E0E:
	mov r0, #0
	pop {r4, pc}
	nop
_02223E14: .word ov13_0224DFC4
_02223E18: .word ov13_0224DF30
	thumb_func_end ov13_02223DEC

