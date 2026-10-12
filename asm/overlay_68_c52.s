	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6DDC
	.extern ov68_021E7C18
	.extern ov68_021E7C2C
	.extern ov68_021E7CD0

	.text

	.text
	thumb_func_start ov68_021E6DDC
ov68_021E6DDC: ; 0x021E6DDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	ldr r3, _021E6E78 ; =ov68_021E7C2C
	add r2, sp, #0x34
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x40
	mov r1, #0x42
	bl GF_CreateVramTransferManager
	mov r0, #0x42
	bl SpriteSystem_Alloc
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl SpriteManager_New
	mov r7, #0x12
	lsl r7, r7, #4
	add r2, sp, #0x14
	ldr r3, _021E6E7C ; =ov68_021E7CD0
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021E6E80 ; =ov68_021E7C18
	stmia r2!, {r0, r1}
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [r3]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl SpriteSystem_Init
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xc
	bl SpriteSystem_InitSprites
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0x34
	bl SpriteSystem_InitManagerWithCapacities
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021E6E78: .word ov68_021E7C2C
_021E6E7C: .word ov68_021E7CD0
_021E6E80: .word ov68_021E7C18
	thumb_func_end ov68_021E6DDC

