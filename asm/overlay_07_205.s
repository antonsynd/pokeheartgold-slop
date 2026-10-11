	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02221550
	.extern ov07_02231924

	.text

	.text
	thumb_func_start ov07_02221550
ov07_02221550: ; 0x02221550
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #0x24]
	bl ov07_02231924
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	bl ov07_02231924
	ldr r1, [r4, #0xc]
	cmp r1, #3
	bhi _02221598
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02221578: ; jump table
	.short _02221598 - _02221578 - 2 ; case 0
	.short _02221580 - _02221578 - 2 ; case 1
	.short _0222158E - _02221578 - 2 ; case 2
	.short _02221598 - _02221578 - 2 ; case 3
_02221580:
	cmp r0, #0
	bne _0222158A
	mov r5, #1
	lsl r5, r5, #8
	b _02221598
_0222158A:
	ldr r5, _022215AC ; =0xFFFFEC00
	b _02221598
_0222158E:
	cmp r0, #0
	bne _02221596
	mov r5, #0
	b _02221598
_02221596:
	ldr r5, _022215B0 ; =0xFFFFEB00
_02221598:
	ldr r0, [r4, #4]
	bl sub_02015530
	ldr r0, [r6, #0x20]
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	add r0, r5, r0
	str r0, [r6, #0x30]
	pop {r4, r5, r6, pc}
	nop
_022215AC: .word 0xFFFFEC00
_022215B0: .word 0xFFFFEB00
	thumb_func_end ov07_02221550

