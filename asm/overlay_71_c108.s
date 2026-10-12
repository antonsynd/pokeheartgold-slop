	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224926C
	.extern ov71_02247704
	.extern ov71_02247730
	.extern ov71_0224780C
	.extern ov71_0224782C
	.extern ov71_02248FC8
	.extern ov71_02249004
	.extern ov71_022492FC

	.text

	.text
	thumb_func_start ov71_0224926C
ov71_0224926C: ; 0x0224926C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	bl SysTask_GetData
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x78]
	add r0, sp, #0
	strh r1, [r0, #4]
	ldrh r1, [r0, #4]
	strh r1, [r0, #2]
	strh r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov71_0224782C
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov71_0224780C
	ldr r1, _022492F4 ; =0x000058CC
	mov r0, #2
	lsl r0, r0, #0x12
	str r1, [r4, #0x2c]
	sub r0, r1, r0
	str r0, [r4, #0x28]
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x14
	add r0, #0x80
	str r3, [r0]
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_02248FC8
	mov r2, #0x56
	ldrsh r2, [r4, r2]
	add r0, r4, #0
	mov r1, #1
	neg r2, r2
	mov r3, #0x1e
	bl ov71_02249004
	mov r1, #2
	add r2, r1, #0
	add r0, r4, #0
	add r2, #0xfe
	mov r3, #0x32
	bl ov71_02249004
	mov r1, #2
	ldr r0, [r4]
	lsl r1, r1, #0xc
	bl ov71_02247730
	ldr r0, [r4]
	mov r1, #1
	bl ov71_02247704
	ldr r1, _022492F8 ; =ov71_022492FC
	add r0, r5, #0
	bl SysTask_SetFunc
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022492F4: .word 0x000058CC
_022492F8: .word ov71_022492FC
	thumb_func_end ov71_0224926C

