	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F7748
	.extern ov18_021F77C0
	.extern ov18_021FB658
	.extern ov18_021FB9A8
	.extern ov18_021FBB0C

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F7748
ov18_021F7748: ; 0x021F7748
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F7780 ; =ov18_021FB9A8
	ldr r1, _021F7784 ; =ov18_021FBB0C
	ldr r2, _021F7788 ; =ov18_021FB658
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021F778C ; =0x00001864
	mov r2, #1
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F77C0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F7780: .word ov18_021FB9A8
_021F7784: .word ov18_021FBB0C
_021F7788: .word ov18_021FB658
_021F778C: .word 0x00001864
	thumb_func_end ov18_021F7748

