	.include "asm/macros.inc"
	.include "unk_020210A0.inc"
	.include "global.inc"
	.public GF_TouchpadStartAutoSampling
	.extern _021D2198

	.text
	thumb_func_start GF_TouchpadStartAutoSampling
GF_TouchpadStartAutoSampling: ; 0x02021384
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	lsl r0, r0, #0x10
	ldr r7, _020213C4 ; =_021D2198 + 0xC
	add r6, r5, #0
	lsr r4, r0, #0x10
_02021390:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #9
	bl TP_RequestAutoSamplingStartAsync
	mov r0, #2
	bl TP_WaitBusy
	mov r0, #2
	bl TP_CheckBusy
	cmp r0, #0
	beq _020213AE
	add r5, r5, #1
_020213AE:
	cmp r0, #0
	beq _020213B6
	cmp r5, #5
	ble _02021390
_020213B6:
	cmp r5, #5
	ble _020213BE
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_020213BE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020213C4: .word _021D2198 + 0xC
	thumb_func_end GF_TouchpadStartAutoSampling

