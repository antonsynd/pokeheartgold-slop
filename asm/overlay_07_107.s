	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221ED14
	.extern ov07_02234BC0

	.text

	.text
	thumb_func_start ov07_0221ED14
ov07_0221ED14: ; 0x0221ED14
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x14]
	add r5, r0, #0
	lsl r3, r2, #2
	ldr r2, _0221ED40 ; =ov07_02234BC0
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	bne _0221ED3E
	mov r0, #0x5f
	ldr r1, [r4, #0x48]
	mov r2, #0
	lsl r0, r0, #2
	strb r2, [r1, r0]
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
_0221ED3E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221ED40: .word ov07_02234BC0
	thumb_func_end ov07_0221ED14

