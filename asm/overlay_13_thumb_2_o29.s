	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222328
	.public ov13_02222394
	.extern _0224CF98
	.extern ov13_02222474
	.extern ov13_022224CC
	.extern ov13_022227A0
	.extern ov13_02222968
	.extern ov13_02222978
	.extern ov13_02222A1C
	.extern ov13_02222A44
	.extern ov13_02222A9C
	.extern ov13_02245A20
	.extern ov13_0224CFB8

	.text

	.text
	thumb_func_start ov13_02222328
ov13_02222328: ; 0x02222328
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r0, _02222388 ; =_0224CF98
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	ldr r2, _0222238C ; =0x000005DC
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl ov13_02222978
	add r5, #0x10
	add r0, sp, #0xc
	add r1, r5, #0
	mov r2, #8
	bl ov13_02222968
	ldr r0, _02222390 ; =ov13_02245A20
	bl ov13_02222A9C
	add r3, r0, #0
	ldr r2, _02222390 ; =ov13_02245A20
	add r0, sp, #0xc
	mov r1, #8
	bl ov13_022227A0
	mov r2, #0
	mov r1, #3
	str r2, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0xc
	add r3, r2, #0
	bl ov13_02222474
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl ov13_022224CC
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02222388: .word _0224CF98
_0222238C: .word 0x000005DC
_02222390: .word ov13_02245A20
	thumb_func_end ov13_02222328

	thumb_func_start ov13_02222394
ov13_02222394: ; 0x02222394
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02222418 ; =ov13_0224CFB8
	add r5, r0, #0
	mov r0, #0x1d
	ldrsb r0, [r1, r0]
	ldr r1, _0222241C ; =_0224CF98
	mov r6, #0
	strb r0, [r5]
	mov r0, #1
	strb r0, [r5, #1]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x24]
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #6
	add r2, r4, #0
	bl ov13_02222968
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl ov13_02222A44
	strh r0, [r5, #2]
	add r0, r4, #6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsl r0, r0, #0x11
	asr r7, r0, #0x10
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl ov13_02222A44
	strh r0, [r5, #4]
	add r0, r6, r7
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x60
	strb r0, [r5, r7]
	add r4, r5, r7
	mov r0, #0
	strb r0, [r4, #1]
	bl ov13_02222A44
	strh r0, [r4, #4]
	mov r0, #0xe
	bl ov13_02222A1C
	str r0, [sp]
	add r0, r4, #6
	add r1, sp, #0
	mov r2, #4
	bl ov13_02222968
	mov r0, #4
	bl ov13_02222A44
	add r6, #0xa
	strh r0, [r4, #2]
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02222418: .word ov13_0224CFB8
_0222241C: .word _0224CF98
	thumb_func_end ov13_02222394

