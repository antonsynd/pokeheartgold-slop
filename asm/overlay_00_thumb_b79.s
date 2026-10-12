	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E77CC
	.public ov00_021E77F4
	.extern _0221A684
	.extern _0221A688
	.extern ov00_021E733C
	.extern ov00_021E73E8
	.extern ov00_021E7544
	.extern ov00_021E756C
	.extern ov00_021E79B4

	.text

	.text
	thumb_func_start ov00_021E77CC
ov00_021E77CC: ; 0x021E77CC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r4, #0x20
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	add r1, r4, #0
	bl Heap_Alloc
	str r0, [r5]
	mov r1, #0
	add r2, r4, #0
	bl MI_CpuFill8
	ldr r1, [r5]
	mov r0, #0x1f
	add r1, #0x1f
	bic r1, r0
	str r1, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov00_021E77CC

	thumb_func_start ov00_021E77F4
ov00_021E77F4: ; 0x021E77F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	add r6, r1, #0
	add r0, sp, #0x14
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	ldr r0, _021E797C ; =_0221A684
	add r4, r2, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021E7858
	str r1, [sp, #0x10]
	ldr r1, _021E7980 ; =_0221A688
	ldr r2, _021E7984 ; =0x00001AB0
	add r0, sp, #0x10
	add r3, r5, #0
	bl ov00_021E77CC
	ldr r0, _021E797C ; =_0221A684
	mov r2, #0x22
	ldr r3, [sp, #0x10]
	ldr r1, [r0, #4]
	lsl r2, r2, #6
	str r3, [r1, r2]
	ldr r1, [r0, #4]
	add r0, r2, #0
	add r0, #8
	add r2, r2, #4
	add r0, r1, r0
	add r1, r1, r2
	mov r2, #0x8f
	lsl r2, r2, #6
	mul r2, r4
	add r2, #0x20
	add r3, r5, #0
	bl ov00_021E77CC
	ldr r1, _021E797C ; =_0221A684
	ldr r0, _021E7988 ; =0x000019F4
	ldr r2, [r1, #4]
	str r5, [r2, r0]
	ldr r1, [r1, #4]
	mov r2, #0
	sub r0, #0x68
	str r2, [r1, r0]
	bl ov00_021E733C
_021E7858:
	ldr r3, _021E797C ; =_0221A684
	mov r5, #0x22
	ldr r0, [r3, #4]
	ldr r2, _021E798C ; =0x00001A5C
	mov r1, #3
	str r1, [r0, r2]
	ldr r1, [r3, #4]
	add r0, r2, #4
	str r1, [r1, r0]
	add r0, r2, #0
	ldr r1, [r3, #4]
	lsl r5, r5, #6
	add r0, #8
	str r5, [r1, r0]
	mov r5, #0x41
	add r0, r2, #0
	ldr r1, [r3, #4]
	lsl r5, r5, #6
	add r0, #0xc
	str r5, [r1, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	mov r1, #1
	add r0, #0x10
	str r1, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	mov r7, #0
	add r0, #0x14
	str r7, [r5, r0]
	add r0, r2, #0
	ldr r5, [r3, #4]
	add r0, #0x18
	str r7, [r5, r0]
	sub r0, r2, #3
	ldr r5, [r3, #4]
	sub r2, #0x64
	strb r1, [r5, r0]
	ldr r0, [r3, #4]
	add r0, r0, r2
	add r2, sp, #0x14
	bl NNS_SndStrmAllocChannel
	ldr r0, _021E797C ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E7990 ; =0x000019F8
	add r0, r1, r0
	add r1, r7, #0
	bl NNS_SndStrmSetVolume
	ldr r0, _021E797C ; =_0221A684
	ldr r3, _021E7994 ; =0x0000088C
	ldr r2, [r0, #4]
	mov r0, #0x41
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021E7998 ; =ov00_021E73E8
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, _021E7990 ; =0x000019F8
	str r2, [sp, #0xc]
	add r0, r2, r0
	add r2, r2, r3
	sub r3, #0xc
	bl NNS_SndStrmSetup
	ldr r1, _021E797C ; =_0221A684
	ldr r0, _021E799C ; =0x000019EC
	ldr r2, [r1, #4]
	add r3, r7, #0
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	add r0, #0x68
	str r3, [r1, r0]
	bl sub_0203993C
	bl sub_02034084
	cmp r0, #0
	bne _021E7900
	mov r0, #1
	str r0, [sp, #0x20]
	b _021E7904
_021E7900:
	mov r0, #3
	str r0, [sp, #0x20]
_021E7904:
	ldr r1, _021E797C ; =_0221A684
	ldr r3, [sp, #0x20]
	ldr r2, [r1, #4]
	ldr r0, _021E79A0 ; =0x000019E8
	str r3, [r2, r0]
	ldr r1, [r1, #4]
	sub r0, #0x58
	add r0, r1, r0
	str r0, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl ov00_021EE490
	add r1, sp, #0x10
	strb r0, [r1, #0x14]
	mov r0, #0
	ldrb r1, [r1, #0x14]
	mvn r0, r0
	cmp r1, r0
	bne _021E792E
	bl GF_AssertFail
_021E792E:
	ldr r0, _021E797C ; =_0221A684
	ldr r1, _021E79A0 ; =0x000019E8
	ldr r0, [r0, #4]
	ldr r1, [r0, r1]
	cmp r1, #3
	bne _021E7940
	ldr r1, _021E79A4 ; =ov00_021E7544
	str r1, [sp, #0x30]
	b _021E7944
_021E7940:
	ldr r1, _021E79A8 ; =ov00_021E756C
	str r1, [sp, #0x30]
_021E7944:
	mov r1, #0
	str r1, [sp, #0x34]
	ldr r1, _021E79AC ; =0x00000884
	ldr r0, [r0, r1]
	str r0, [sp, #0x28]
	mov r0, #0x8f
	lsl r0, r0, #6
	mul r0, r4
	add r0, #0x20
	str r0, [sp, #0x2c]
	add r0, sp, #0x18
	bl VCT_Init
	ldr r0, _021E797C ; =_0221A684
	mov r2, #0
	ldr r1, [r0, #4]
	ldr r0, _021E79B0 ; =0x000019F0
	str r2, [r1, r0]
	add r0, r6, #0
	bl VCT_SetCodec
	bl ov00_021E79B4
	mov r0, #1
	bl VCT_EnableEchoCancel
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E797C: .word _0221A684
_021E7980: .word _0221A688
_021E7984: .word 0x00001AB0
_021E7988: .word 0x000019F4
_021E798C: .word 0x00001A5C
_021E7990: .word 0x000019F8
_021E7994: .word 0x0000088C
_021E7998: .word ov00_021E73E8
_021E799C: .word 0x000019EC
_021E79A0: .word 0x000019E8
_021E79A4: .word ov00_021E7544
_021E79A8: .word ov00_021E756C
_021E79AC: .word 0x00000884
_021E79B0: .word 0x000019F0
	thumb_func_end ov00_021E77F4

