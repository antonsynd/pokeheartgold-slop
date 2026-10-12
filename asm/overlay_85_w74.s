	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E6ECC
	.extern ov85_021EA56C
	.extern ov85_021EA594
	.extern ov85_021EA6B8

	.text

	.text
	thumb_func_start ov85_021E6ECC
ov85_021E6ECC: ; 0x021E6ECC
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _021E6F58 ; =ov85_021EA6B8
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021E6F5C ; =ov85_021EA56C
	add r2, sp, #0x18
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	mov r0, #0x66
	bl SpriteSystem_Alloc
	ldr r1, _021E6F60 ; =0x00000D94
	add r2, sp, #0x18
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, sp, #0x2c
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _021E6F64 ; =ov85_021EA594
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _021E6F60 ; =0x00000D94
	ldr r0, [r4, r0]
	bl SpriteManager_New
	ldr r1, _021E6F68 ; =0x00000D98
	mov r2, #0xff
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl SpriteSystem_InitSprites
	cmp r0, #0
	bne _021E6F3C
	bl GF_AssertFail
_021E6F3C:
	ldr r1, _021E6F60 ; =0x00000D94
	add r2, sp, #0
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl SpriteSystem_InitManagerWithCapacities
	cmp r0, #0
	bne _021E6F52
	bl GF_AssertFail
_021E6F52:
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_021E6F58: .word ov85_021EA6B8
_021E6F5C: .word ov85_021EA56C
_021E6F60: .word 0x00000D94
_021E6F64: .word ov85_021EA594
_021E6F68: .word 0x00000D98
	thumb_func_end ov85_021E6ECC

