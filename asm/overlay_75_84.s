	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02249884
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02249884
ov75_02249884: ; 0x02249884
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	add r5, r0, #0
	add r7, r1, #0
	str r4, [sp, #4]
_02249890:
	mov r0, #0
	str r0, [r7]
	str r0, [sp]
	b _022498CC
_02249898:
	cmp r0, #0
	bne _022498A4
	bne _022498B2
	bl GF_AssertFail
	b _022498B2
_022498A4:
	add r4, r4, #1
_022498A6:
	ldrsb r0, [r5, r4]
	add r6, r5, r4
	cmp r0, #0x30
	blt _02249898
	cmp r0, #0x39
	bgt _02249898
_022498B2:
	ldr r1, [r7]
	mov r0, #0xa
	mul r0, r1
	str r0, [r7]
	mov r1, #0
	ldrsb r1, [r6, r1]
	add r4, r4, #1
	sub r1, #0x30
	add r0, r0, r1
	str r0, [r7]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
_022498CC:
	ldr r0, [sp]
	cmp r0, #4
	blt _022498A6
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02249890
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov75_02249884

