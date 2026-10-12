	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public BugContestSwapMon_Main
	.extern _021E6D40

	.text

	.text
	thumb_func_start BugContestSwapMon_Main
BugContestSwapMon_Main: ; 0x021E59B8
	push {r4, lr}
	bl OverlayManager_GetData
	add r4, r0, #0
	bne _021E59C6
	bl GF_AssertFail
_021E59C6:
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021E59E0 ; =_021E6D40
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _021E59DA
	mov r0, #1
	pop {r4, pc}
_021E59DA:
	mov r0, #0
	pop {r4, pc}
	nop
_021E59E0: .word _021E6D40
	thumb_func_end BugContestSwapMon_Main

