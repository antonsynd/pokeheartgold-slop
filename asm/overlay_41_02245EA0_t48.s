	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"
	.public ov41_022466D0
	.extern ov41_0224C06C

    .text

	.text
	thumb_func_start ov41_022466D0
ov41_022466D0: ; 0x022466D0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _022466EC ; =ov41_0224C06C
	add r3, sp, #0
	mov r2, #5
_022466DA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022466DA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_022466EC: .word ov41_0224C06C
	thumb_func_end ov41_022466D0

