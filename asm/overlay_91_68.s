	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02260254
	.public ov91_02260298
	.public ov91_0226274C

	.text

	thumb_func_start ov91_02260254
ov91_02260254: ; 0x02260254
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02260290 ; =0x0000F222
	add r4, r1, #0
	bl GF_DegreeToSinCosIdx
	add r1, r0, #0
	ldr r0, _02260294 ; =0x00000E38
	sub r2, r4, r0
	mov r0, #0x5a
	mul r0, r2
	bl _u32_div_f
	mov r1, #0x2d
	lsl r1, r1, #0xe
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x5a
	bl _s32_div_f
	mov r1, #0x2d
	lsl r1, r1, #0xe
	sub r1, r1, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_02018198
	pop {r3, r4, r5, pc}
	nop
_02260290: .word 0x0000F222
_02260294: .word 0x00000E38
	thumb_func_end ov91_02260254

	thumb_func_start ov91_02260298
ov91_02260298: ; 0x02260298
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #6
	blo _022602A6
	bl GF_AssertFail
_022602A6:
	mov r2, #0x21
	lsl r2, r2, #4
	ldrh r1, [r5, r2]
	cmp r1, r4
	beq _02260314
	ldr r0, _02260318 ; =ov91_0226274C
	sub r2, #0x78
	ldrb r3, [r0, r1]
	mov r0, #0x78
	mul r0, r3
	add r3, r5, r2
	mov r2, #0x14
	mul r2, r1
	add r0, r5, r0
	add r1, r3, r2
	bl sub_020181E0
	mov r0, #0x66
	lsl r0, r0, #2
	add r6, r5, r0
	mov r0, #0x14
	add r7, r4, #0
	mul r7, r0
	ldr r0, _02260318 ; =ov91_0226274C
	ldrb r1, [r0, r4]
	mov r0, #0x78
	mul r0, r1
	str r0, [sp]
	add r0, r5, r0
	add r1, r6, r7
	bl sub_020181D4
	add r0, r6, r7
	mov r1, #0
	bl sub_02018198
	mov r0, #0x21
	lsl r0, r0, #4
	ldrh r1, [r5, r0]
	ldr r0, _02260318 ; =ov91_0226274C
	ldrb r1, [r0, r1]
	mov r0, #0x78
	mul r0, r1
	add r0, r5, r0
	mov r1, #0
	bl sub_020182A0
	ldr r0, [sp]
	mov r1, #1
	add r0, r5, r0
	bl sub_020182A0
	mov r0, #0x21
	lsl r0, r0, #4
	strh r4, [r5, r0]
_02260314:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260318: .word ov91_0226274C
	thumb_func_end ov91_02260298

