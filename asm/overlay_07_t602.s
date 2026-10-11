	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0223192C
	.extern ov07_0221FA04

	.text

	.text
	thumb_func_start ov07_0223192C
ov07_0223192C: ; 0x0223192C
	push {r4, lr}
	bl ov07_0221FA04
	cmp r0, #5
	bhi _02231954
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02231942: ; jump table
	.short _0223194E - _02231942 - 2 ; case 0
	.short _02231952 - _02231942 - 2 ; case 1
	.short _0223194E - _02231942 - 2 ; case 2
	.short _02231952 - _02231942 - 2 ; case 3
	.short _0223194E - _02231942 - 2 ; case 4
	.short _02231952 - _02231942 - 2 ; case 5
_0223194E:
	mov r4, #3
	b _02231954
_02231952:
	mov r4, #4
_02231954:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov07_0223192C

