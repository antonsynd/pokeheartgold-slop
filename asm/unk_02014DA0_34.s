	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015708
	.public sub_02015720
	.public sub_02015754
	.public sub_0201576C
	.extern sub_02015550

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015708
sub_02015708: ; 0x02015708
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_02015550
	add r2, r0, #0
	beq _0201571E
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
_0201571E:
	pop {r4, pc}
	thumb_func_end sub_02015708

	thumb_func_start sub_02015720
sub_02015720: ; 0x02015720
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	mov r1, #5
	bl sub_02015550
	add r2, r0, #0
	bne _02015746
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
_02015746:
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end sub_02015720

	thumb_func_start sub_02015754
sub_02015754: ; 0x02015754
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_02015550
	cmp r0, #0
	beq _02015768
	mov r1, #0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_02015768:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02015754

	thumb_func_start sub_0201576C
sub_0201576C: ; 0x0201576C
	push {r4, lr}
	add r4, r1, #0
	mov r1, #5
	bl sub_02015550
	cmp r0, #0
	bne _02015780
	mov r0, #0
	strh r0, [r4]
	pop {r4, pc}
_02015780:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4]
	pop {r4, pc}
	thumb_func_end sub_0201576C

