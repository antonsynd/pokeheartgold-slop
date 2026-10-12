	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015628
	.public sub_02015640
	.public sub_02015674
	.public sub_0201568C
	.extern sub_02015550

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015628
sub_02015628: ; 0x02015628
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_02015550
	add r2, r0, #0
	beq _0201563E
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
_0201563E:
	pop {r4, pc}
	thumb_func_end sub_02015628

	thumb_func_start sub_02015640
sub_02015640: ; 0x02015640
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #2
	bl sub_02015550
	add r2, r0, #0
	bne _02015666
	add r2, sp, #0
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, pc}
_02015666:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02015640

	thumb_func_start sub_02015674
sub_02015674: ; 0x02015674
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_02015550
	cmp r0, #0
	beq _02015688
	mov r1, #0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_02015688:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02015674

	thumb_func_start sub_0201568C
sub_0201568C: ; 0x0201568C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	bl sub_02015550
	cmp r0, #0
	bne _020156A0
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_020156A0:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0201568C

