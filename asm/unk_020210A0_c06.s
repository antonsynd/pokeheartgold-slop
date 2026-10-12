	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public GF_TouchpadStopAutoSampling
	.extern _021D2198

	.text
	thumb_func_start GF_TouchpadStopAutoSampling
GF_TouchpadStopAutoSampling: ; 0x020211F4
	push {r4, r5, r6, lr}
	ldr r0, _02021234 ; =_021D2198 + 0x40
	mov r5, #0
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	bne _02021204
	mov r0, #1
	pop {r4, r5, r6, pc}
_02021204:
	mov r4, #4
	add r6, r4, #0
_02021208:
	bl TP_RequestAutoSamplingStopAsync
	add r0, r4, #0
	bl TP_WaitBusy
	add r0, r6, #0
	bl TP_CheckBusy
	cmp r0, #0
	beq _0202121E
	add r5, r5, #1
_0202121E:
	cmp r0, #0
	beq _02021226
	cmp r5, #5
	bls _02021208
_02021226:
	cmp r5, #5
	bls _0202122E
	mov r0, #2
	pop {r4, r5, r6, pc}
_0202122E:
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02021234: .word _021D2198 + 0x40
	thumb_func_end GF_TouchpadStopAutoSampling

