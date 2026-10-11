	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E733C
	.extern _0221A684

	.text

	.text
	thumb_func_start ov00_021E733C
ov00_021E733C: ; 0x021E733C
	push {r3, r4, r5, lr}
	bl MIC_Init
	bl PM_Init
	mov r0, #1
	bl PM_SetAmp
	mov r0, #3
	bl PM_SetAmpGain
	ldr r0, _021E73CC ; =_0221A684
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r3, _021E73D0 ; =0x00001A78
	add r5, r2, #0
	str r2, [r1, r3]
	add r1, r3, #0
	ldr r4, [r0, #4]
	add r1, #0xc
	str r2, [r4, r1]
	ldr r4, [r0, #4]
	add r1, r3, #4
	str r2, [r4, r1]
	add r1, r3, #0
	ldr r4, [r0, #4]
	add r1, #8
	str r2, [r4, r1]
	ldr r1, [r0, #4]
	add r3, #0x10
	str r2, [r1, r3]
	ldr r3, _021E73D4 ; =0x00001A8C
	add r1, r2, #0
_021E737E:
	ldr r4, [r0, #4]
	add r2, r2, #1
	add r4, r4, r5
	add r5, r5, #2
	strh r1, [r4, r3]
	cmp r2, #0x10
	blt _021E737E
	ldr r0, _021E73CC ; =_0221A684
	ldr r2, [r0, #4]
	ldr r0, _021E73D8 ; =0x00001AAC
	str r1, [r2, r0]
	mov r0, #1
	bl VCT_EnableVAD
	bl NNS_SndInit
	ldr r0, _021E73CC ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E73DC ; =0x000019F8
	add r0, r1, r0
	bl NNS_SndStrmInit
	ldr r1, _021E73CC ; =_0221A684
	mov r0, #0
	ldr r2, [r1, #4]
	ldr r1, _021E73E0 ; =0x0000110C
	add r1, r2, r1
	mov r2, #0x22
	lsl r2, r2, #6
	bl MIi_CpuClearFast
	ldr r0, _021E73CC ; =_0221A684
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	bl VCT_EnableEchoCancel
	pop {r3, r4, r5, pc}
	nop
_021E73CC: .word _0221A684
_021E73D0: .word 0x00001A78
_021E73D4: .word 0x00001A8C
_021E73D8: .word 0x00001AAC
_021E73DC: .word 0x000019F8
_021E73E0: .word 0x0000110C
	thumb_func_end ov00_021E733C

