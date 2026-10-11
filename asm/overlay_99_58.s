	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E8C88
	.public ov99_021EA364

	.text

	thumb_func_start ov99_021E8C88
ov99_021E8C88: ; 0x021E8C88
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl ov98_0221E5C0
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl ov98_0221E5D0
	add r6, r0, #0
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #2
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #3
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xc
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xd
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xe
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xf
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021E8D58 ; =ov99_021EA364
	mov r2, #0xf
	mov r3, #0
	bl ov98_0221E8A8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E8D58: .word ov99_021EA364
	thumb_func_end ov99_021E8C88

