	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6274
	.public ov99_021E6400
	.public ov99_021E9554

	.text

	thumb_func_start ov99_021E6274
ov99_021E6274: ; 0x021E6274
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
	mov r3, #0x15
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x14
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x16
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x17
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
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #2
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #3
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #5
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #4
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #6
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #7
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #6
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
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #8
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xa
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #1
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r2, [r5, #8]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0xb
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	add r0, r5, #0
	bl ov99_021E6400
	mov r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021E63FC ; =ov99_021E9554
	mov r2, #3
	mov r3, #0
	bl ov98_0221E8A8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E63FC: .word ov99_021E9554
	thumb_func_end ov99_021E6274

