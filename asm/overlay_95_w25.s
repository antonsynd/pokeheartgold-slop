	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E619C
	.extern ov95_021E7548
	.extern ov95_021E755C
	.extern ov95_021E7574

	.text

	.text
	thumb_func_start ov95_021E619C
ov95_021E619C: ; 0x021E619C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x46
	bl SpriteSystem_Alloc
	add r2, sp, #0x2c
	ldr r5, _021E621C ; =ov95_021E7574
	str r0, [r4, #0x50]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _021E6220 ; =ov95_021E7548
	stmia r2!, {r0, r1}
	add r5, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r3, #0
	str r0, [r5]
	ldr r0, [r4, #0x50]
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _021E6224 ; =ov95_021E755C
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x50]
	bl SpriteManager_New
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x4c]
	mov r2, #0xff
	bl SpriteSystem_InitSprites
	cmp r0, #0
	bne _021E6206
	bl GF_AssertFail
_021E6206:
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x4c]
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	cmp r0, #0
	bne _021E6218
	bl GF_AssertFail
_021E6218:
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E621C: .word ov95_021E7574
_021E6220: .word ov95_021E7548
_021E6224: .word ov95_021E755C
	thumb_func_end ov95_021E619C

