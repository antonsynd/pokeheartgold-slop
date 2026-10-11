	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02221F80
	.extern ov07_0221BFC0
	.extern ov07_0221FAB0
	.extern ov07_02231924
	.extern ov07_02236468
	.extern ov07_0223646A

	.text

	.text
	thumb_func_start ov07_02221F80
ov07_02221F80: ; 0x02221F80
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r2, #0
	bl ov07_02231924
	add r4, r0, #0
	add r0, r7, #0
	bl ov07_0221FAB0
	cmp r0, #1
	bne _02221F9A
	mov r5, #1
	b _02221F9C
_02221F9A:
	mov r5, #0
_02221F9C:
	add r0, r7, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _02221FA8
	add r4, r4, #2
_02221FA8:
	cmp r6, #3
	bhi _02221FE0
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221FB8: ; jump table
	.short _02221FC0 - _02221FB8 - 2 ; case 0
	.short _02221FD0 - _02221FB8 - 2 ; case 1
	.short _02221FC0 - _02221FB8 - 2 ; case 2
	.short _02221FD0 - _02221FB8 - 2 ; case 3
_02221FC0:
	mov r0, #0x18
	add r2, r5, #0
	mul r2, r0
	ldr r0, _02221FE8 ; =ov07_02236468
	lsl r1, r4, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02221FD0:
	mov r0, #0x18
	add r2, r5, #0
	mul r2, r0
	ldr r0, _02221FEC ; =ov07_0223646A
	lsl r1, r4, #2
	add r0, r0, r2
	ldrsh r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02221FE0:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02221FE8: .word ov07_02236468
_02221FEC: .word ov07_0223646A
	thumb_func_end ov07_02221F80

