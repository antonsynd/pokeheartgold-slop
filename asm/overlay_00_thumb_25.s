	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E6638
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E6638
ov00_021E6638: ; 0x021E6638
	push {r3, r4, r5, lr}
	add r5, r1, #0
	beq _021E6682
	bl OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	bl NNS_FndGetGroupIDForMBlockExpHeap
	cmp r0, #0x10
	bne _021E666E
	ldr r0, _021E6684 ; =_0221A680
	ldr r2, [r0]
	ldr r0, _021E6688 ; =0x00000F98
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _021E6662
	mov r0, #1
	bl sub_02039AD8
	pop {r3, r4, r5, pc}
_021E6662:
	add r0, r0, #4
	ldr r0, [r2, r0]
	add r1, r5, #0
	bl NNS_FndFreeToExpHeap
	b _021E667C
_021E666E:
	ldr r0, _021E6684 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E668C ; =0x00000F94
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl NNS_FndFreeToExpHeap
_021E667C:
	add r0, r4, #0
	bl OS_RestoreInterrupts
_021E6682:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E6684: .word _0221A680
_021E6688: .word 0x00000F98
_021E668C: .word 0x00000F94
	thumb_func_end ov00_021E6638

