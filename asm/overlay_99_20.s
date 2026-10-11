	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6A9C

	.text

	thumb_func_start ov99_021E6A9C
ov99_021E6A9C: ; 0x021E6A9C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl ov98_0221E5C0
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	bl ov98_0221E5D0
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x11
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x10
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x12
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x13
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #9
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #8
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #9
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #8
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xa
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xb
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r3, #1
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #3
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov99_021E6A9C

