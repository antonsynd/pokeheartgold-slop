	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258C38
	.public ov90_02258E10
	.public ov90_0225BD08

	.text

	thumb_func_start ov90_02258C38
ov90_02258C38: ; 0x02258C38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02258C4A
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0x2c]
_02258C4A:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _02258C54
	bl Sprite_Delete
_02258C54:
	add r0, r4, #0
	add r0, #0x34
	bl ov90_0225BD08
	add r0, r4, #0
	add r0, #0x10
	bl ov90_02258E10
	ldr r0, [r4, #0xc]
	bl NARC_Delete
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov90_02258C38

