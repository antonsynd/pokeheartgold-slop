	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221CD24
	.extern ov05_0221EAAC
	.extern ov05_0221EBE0

	.text

	.text
	thumb_func_start ov05_0221CD24
ov05_0221CD24: ; 0x0221CD24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	str r1, [sp]
	ldr r1, [r5]
	mov r0, #0x40
	ldr r1, [r1, #0x24]
	add r4, r2, #0
	bl GF_CreateVramTransferManager
	ldr r0, [r5]
	ldr r0, [r0, #0x24]
	bl SpriteSystem_Alloc
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl SpriteManager_New
	mov r1, #0x65
	lsl r1, r1, #2
	add r2, sp, #0x18
	ldr r3, _0221CDBC ; =ov05_0221EBE0
	str r0, [r5, r1]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _0221CDC0 ; =ov05_0221EAAC
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r6, #0
	str r0, [r2]
	mov r0, #0x65
	lsl r0, r0, #2
	str r4, [sp, #4]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	add r2, r7, #0
	mov r3, #0x10
	bl SpriteSystem_Init
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl SpriteSystem_InitSprites
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [sp]
	bl SpriteSystem_InitManagerWithCapacities
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221CDBC: .word ov05_0221EBE0
_0221CDC0: .word ov05_0221EAAC
	thumb_func_end ov05_0221CD24

