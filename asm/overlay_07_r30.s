	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221C56C
	.public ov07_0221C584
	.extern ov07_02234C08

	.text

	.text
	thumb_func_start ov07_0221C56C
ov07_0221C56C: ; 0x0221C56C
	ldr r3, _0221C578 ; =SysTask_CreateOnMainQueue
	str r0, [r1, #0x38]
	ldr r0, _0221C57C ; =ov07_0221C584
	ldr r2, _0221C580 ; =0x0000044C
	bx r3
	nop
_0221C578: .word SysTask_CreateOnMainQueue
_0221C57C: .word ov07_0221C584
_0221C580: .word 0x0000044C
	thumb_func_end ov07_0221C56C

	thumb_func_start ov07_0221C584
ov07_0221C584: ; 0x0221C584
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0221C5C0 ; =ov07_02234C08
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _0221C5BE
	ldr r0, [r4, #0x38]
	add r1, r0, #0
	add r1, #0x90
	ldrh r1, [r1]
	cmp r1, #0
	beq _0221C5B2
	add r1, r0, #0
	add r1, #0x90
	ldrh r1, [r1]
	add r0, #0x90
	sub r1, r1, #1
	strh r1, [r0]
_0221C5B2:
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_0221C5BE:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221C5C0: .word ov07_02234C08
	thumb_func_end ov07_0221C584

