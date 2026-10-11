	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222DE40

	.text

	thumb_func_start ov40_0222DE40
ov40_0222DE40: ; 0x0222DE40
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x8a
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222DE9C
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	add r0, r4, r0
	bl ClearWindowTilemapAndCopyToVram
	ldr r0, _0222DEA0 ; =0x000008A4
	add r0, r4, r0
	bl RemoveWindow
	ldr r0, [r4, #0x24]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #6
	mov r1, #2
	bl SetBgPriority
	mov r0, #8
	str r0, [sp]
	ldr r0, _0222DEA4 ; =0x04000050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #8
	str r0, [sp]
	ldr r0, _0222DEA8 ; =0x04001050
	mov r1, #4
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
_0222DE9C:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0222DEA0: .word 0x000008A4
_0222DEA4: .word 0x04000050
_0222DEA8: .word 0x04001050
	thumb_func_end ov40_0222DE40

