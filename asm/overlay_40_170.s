	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_02230944
	.public ov40_0223992C
	.public ov40_02239954
	.public ov40_022453A0

	.text

	thumb_func_start ov40_0223992C
ov40_0223992C: ; 0x0223992C
	push {r3, r4, r5}
	sub sp, #0xc
	ldr r5, _02239950 ; =ov40_022453A0
	add r2, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	add r3, r4, #0
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r2, #0x14]
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	str r0, [r2, #0x20]
	add sp, #0xc
	pop {r3, r4, r5}
	bx lr
	nop
_02239950: .word ov40_022453A0
	thumb_func_end ov40_0223992C

	thumb_func_start ov40_02239954
ov40_02239954: ; 0x02239954
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _022399B6
	cmp r0, #0
	beq _0223996C
	cmp r0, #1
	beq _0223998A
	b _022399A8
_0223996C:
	add r0, r5, #0
	bl ov40_02230944
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	str r1, [r4, #0xc]
	add r0, r5, #0
	mov r1, #4
	bl ov40_0222BF80
	pop {r3, r4, r5, pc}
_0223998A:
	add r0, r5, #0
	bl ov40_02230944
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl _s32_div_f
	str r1, [r4, #0x14]
	add r0, r5, #0
	mov r1, #4
	bl ov40_0222BF80
	pop {r3, r4, r5, pc}
_022399A8:
	add r0, r5, #0
	bl ov40_02230944
	add r0, r5, #0
	mov r1, #7
	bl ov40_0222BF80
_022399B6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_02239954

