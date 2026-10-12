	.include "asm/macros.inc"
	.include "overlay_67.inc"
	.include "global.inc"
	.public ov67_021E5BC0
	.public ov67_021E5BE0
	.extern ov67_021E6A00
	.extern ov67_021E6E38

	.text

	.text
	thumb_func_start ov67_021E5BC0
ov67_021E5BC0: ; 0x021E5BC0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5BDC ; =ov67_021E6E38
	add r3, sp, #0
	mov r2, #5
_021E5BCA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5BCA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5BDC: .word ov67_021E6E38
	thumb_func_end ov67_021E5BC0

	thumb_func_start ov67_021E5BE0
ov67_021E5BE0: ; 0x021E5BE0
	push {r4, lr}
	add r4, r0, #0
	bl ov67_021E6A00
	ldr r0, [r4, #0x10]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E5BFC ; =0x027E0000
	ldr r1, _021E5C00 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E5BFC: .word 0x027E0000
_021E5C00: .word 0x00003FF8
	thumb_func_end ov67_021E5BE0

