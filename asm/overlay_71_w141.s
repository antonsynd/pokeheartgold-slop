	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224A5C4
	.extern ov71_022476C4
	.extern ov71_022476D4
	.extern ov71_022476EC
	.extern ov71_0224A694
	.extern ov71_0224A6D8
	.extern ov71_0224A7D0

	.text

	.text
	thumb_func_start ov71_0224A5C4
ov71_0224A5C4: ; 0x0224A5C4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	str r0, [r4]
	ldr r1, [r0, #0x2c]
	ldr r2, _0224A664 ; =0xFFFFD870
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x28]
	ldr r1, _0224A668 ; =0x003D6C00
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r1, _0224A66C ; =0xFFE44000
	str r1, [r4, #0x18]
	add r1, r4, #0
	add r1, #0x78
	strh r2, [r1]
	add r1, r4, #0
	ldr r2, _0224A670 ; =0xFFFFF550
	add r1, #0x7a
	strh r2, [r1]
	ldr r1, _0224A674 ; =0xFFFEF2C6
	str r1, [r4, #0x3c]
	ldr r1, _0224A678 ; =0x0000936D
	str r1, [r4, #0x40]
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	mov r1, #2
	str r0, [r4, #0x74]
	lsl r1, r1, #0xc
	strh r1, [r4, #0x34]
	ldr r1, _0224A67C ; =0xFFFFE000
	strh r1, [r4, #0x36]
	strh r0, [r4, #0x38]
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov71_022476EC
	mov r3, #2
	lsl r3, r3, #8
	mov r1, #0x4a
	mov r2, #0x63
	str r3, [r4, #0x5c]
	lsl r0, r3, #2
	str r0, [r4, #0x44]
	str r0, [r4, #0x48]
	mov r0, #0
	str r0, [r4, #0x68]
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	lsl r1, r1, #0xa
	lsl r2, r2, #0xa
	lsl r3, r3, #3
	bl ov71_0224A694
	add r0, r4, #0
	bl ov71_0224A6D8
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x34
	bl ov71_022476D4
	ldr r0, _0224A680 ; =ov71_0224A7D0
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224A664: .word 0xFFFFD870
_0224A668: .word 0x003D6C00
_0224A66C: .word 0xFFE44000
_0224A670: .word 0xFFFFF550
_0224A674: .word 0xFFFEF2C6
_0224A678: .word 0x0000936D
_0224A67C: .word 0xFFFFE000
_0224A680: .word ov71_0224A7D0
	thumb_func_end ov71_0224A5C4

