	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E7288
	.extern ov68_021E71C4
	.extern ov68_021E7224

	.text

	.text
	thumb_func_start ov68_021E7288
ov68_021E7288: ; 0x021E7288
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl NNS_G3dInit
	bl G3X_Init
	bl G3X_InitMtxStack
	ldr r1, _021E7330 ; =0x04000060
	ldr r2, _021E7334 ; =0xFFFFCFFD
	ldrh r0, [r1]
	and r0, r2
	strh r0, [r1]
	ldrh r3, [r1]
	ldr r0, _021E7338 ; =0x0000CFFB
	and r3, r0
	strh r3, [r1]
	add r3, r2, #2
	ldrh r5, [r1]
	add r2, r2, #2
	sub r0, #0x1c
	and r5, r3
	mov r3, #8
	orr r3, r5
	strh r3, [r1]
	ldrh r3, [r1]
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r1]
	ldrh r2, [r1]
	and r0, r2
	strh r0, [r1]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _021E733C ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _021E7340 ; =0x04000540
	mov r0, #2
	str r0, [r1]
	ldr r0, _021E7344 ; =0xBFFF0000
	mov r2, #0x1c
	str r0, [r1, #0x40]
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0x55
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0x42
	bl ov68_021E71C4
	ldr r1, [r4]
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r1, [r1]
	add r0, r4, r0
	mov r2, #0x42
	bl ov68_021E7224
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r1, _021E7348 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7330: .word 0x04000060
_021E7334: .word 0xFFFFCFFD
_021E7338: .word 0x0000CFFB
_021E733C: .word 0x00007FFF
_021E7340: .word 0x04000540
_021E7344: .word 0xBFFF0000
_021E7348: .word 0x04000008
	thumb_func_end ov68_021E7288

