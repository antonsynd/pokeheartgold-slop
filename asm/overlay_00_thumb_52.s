	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E714C
	.extern _0221A680

	.text

	.text
	thumb_func_start ov00_021E714C
ov00_021E714C: ; 0x021E714C
	push {r4, lr}
	cmp r0, #0
	beq _021E71B4
	ldr r2, _021E7208 ; =_0221A680
	ldr r0, _021E720C ; =0x00001088
	ldr r3, [r2]
	mov r4, #0xb
	str r4, [r3, r0]
	ldr r2, [r2]
	sub r0, #0xf0
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _021E7204
	add r0, r1, #0
	ldr r1, _021E7210 ; =0x0000F020
	bl Heap_Alloc
	ldr r2, _021E7208 ; =_0221A680
	ldr r1, _021E7214 ; =0x00000F98
	ldr r3, [r2]
	str r0, [r3, r1]
	ldr r0, [r2]
	mov r2, #0
	ldr r0, [r0, r1]
	mov r1, #0x1f
	add r0, #0x1f
	bic r0, r1
	mov r1, #0xf
	lsl r1, r1, #0xc
	bl NNS_FndCreateExpHeapEx
	ldr r2, _021E7208 ; =_0221A680
	ldr r1, _021E7218 ; =0x00000F9C
	ldr r3, [r2]
	str r0, [r3, r1]
	ldr r0, [r2]
	ldr r0, [r0, r1]
	mov r1, #0x10
	bl NNS_FndSetGroupIDForExpHeap
	ldr r0, _021E7208 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E7218 ; =0x00000F9C
	ldr r0, [r1, r0]
	bl NNS_FndGetTotalFreeSizeForExpHeap
	ldr r1, _021E7208 ; =_0221A680
	ldr r2, [r1]
	mov r1, #0xfa
	lsl r1, r1, #4
	str r0, [r2, r1]
	pop {r4, pc}
_021E71B4:
	ldr r2, _021E7208 ; =_0221A680
	ldr r0, _021E721C ; =0x00001084
	ldr r4, [r2]
	add r1, r0, #4
	ldr r3, [r4, r0]
	str r3, [r4, r1]
	add r1, r0, #0
	ldr r4, [r2]
	sub r1, #0xec
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _021E7204
	sub r0, #0xe8
	ldr r0, [r4, r0]
	bl NNS_FndGetTotalFreeSizeForExpHeap
	mov r1, #0xfa
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _021E71E6
	mov r0, #1
	bl sub_02039AD8
	pop {r4, pc}
_021E71E6:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	bl NNS_FndDestroyExpHeap
	ldr r0, _021E7208 ; =_0221A680
	ldr r1, [r0]
	ldr r0, _021E7214 ; =0x00000F98
	ldr r0, [r1, r0]
	bl Heap_Free
	ldr r0, _021E7208 ; =_0221A680
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021E7214 ; =0x00000F98
	str r2, [r1, r0]
_021E7204:
	pop {r4, pc}
	nop
_021E7208: .word _0221A680
_021E720C: .word 0x00001088
_021E7210: .word 0x0000F020
_021E7214: .word 0x00000F98
_021E7218: .word 0x00000F9C
_021E721C: .word 0x00001084
	thumb_func_end ov00_021E714C

