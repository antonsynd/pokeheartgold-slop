	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public EasyChat_Main

	.text

	thumb_func_start EasyChat_Main
EasyChat_Main: ; 0x021E77B8
	push {r4, lr}
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, _021E77F4 ; =gSystem
	ldr r1, [r0, #0x48]
	strh r1, [r4, #0x30]
	ldr r1, [r0, #0x44]
	strh r1, [r4, #0x32]
	ldr r0, [r0, #0x4c]
	strh r0, [r4, #0x34]
	ldr r0, [r4, #0x40]
	bl TouchHitboxController_IsTriggered
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _021E77E6
	add r0, r4, #0
	add r4, #0x28
	add r1, r4, #0
	blx r2
	mov r0, #0
	pop {r4, pc}
_021E77E6:
	add r1, r4, #0
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, #0x1c
	blx r2
	pop {r4, pc}
	nop
_021E77F4: .word gSystem
	thumb_func_end EasyChat_Main

