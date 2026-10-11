	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258A04
	.extern ov90_02258E10
	.extern ov90_02259084
	.extern ov90_02259158
	.extern ov90_022591D4
	.extern ov90_02259434
	.extern ov90_02259EAC
	.extern ov90_0225A108
	.extern ov90_0225A960
	.extern ov90_0225B380

	.text

	.text
	thumb_func_start ov90_02258A04
ov90_02258A04: ; 0x02258A04
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _02258A90 ; =0x00000644
	ldr r0, [r5, r0]
	bl SysTask_Destroy
	ldr r0, _02258A94 ; =0x00000648
	ldr r0, [r5, r0]
	bl SysTask_Destroy
	mov r0, #0xcf
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov90_0225A108
	ldrb r0, [r5, #0x14]
	mov r6, #0
	cmp r0, #0
	ble _02258A40
	mov r0, #0x97
	lsl r0, r0, #2
	add r4, r5, r0
_02258A30:
	add r0, r4, #0
	bl ov90_02259EAC
	ldrb r0, [r5, #0x14]
	add r6, r6, #1
	add r4, #0x38
	cmp r6, r0
	blt _02258A30
_02258A40:
	mov r0, #0x7a
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov90_0225B380
	add r0, r5, #0
	bl ov90_0225A960
	add r0, r5, #0
	add r0, #0x68
	bl ov90_02259434
	add r0, r5, #0
	add r0, #0x58
	bl ov90_022591D4
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov90_02258E10
	add r0, r5, #0
	add r0, #0xa0
	bl ov90_02259158
	add r0, r5, #0
	add r0, #0x4c
	bl ov90_02259084
	ldr r0, _02258A98 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _02258A9C ; =0x04001050
	strh r1, [r0]
	bl GF_DestroyVramTransferManager
	add r0, r5, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02258A90: .word 0x00000644
_02258A94: .word 0x00000648
_02258A98: .word 0x04000050
_02258A9C: .word 0x04001050
	thumb_func_end ov90_02258A04

