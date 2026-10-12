	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E6854
	.public ov85_021E6874
	.extern ov85_021EA700

	.text

	.text
	thumb_func_start ov85_021E6854
ov85_021E6854: ; 0x021E6854
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E6870 ; =ov85_021EA700
	add r3, sp, #0
	mov r2, #5
_021E685E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E685E
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E6870: .word ov85_021EA700
	thumb_func_end ov85_021E6854

	thumb_func_start ov85_021E6874
ov85_021E6874: ; 0x021E6874
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #2
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, _021E6924 ; =0x04000008
	mov r4, #3
	ldrh r1, [r0]
	mov r2, #1
	mov r3, #2
	bic r1, r4
	orr r1, r2
	strh r1, [r0]
	ldrh r1, [r0, #2]
	mov r5, #3
	bic r1, r4
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	bic r1, r4
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r4
	orr r1, r5
	strh r1, [r0, #6]
	ldr r1, _021E6928 ; =0x04001008
	ldrh r6, [r1]
	bic r6, r4
	strh r6, [r1]
	ldrh r6, [r1, #2]
	bic r6, r4
	orr r2, r6
	strh r2, [r1, #2]
	ldrh r2, [r1, #4]
	bic r2, r4
	orr r2, r3
	strh r2, [r1, #4]
	ldrh r2, [r1, #6]
	bic r2, r4
	orr r2, r5
	strh r2, [r1, #6]
	mov r1, #0xa
	str r1, [sp]
	add r0, #0x48
	mov r1, #4
	mov r2, #0x28
	mov r3, #0xb
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E6924: .word 0x04000008
_021E6928: .word 0x04001008
	thumb_func_end ov85_021E6874

