	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EC4F8
	.public ov102_021EC514
	.public ov102_021EC530
	.public ov102_021EC54C
	.public ov102_021EC568
	.public ov102_021EC584
	.extern ov102_021EC820

	.text

	.text
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

