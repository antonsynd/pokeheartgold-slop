#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021F995C
	.public ov15_021F9984
	.public ov15_021F99A4
	.extern ov15_02200518
	.extern ov15_02200618
	.extern ov15_022006CC
	.extern ov15_022006E8
	.extern ov15_02200704
	.extern ov15_02200720
	.extern ov15_0220073C
	.extern ov15_02200758
	.extern ov15_02200774

	.text

	.text
	thumb_func_start ov15_021F995C
ov15_021F995C: ; 0x021F995C
	push {r3, lr}
	ldr r0, [r0]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	bl SpriteSystem_TransferOam
	ldr r3, _021F997C ; =0x027E0000
	ldr r1, _021F9980 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021F997C: .word 0x027E0000
_021F9980: .word 0x00003FF8
	thumb_func_end ov15_021F995C

	thumb_func_start ov15_021F9984
ov15_021F9984: ; 0x021F9984
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F99A0 ; =ov15_02200618
	add r3, sp, #0
	mov r2, #5
_021F998E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F998E
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F99A0: .word ov15_02200618
	thumb_func_end ov15_021F9984

	thumb_func_start ov15_021F99A4
ov15_021F99A4: ; 0x021F99A4
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _021F9A68 ; =ov15_02200518
	add r3, sp, #4
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _021F9A6C ; =ov15_022006CC
	add r0, r4, #0
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021F9A70 ; =ov15_022006E8
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021F9A74 ; =ov15_02200704
	add r0, r4, #0
	mov r1, #3
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #6
	bl BG_ClearCharDataRange
	ldr r2, _021F9A78 ; =ov15_02200720
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021F9A7C ; =ov15_0220073C
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021F9A80 ; =ov15_02200758
	add r0, r4, #0
	mov r1, #6
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021F9A84 ; =ov15_02200774
	add r0, r4, #0
	mov r1, #7
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #6
	bl BG_ClearCharDataRange
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	mov r3, #6
	bl BG_ClearCharDataRange
	mov r1, #0
	ldr r0, _021F9A88 ; =0x04000050
	mov r2, #8
	add r3, r1, #0
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
_021F9A68: .word ov15_02200518
_021F9A6C: .word ov15_022006CC
_021F9A70: .word ov15_022006E8
_021F9A74: .word ov15_02200704
_021F9A78: .word ov15_02200720
_021F9A7C: .word ov15_0220073C
_021F9A80: .word ov15_02200758
_021F9A84: .word ov15_02200774
_021F9A88: .word 0x04000050
	thumb_func_end ov15_021F99A4

