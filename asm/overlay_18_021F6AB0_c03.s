	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F6E2C

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F6E2C
ov18_021F6E2C: ; 0x021F6E2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F6E50 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r1, r0
	bne _021F6E4C
	ldr r0, _021F6E54 ; =0x00001864
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
_021F6E4C:
	pop {r4, pc}
	nop
_021F6E50: .word gSystem
_021F6E54: .word 0x00001864
	thumb_func_end ov18_021F6E2C

