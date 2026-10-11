	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA268
	.public ov102_021EB6E0
	.public ov102_021EB77C
	.public ov102_021EB880
	.public ov102_021EB94C
	.public ov102_021EB950

	.text

	thumb_func_start ov102_021EB6E0
ov102_021EB6E0: ; 0x021EB6E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	bl ov102_021EA268
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #2
	add r2, r4, #0
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #0
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #5
	bl ov102_021EB77C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021EB880
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov102_021EB94C
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	sub r3, r2, #4
	bl BgSetPosTextAndCommit
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x10
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	bl ov102_021EB950
	mov r1, #2
	add r2, r1, #0
	ldr r0, _021EB778 ; =0x04000050
	sub r2, #0xc
	bl G2x_SetBlendBrightness_
	add r0, r4, #0
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021EB778: .word 0x04000050
	thumb_func_end ov102_021EB6E0

