	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public GF_TouchpadResumeOnLidOpen
	.extern GF_TouchpadStartAutoSampling
	.extern _021D2198

	.text
	thumb_func_start GF_TouchpadResumeOnLidOpen
GF_TouchpadResumeOnLidOpen: ; 0x02021328
	push {r3, lr}
	ldr r0, _02021354 ; =_021D2198 + 0x40
	ldrh r1, [r0, #0x1a]
	cmp r1, #0
	beq _02021350
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _02021350
	ldr r0, _02021358 ; =_021D2198
	ldr r0, [r0, #8]
	lsr r0, r0, #1
	bl GF_TouchpadStartAutoSampling
	cmp r0, #1
	beq _0202134A
	bl GF_AssertFail
_0202134A:
	ldr r0, _02021354 ; =_021D2198 + 0x40
	mov r1, #0
	strh r1, [r0, #0x1a]
_02021350:
	pop {r3, pc}
	nop
_02021354: .word _021D2198 + 0x40
_02021358: .word _021D2198
	thumb_func_end GF_TouchpadResumeOnLidOpen

