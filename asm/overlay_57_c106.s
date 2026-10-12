	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B578
	.extern ov57_0223BEB0

	.text

	.text
	thumb_func_start ov57_0223B578
ov57_0223B578: ; 0x0223B578
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	bl System_GetTouchNew
	cmp r0, #0
	bne _0223B58E
	mov r0, #0
	add sp, #0x18
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0223B58E:
	mov r0, #0xfe
	add r6, sp, #0x10
	strb r0, [r6, #2]
	mov r0, #0x18
	add r7, sp, #0x10
	str r0, [sp, #8]
	strb r0, [r6, #5]
	mov r0, #0
	str r0, [sp, #0xc]
	add r7, #2
_0223B5A2:
	ldr r0, [sp, #8]
	mov r4, #0
	strb r0, [r6, #4]
	mov r5, #0x28
_0223B5AA:
	add r0, r7, #0
	strb r5, [r6, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0223B5C0
	ldr r0, [sp, #0xc]
	add sp, #0x18
	lsl r0, r0, #2
	add r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
_0223B5C0:
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #4
	blt _0223B5AA
	ldr r0, [sp, #8]
	add r0, #0x38
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _0223B5A2
	ldr r0, _0223B618 ; =ov57_0223BEB0
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _0223B614
	lsr r1, r0, #0x16
	add r0, sp, #0x10
	strh r1, [r0]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r3, _0223B61C ; =gSystem + 0x40
	add r0, #0xe4
	ldrh r2, [r3, #0x20]
	str r0, [sp, #4]
	ldrh r3, [r3, #0x22]
	ldr r0, [r0]
	mov r1, #3
	bl DoesPixelAtScreenXYMatchPtrVal
	cmp r0, #0
	bne _0223B610
	mov r4, #0
	mvn r4, r4
	b _0223B612
_0223B610:
	add r4, #0xc
_0223B612:
	add r0, r4, #0
_0223B614:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0223B618: .word ov57_0223BEB0
_0223B61C: .word gSystem + 0x40
	thumb_func_end ov57_0223B578

