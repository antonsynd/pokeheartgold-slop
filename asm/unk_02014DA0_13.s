	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_0201543C
	.public sub_02015460
	.extern _021D10A8
	.extern sub_020153D8
	.extern sub_02015414

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_0201543C
sub_0201543C: ; 0x0201543C
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _0201545C ; =_021D10A8
	add r6, r4, #0
_02015444:
	ldr r0, [r5]
	cmp r0, #0
	beq _02015450
	bl sub_020153D8
	add r4, r4, #1
_02015450:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _02015444
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0201545C: .word _021D10A8
	thumb_func_end sub_0201543C

	thumb_func_start sub_02015460
sub_02015460: ; 0x02015460
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r5, _02015480 ; =_021D10A8
	add r6, r4, #0
_02015468:
	ldr r0, [r5]
	cmp r0, #0
	beq _02015474
	bl sub_02015414
	add r4, r4, #1
_02015474:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0x10
	blt _02015468
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02015480: .word _021D10A8
	thumb_func_end sub_02015460

