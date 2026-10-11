	.include "asm/macros.inc"
	.include "overlay_41_02248ED4.inc"
	.include "global.inc"
	.public ov41_02249480
	.extern ov41_022494F4

    .text

	.text
	thumb_func_start ov41_02249480
ov41_02249480: ; 0x02249480
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r0, _022494F0 ; =ov41_022494F4
	mov r1, #0x2c
	mov r2, #0
	mov r3, #0xd
	bl CreateSysTaskAndEnvironment
	bl SysTask_GetData
	add r4, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #8
	str r0, [r4]
	ldr r0, [r5, #0x10]
	add r2, sp, #4
	str r0, [r4, #4]
	str r6, [r4, #0x20]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #8]
	add r0, #0x3c
	str r0, [r4, #0x24]
	add r0, r5, #0
	add r0, #0x30
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x10]
	bl ov41_02249B44
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #8]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add r1, r6, #0
	bl _s32_div_f
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022494F0: .word ov41_022494F4
	thumb_func_end ov41_02249480

