	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258938
	.extern ov90_02258E10
	.extern ov90_02259084
	.extern ov90_02259158
	.extern ov90_022591D4
	.extern ov90_02259434
	.extern ov90_02259784
	.extern ov90_02259EAC
	.extern ov90_0225A108
	.extern ov90_0225A340

	.text

	.text
	thumb_func_start ov90_02258938
ov90_02258938: ; 0x02258938
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022589B8 ; =0x000005EC
	ldr r0, [r5, r0]
	bl SysTask_Destroy
	mov r0, #0x5f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl SysTask_Destroy
	mov r0, #0xb9
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov90_0225A108
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov90_0225A340
	ldrb r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _02258980
	mov r0, #0x81
	lsl r0, r0, #2
	add r4, r5, r0
_02258970:
	add r0, r4, #0
	bl ov90_02259EAC
	ldrb r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x38
	cmp r6, r0
	blt _02258970
_02258980:
	add r0, r5, #0
	add r0, #0x4c
	bl ov90_02259434
	add r0, r5, #0
	bl ov90_02259784
	add r0, r5, #0
	add r0, #0x3c
	bl ov90_022591D4
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov90_02258E10
	add r0, r5, #0
	add r0, #0x84
	bl ov90_02259158
	add r0, r5, #0
	add r0, #0x30
	bl ov90_02259084
	add r0, r5, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022589B8: .word 0x000005EC
	thumb_func_end ov90_02258938

