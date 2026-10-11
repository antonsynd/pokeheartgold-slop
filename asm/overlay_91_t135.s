	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225F414
	.extern ov91_02261D84

	.text

	.text
	thumb_func_start ov91_0225F414
ov91_0225F414: ; 0x0225F414
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0225F430 ; =ov91_02261D84
	add r3, sp, #0
	mov r2, #5
_0225F41E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225F41E
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_0225F430: .word ov91_02261D84
	thumb_func_end ov91_0225F414

