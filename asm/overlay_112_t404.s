#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F2EB0
	.public ov112_021F2EF4
	.public ov112_021F2FAC
	.extern ov112_021F178C
	.extern ov112_021F1838
	.extern ov112_021F1A40
	.extern ov112_021F1B94
	.extern ov112_021F1DC0
	.extern ov112_021F2B80
	.extern ov112_021F2DE4
	.extern ov112_021F2E70
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F2EB0
ov112_021F2EB0: ; 0x021F2EB0
	push {r4, lr}
	add r4, r0, #0
	bne _021F2EBA
	bl GF_AssertFail
_021F2EBA:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _021F2EC4
	bl GF_AssertFail
_021F2EC4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021F2ECE
	bl GF_AssertFail
_021F2ECE:
	ldr r0, [r4, #0x6c]
	bl SpriteSystem_DrawSprites
	bl SpriteSystem_TransferOam
	ldr r0, [r4, #0x14]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021F2EEC ; =0x027E0000
	ldr r1, _021F2EF0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021F2EEC: .word 0x027E0000
_021F2EF0: .word 0x00003FF8
	thumb_func_end ov112_021F2EB0

	thumb_func_start ov112_021F2EF4
ov112_021F2EF4: ; 0x021F2EF4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #4
	bhi _021F2F9C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F2F14: ; jump table
	.short _021F2F1E - _021F2F14 - 2 ; case 0
	.short _021F2F2C - _021F2F14 - 2 ; case 1
	.short _021F2F3E - _021F2F14 - 2 ; case 2
	.short _021F2F70 - _021F2F14 - 2 ; case 3
	.short _021F2F8E - _021F2F14 - 2 ; case 4
_021F2F1E:
	add r0, r6, #0
	bl ov112_021F2DE4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2FA0
_021F2F2C:
	bl ov112_021F1838
	add r0, r5, #0
	bl ov112_021F1A40
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2FA0
_021F2F3E:
	bl ov112_021F1DC0
	cmp r0, #0
	beq _021F2FA0
	add r0, r5, #0
	bl ov112_021F1B94
	add r0, r5, #0
	bl ov112_021F178C
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r0, #0xff
	bic r2, r0
	mov r0, #0xff
	orr r0, r2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov112_021F2B80
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2FA0
_021F2F70:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #4]
	ldr r3, _021F2FA8 ; =0x00007FFF
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F2FA0
_021F2F8E:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F2FA0
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021F2F9C:
	bl GF_AssertFail
_021F2FA0:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021F2FA8: .word 0x00007FFF
	thumb_func_end ov112_021F2EF4

	thumb_func_start ov112_021F2FAC
ov112_021F2FAC: ; 0x021F2FAC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	cmp r1, #0
	beq _021F2FC8
	cmp r1, #1
	beq _021F2FDA
	cmp r1, #2
	beq _021F2FFA
	b _021F300E
_021F2FC8:
	ldr r0, [r0, #0x78]
	bl ManagedSprite_IsAnimated
	cmp r0, #0
	bne _021F3012
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F3012
_021F2FDA:
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F3012
_021F2FFA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021F3012
	add r0, r5, #0
	bl ov112_021F2E70
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021F300E:
	bl GF_AssertFail
_021F3012:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov112_021F2FAC

