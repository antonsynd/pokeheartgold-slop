	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7A30
	.extern _0221A684

	.text

	.text
	thumb_func_start ov00_021E7A30
ov00_021E7A30: ; 0x021E7A30
	push {r4, lr}
	ldr r0, _021E7A90 ; =_0221A684
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021E7A8C
	ldr r0, _021E7A94 ; =0x0000198C
	ldr r4, [r1, r0]
	bl MIC_StopAutoSampling
	ldr r0, _021E7A90 ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E7A98 ; =0x000019F8
	add r0, r1, r0
	bl NNS_SndStrmStop
	ldr r0, _021E7A90 ; =_0221A684
	ldr r1, [r0, #4]
	ldr r0, _021E7A98 ; =0x000019F8
	add r0, r1, r0
	bl NNS_SndStrmFreeChannel
	bl VCT_Cleanup
	ldr r0, _021E7A90 ; =_0221A684
	ldr r1, _021E7A9C ; =0x00000888
	ldr r2, [r0, #4]
	ldr r0, _021E7AA0 ; =0x000019F4
	ldr r1, [r2, r1]
	ldr r0, [r2, r0]
	bl Heap_FreeExplicit
	ldr r0, _021E7A90 ; =_0221A684
	mov r1, #0x22
	ldr r2, [r0, #4]
	ldr r0, _021E7AA0 ; =0x000019F4
	lsl r1, r1, #6
	ldr r0, [r2, r0]
	ldr r1, [r2, r1]
	bl Heap_FreeExplicit
	mov r1, #0
	ldr r0, _021E7A90 ; =_0221A684
	cmp r4, #0
	str r1, [r0, #4]
	beq _021E7A8C
	blx r4
_021E7A8C:
	pop {r4, pc}
	nop
_021E7A90: .word _0221A684
_021E7A94: .word 0x0000198C
_021E7A98: .word 0x000019F8
_021E7A9C: .word 0x00000888
_021E7AA0: .word 0x000019F4
	thumb_func_end ov00_021E7A30

