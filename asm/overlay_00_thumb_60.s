	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E73E8
	.extern _0221A684
	.extern ov00_021E73E4

	.text

	.text
	thumb_func_start ov00_021E73E8
ov00_021E73E8: ; 0x021E73E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	ldr r7, [sp, #0x1c]
	cmp r0, #0
	bne _021E7410
	mov r7, #0
	cmp r5, #0
	bls _021E748A
_021E73FC:
	ldr r0, [r4]
	mov r1, #0
	add r2, r6, #0
	bl MI_CpuFill8
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, r5
	blo _021E73FC
	pop {r3, r4, r5, r6, r7, pc}
_021E7410:
	ldr r0, _021E748C ; =_0221A684
	ldr r1, _021E7490 ; =0x00001A59
	ldr r0, [r0, #4]
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _021E7432
	add r1, r1, #3
	add r0, r0, r1
	ldr r1, _021E7494 ; =ov00_021E73E4
	mov r2, #0
	bl MIC_StartAutoSamplingAsync
	ldr r1, _021E748C ; =_0221A684
	mov r0, #0
	ldr r2, [r1, #4]
	ldr r1, _021E7490 ; =0x00001A59
	strb r0, [r2, r1]
_021E7432:
	bl MIC_GetLastSamplingAddress
	sub r0, r0, r7
	cmp r0, r6
	bhs _021E743E
	add r7, r7, r6
_021E743E:
	ldr r0, _021E7498 ; =0x027FFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _021E7454
	ldr r0, _021E748C ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E749C ; =0x0000110C
	add r7, r1, r0
_021E7454:
	ldr r0, _021E748C ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E74A0 ; =0x000019F0
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E7468
	add r0, r7, #0
	add r1, r6, #0
	bl VCT_SendAudio
_021E7468:
	mov r7, #0
	cmp r5, #0
	bls _021E7480
_021E746E:
	ldr r0, [r4]
	add r1, r6, #0
	mov r2, #0
	bl VCT_ReceiveAudio
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, r5
	blo _021E746E
_021E7480:
	ldr r0, _021E748C ; =_0221A684
	mov r2, #2
	ldr r1, [r0, #4]
	ldr r0, _021E74A4 ; =0x00001A58
	strb r2, [r1, r0]
_021E748A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E748C: .word _0221A684
_021E7490: .word 0x00001A59
_021E7494: .word ov00_021E73E4
_021E7498: .word 0x027FFFA8
_021E749C: .word 0x0000110C
_021E74A0: .word 0x000019F0
_021E74A4: .word 0x00001A58
	thumb_func_end ov00_021E73E8

