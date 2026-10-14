	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222534
	.extern ov13_022208E8
	.extern ov13_022208F8
	.extern ov13_02222638
	.extern ov13_0222269C
	.extern ov13_02222708
	.extern ov13_02222968
	.extern ov13_02222AB0
	.extern ov13_0224DD00
	.extern ov13_0224DD02

	.text

	.text
	thumb_func_start ov13_02222534
ov13_02222534: ; 0x02222534
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r7, r1, #0
	add r4, r3, #0
	add r1, r5, #0
	add r6, r0, #0
	bl ov13_02222708
	strb r0, [r4]
	add r0, r5, #0
	bl ov13_022208E8
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _0222255C
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_0222255C:
	bl ov13_02222AB0
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [sp, #0x28]
	add r1, sp, #0
	mov r2, #2
	bl ov13_02222968
	ldr r0, _022225A8 ; =ov13_0224DD00
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl ov13_02222968
	ldr r0, _022225AC ; =ov13_0224DD02
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl ov13_02222968
	ldr r2, [sp, #0x30]
	ldr r1, _022225A8 ; =ov13_0224DD00
	add r0, sp, #4
	add r2, r2, #2
	add r3, r5, #0
	bl ov13_02222638
	add r0, sp, #4
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl ov13_0222269C
	ldr r0, [sp, #0xc]
	bl ov13_022208F8
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022225A8: .word ov13_0224DD00
_022225AC: .word ov13_0224DD02
	thumb_func_end ov13_02222534

