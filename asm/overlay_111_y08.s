	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E5CB4
	.extern ov111_021E6BD8

	.text

	.text
	thumb_func_start ov111_021E5CB4
ov111_021E5CB4: ; 0x021E5CB4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5CD0 ; =ov111_021E6BD8
	add r3, sp, #0
	mov r2, #5
_021E5CBE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5CBE
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5CD0: .word ov111_021E6BD8
	thumb_func_end ov111_021E5CB4

