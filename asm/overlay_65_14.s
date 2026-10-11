#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221CE1C
	.public ov65_0221CE98
	.public ov65_0221CEB8
	.public ov65_0221FD58
	.public ov65_0221FD80
	.public ov65_0221FD9C
	.public ov65_0221FDB8
	.public ov65_0221FDD4
	.public ov65_0221FDF0
	.public ov65_0221FE0C
	.public ov65_0221FE28
	.public ov65_0221FE44

	.text

	thumb_func_start ov65_0221CE1C
ov65_0221CE1C: ; 0x0221CE1C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl DoScheduledBgGpuUpdates
	ldr r0, _0221CE84 ; =0x0000211C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0221CE6C
	sub r4, r0, #1
	ldr r0, _0221CE88 ; =0x000007FC
	mov r2, #0x32
	lsl r2, r2, #6
	add r1, r4, #0
	add r0, r5, r0
	mul r1, r2
	add r0, r0, r1
	bl GXS_LoadOBJ
	lsl r1, r4, #4
	mov r0, #0x20
	add r2, r5, r1
	str r0, [sp]
	mov r0, #0x1a
	add r3, r4, #2
	ldr r1, _0221CE8C ; =0x000020FC
	str r0, [sp, #4]
	ldrh r0, [r2, r1]
	add r1, r1, #4
	ldrh r1, [r2, r1]
	mov r2, #5
	lsl r3, r3, #5
	bl GfGfxLoader_GXLoadPal
	ldr r0, _0221CE84 ; =0x0000211C
	mov r1, #0
	str r1, [r5, r0]
_0221CE6C:
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _0221CE90 ; =0x027E0000
	ldr r1, _0221CE94 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221CE84: .word 0x0000211C
_0221CE88: .word 0x000007FC
_0221CE8C: .word 0x000020FC
_0221CE90: .word 0x027E0000
_0221CE94: .word 0x00003FF8
	thumb_func_end ov65_0221CE1C

	thumb_func_start ov65_0221CE98
ov65_0221CE98: ; 0x0221CE98
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0221CEB4 ; =ov65_0221FE44
	add r3, sp, #0
	mov r2, #5
_0221CEA2:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221CEA2
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_0221CEB4: .word ov65_0221FE44
	thumb_func_end ov65_0221CE98

	thumb_func_start ov65_0221CEB8
ov65_0221CEB8: ; 0x0221CEB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xd4
	ldr r4, _0221D0C0 ; =ov65_0221FD58
	add r3, sp, #0xc4
	add r5, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _0221D0C4 ; =ov65_0221FDF0
	add r3, sp, #0xa8
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0
	str r0, [r3]
	add r0, r5, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r4, _0221D0C8 ; =ov65_0221FDB8
	add r3, sp, #0x8c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #1
	str r0, [r3]
	add r0, r5, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r4, _0221D0CC ; =ov65_0221FE0C
	add r3, sp, #0x70
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #2
	str r0, [r3]
	add r0, r5, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r4, _0221D0D0 ; =ov65_0221FE28
	add r3, sp, #0x54
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #3
	str r0, [r3]
	add r0, r5, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r4, _0221D0D4 ; =ov65_0221FD80
	add r3, sp, #0x38
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	add r0, r5, #0
	mov r1, #4
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r4, _0221D0D8 ; =ov65_0221FD9C
	add r3, sp, #0x1c
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #5
	str r0, [r3]
	add r0, r5, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r4, _0221D0DC ; =ov65_0221FDD4
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #6
	str r0, [r3]
	add r0, r5, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x1a
	bl BG_ClearCharDataRange
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x1a
	bl BG_ClearCharDataRange
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x1a
	bl BG_ClearCharDataRange
	mov r4, #0
	mov r6, #3
	add r7, r4, #0
_0221CFFC:
	lsl r1, r4, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl BgSetPosTextAndCommit
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r4, r4, #1
	cmp r4, #4
	blt _0221CFFC
	mov r0, #0
	add r1, r0, #0
	bl ToggleBgLayer
	mov r0, #1
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #2
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #3
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #4
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #5
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #1
	lsl r0, r0, #0x1a
	add r3, r0, #0
	ldr r2, [r0]
	ldr r1, _0221D0E0 ; =0xFFFF1FFF
	add r3, #0x48
	and r1, r2
	str r1, [r0]
	ldrh r4, [r3]
	mov r1, #0x3f
	mov r2, #0x1f
	bic r4, r1
	orr r4, r2
	strh r4, [r3]
	add r3, r0, #0
	add r3, #0x4a
	ldrh r4, [r3]
	bic r4, r1
	orr r2, r4
	mov r1, #0x20
	orr r1, r2
	strh r1, [r3]
	add r1, r0, #0
	mov r2, #0xf
	lsl r2, r2, #0xc
	add r1, #0x40
	strh r2, [r1]
	ldr r2, _0221D0E4 ; =0x04000304
	mov r1, #0x10
	add r0, #0x44
	strh r1, [r0]
	ldrh r1, [r2]
	ldr r0, _0221D0E8 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2]
	add sp, #0xd4
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221D0C0: .word ov65_0221FD58
_0221D0C4: .word ov65_0221FDF0
_0221D0C8: .word ov65_0221FDB8
_0221D0CC: .word ov65_0221FE0C
_0221D0D0: .word ov65_0221FE28
_0221D0D4: .word ov65_0221FD80
_0221D0D8: .word ov65_0221FD9C
_0221D0DC: .word ov65_0221FDD4
_0221D0E0: .word 0xFFFF1FFF
_0221D0E4: .word 0x04000304
_0221D0E8: .word 0xFFFF7FFF
	thumb_func_end ov65_0221CEB8

