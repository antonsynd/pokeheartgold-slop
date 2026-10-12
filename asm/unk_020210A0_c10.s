	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public GF_TouchpadPauseOnLidClose
	.extern GF_TouchpadStopAutoSampling
	.extern _021D2198

	.text
	thumb_func_start GF_TouchpadPauseOnLidClose
GF_TouchpadPauseOnLidClose: ; 0x0202135C
	push {r3, lr}
	ldr r0, _02021380 ; =_021D2198 + 0x40
	ldrh r1, [r0, #0x1a]
	cmp r1, #1
	beq _0202137E
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _0202137E
	bl GF_TouchpadStopAutoSampling
	cmp r0, #1
	beq _02021378
	bl GF_AssertFail
_02021378:
	ldr r0, _02021380 ; =_021D2198 + 0x40
	mov r1, #1
	strh r1, [r0, #0x1a]
_0202137E:
	pop {r3, pc}
	.balign 4, 0
_02021380: .word _021D2198 + 0x40
	thumb_func_end GF_TouchpadPauseOnLidClose

