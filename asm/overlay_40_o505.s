	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022437C0
	.extern ov40_0224355C
	.extern ov40_02243614
	.extern ov40_02243E80
	.extern ov40_02243EEC
	.extern ov40_02243F38
	.extern ov40_02244054

	.text

	.text
	thumb_func_start ov40_022437C0
ov40_022437C0: ; 0x022437C0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	mov r2, #0x7d
	lsl r2, r2, #2
	add r5, r0, #0
	ldr r0, [r4, r2]
	cmp r0, #1
	beq _022437D2
	b _02243950
_022437D2:
	add r0, r2, #0
	add r0, #0xa4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _022437E2
	mov r0, #1
	add r2, #0xa4
	str r0, [r4, r2]
_022437E2:
	cmp r1, #0
	beq _022437E8
	b _02243950
_022437E8:
	cmp r5, #0xb
	bhi _0224381C
	mov r0, #0x1c
	mul r0, r5
	add r2, r4, r0
	ldr r0, [r2, #8]
	cmp r0, #1
	bne _02243806
	mov r0, #0xa7
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
	b _02243814
_02243806:
	mov r0, #0xa7
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r2, #4]
	add r0, r0, #4
	str r1, [r4, r0]
_02243814:
	ldr r0, _02243954 ; =0x0000057B
	bl PlaySE
	pop {r3, r4, r5, r6, r7, pc}
_0224381C:
	cmp r5, #0x16
	bne _02243830
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r4, r0]
	b _02243862
_02243830:
	cmp r5, #0x17
	bne _02243844
	mov r0, #0x6e
	mov r1, #3
	lsl r0, r0, #2
	strh r1, [r4, r0]
	mov r1, #2
	add r0, r0, #2
	strh r1, [r4, r0]
	b _02243862
_02243844:
	add r0, r5, #0
	sub r0, #0xc
	mov r1, #5
	bl _u32_div_f
	mov r0, #0x6e
	lsl r0, r0, #2
	strh r1, [r4, r0]
	add r0, r5, #0
	sub r0, #0xc
	mov r1, #5
	bl _u32_div_f
	ldr r1, _02243958 ; =0x000001BA
	strh r0, [r4, r1]
_02243862:
	cmp r5, #0xc
	blo _02243934
	cmp r5, #0x15
	bhi _02243934
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02243950
	ldr r0, _02243954 ; =0x0000057B
	bl PlaySE
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r7, [r4, r0]
	mov r0, #0x1c
	add r6, r7, #0
	mul r6, r0
	add r0, r5, #0
	sub r0, #0xb
	str r0, [r4, r6]
	add r1, r4, r6
	ldr r0, [r4, r6]
	ldr r1, [r1, #8]
	bl ov40_02244054
	add r1, r0, #0
	add r0, r4, r6
	ldr r0, [r0, #0xc]
	bl ManagedSprite_SetAnim
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov40_02243E80
	sub r5, #0xc
	add r0, r4, #0
	add r1, r5, #0
	bl ov40_02243EEC
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov40_02243E80
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov40_02243E80
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov40_02243F38
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	bl ManagedSprite_SetAnim
	add r0, r4, r6
	ldr r2, [r0, #4]
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	add r1, r7, #1
	cmp r1, r3
	bne _02243904
	add r1, r0, #0
	mov r2, #1
	add r1, #0x98
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x9c
	str r2, [r4, r1]
	add r0, #0xa0
	str r2, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02243904:
	mov r3, #0x1c
	mul r3, r1
	add r3, r4, r3
	ldr r3, [r3, #4]
	cmp r2, r3
	beq _02243926
	add r1, r0, #0
	mov r2, #1
	add r1, #0x98
	str r2, [r4, r1]
	add r1, r0, #0
	add r1, #0x9c
	str r3, [r4, r1]
	mov r1, #0
	add r0, #0xa0
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02243926:
	add r2, r0, #0
	mov r3, #2
	add r2, #0x98
	str r3, [r4, r2]
	add r0, #0x9c
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02243934:
	cmp r5, #0x16
	ldr r0, _02243954 ; =0x0000057B
	bne _02243946
	bl PlaySE
	add r0, r4, #0
	bl ov40_02243614
	pop {r3, r4, r5, r6, r7, pc}
_02243946:
	bl PlaySE
	add r0, r4, #0
	bl ov40_0224355C
_02243950:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243954: .word 0x0000057B
_02243958: .word 0x000001BA
	thumb_func_end ov40_022437C0

