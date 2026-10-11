	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EC4A8
	.public ov102_021EC4CC
	.public ov102_021EC4F8
	.public ov102_021EC514
	.public ov102_021EC530
	.public ov102_021EC54C
	.public ov102_021EC568
	.public ov102_021EC584
	.public ov102_021EC5A0
	.extern ov102_021EC820

	.text

	.text
	thumb_func_start ov102_021EC4A8
ov102_021EC4A8: ; 0x021EC4A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0x1b
	blo _021EC4B6
	bl GF_AssertFail
_021EC4B6:
	mov r1, #0xa
	ldr r2, _021EC4C8 ; =ov102_021EC820
	mul r1, r4
	add r1, r2, r1
	add r0, r5, #0
	mov r2, #2
	bl CopyU16ArrayToStringN
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EC4C8: .word ov102_021EC820
	thumb_func_end ov102_021EC4A8

	thumb_func_start ov102_021EC4CC
ov102_021EC4CC: ; 0x021EC4CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0x1b
	blo _021EC4DC
	bl GF_AssertFail
_021EC4DC:
	mov r0, #0xa
	add r1, r5, #0
	mul r1, r0
	ldr r0, _021EC4F0 ; =ov102_021EC820 + 2
	ldrb r0, [r0, r1]
	str r0, [r4]
	ldr r0, _021EC4F4 ; =ov102_021EC820 + 3
	ldrb r0, [r0, r1]
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EC4F0: .word ov102_021EC820 + 2
_021EC4F4: .word ov102_021EC820 + 3
	thumb_func_end ov102_021EC4CC

	thumb_func_start ov102_021EC4F8
ov102_021EC4F8: ; 0x021EC4F8
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021EC504
	bl GF_AssertFail
_021EC504:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021EC510 ; =ov102_021EC820 + 4
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_021EC510: .word ov102_021EC820 + 4
	thumb_func_end ov102_021EC4F8

	thumb_func_start ov102_021EC514
ov102_021EC514: ; 0x021EC514
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021EC520
	bl GF_AssertFail
_021EC520:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021EC52C ; =ov102_021EC820 + 5
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_021EC52C: .word ov102_021EC820 + 5
	thumb_func_end ov102_021EC514

	thumb_func_start ov102_021EC530
ov102_021EC530: ; 0x021EC530
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021EC53C
	bl GF_AssertFail
_021EC53C:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021EC548 ; =ov102_021EC820 + 6
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_021EC548: .word ov102_021EC820 + 6
	thumb_func_end ov102_021EC530

	thumb_func_start ov102_021EC54C
ov102_021EC54C: ; 0x021EC54C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021EC558
	bl GF_AssertFail
_021EC558:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021EC564 ; =ov102_021EC820 + 7
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_021EC564: .word ov102_021EC820 + 7
	thumb_func_end ov102_021EC54C

	thumb_func_start ov102_021EC568
ov102_021EC568: ; 0x021EC568
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021EC574
	bl GF_AssertFail
_021EC574:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021EC580 ; =ov102_021EC820 + 8
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_021EC580: .word ov102_021EC820 + 8
	thumb_func_end ov102_021EC568

	thumb_func_start ov102_021EC584
ov102_021EC584: ; 0x021EC584
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x1b
	blo _021EC590
	bl GF_AssertFail
_021EC590:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _021EC59C ; =ov102_021EC820 + 9
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_021EC59C: .word ov102_021EC820 + 9
	thumb_func_end ov102_021EC584

	thumb_func_start ov102_021EC5A0
ov102_021EC5A0: ; 0x021EC5A0
	push {r3, r4}
	ldr r4, _021EC5D4 ; =ov102_021EC820
	mov r3, #0
_021EC5A6:
	ldrb r2, [r4, #2]
	cmp r2, r0
	bhi _021EC5C4
	add r2, #0x10
	cmp r0, r2
	bhs _021EC5C4
	ldrb r2, [r4, #3]
	cmp r2, r1
	bhi _021EC5C4
	add r2, #0x10
	cmp r1, r2
	bhs _021EC5C4
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_021EC5C4:
	add r3, r3, #1
	add r4, #0xa
	cmp r3, #0x1b
	blo _021EC5A6
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021EC5D4: .word ov102_021EC820
	thumb_func_end ov102_021EC5A0

