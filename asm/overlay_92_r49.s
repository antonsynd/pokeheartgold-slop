	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225E3C4
	.public ov92_0225E6A4
	.extern ov92_0225DDD8
	.extern ov92_0225DF58
	.extern ov92_0226077C
	.extern ov92_02263B74

	.text

	.text
	thumb_func_start ov92_0225E3C4
ov92_0225E3C4: ; 0x0225E3C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [r0, #0x48]
	ldr r5, [r0, #0x54]
	ldr r6, [r0, #0x50]
	ldr r7, [r0, #0x5c]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0225E688 ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x54
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E688 ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x53
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E688 ; =0x00002328
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x52
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0x55
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0225E688 ; =0x00002328
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225E68C ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1d
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E68C ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1c
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E68C ; =0x0000232B
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x1b
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225E68C ; =0x0000232B
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225E690 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xd
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E690 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xc
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E690 ; =0x0000232C
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xb
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225E690 ; =0x0000232C
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225E694 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x15
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E694 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x14
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E694 ; =0x0000232D
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x13
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0x16
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225E694 ; =0x0000232D
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225E698 ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x11
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E698 ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x10
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E698 ; =0x0000232E
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0xf
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0x12
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225E698 ; =0x0000232E
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225E69C ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x19
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E69C ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x18
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E69C ; =0x0000232A
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x17
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0225E69C ; =0x0000232A
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	mov r0, #0xc8
	mov r1, #0x71
	bl NARC_New
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0225E6A0 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x15
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E6A0 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x16
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E6A0 ; =0x0000232F
	add r1, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	mov r3, #0x17
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	str r4, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0225E6A0 ; =0x0000232F
	add r2, r6, #0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r3, r5, #0
	bl SpriteSystem_LoadPaletteBufferFromOpenNarc
	add r0, r4, #0
	bl NARC_Delete
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E688: .word 0x00002328
_0225E68C: .word 0x0000232B
_0225E690: .word 0x0000232C
_0225E694: .word 0x0000232D
_0225E698: .word 0x0000232E
_0225E69C: .word 0x0000232A
_0225E6A0: .word 0x0000232F
	thumb_func_end ov92_0225E3C4

	thumb_func_start ov92_0225E6A4
ov92_0225E6A4: ; 0x0225E6A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r6, r1, #0
	ldr r1, [r6, #0x14]
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	mov r4, #0
	str r0, [sp, #0x18]
	ldr r0, [r1, #0xc]
	str r4, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r6, #4]
	cmp r0, #0
	bgt _0225E6C2
	b _0225E7D8
_0225E6C2:
	str r6, [sp, #0xc]
	add r7, r4, #0
	add r5, r6, #0
_0225E6C8:
	ldr r1, [sp, #0xc]
	mov r0, #0xff
	add r1, #0xf4
	strh r0, [r1]
	ldr r0, [r6]
	cmp r4, r0
	beq _0225E7C8
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, #0xf4
	strh r0, [r1]
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E7DC ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _0225E7E0 ; =ov92_02263B74
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov92_0225DDD8
	mov r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl SpriteSystem_NewSprite
	str r0, [r5, #0x1c]
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E7DC ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _0225E7E0 ; =ov92_02263B74
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov92_0225DDD8
	mov r0, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl SpriteSystem_NewSprite
	str r0, [r5, #0x28]
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov92_0226077C
	add r1, r0, #0
	ldr r0, [r5, #0x28]
	bl ManagedSprite_SetPaletteOverrideOffset
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225E7DC ; =0x00002328
	mov r2, #6
	str r0, [sp, #4]
	ldr r1, [r6, #4]
	add r0, sp, #0x1c
	mul r2, r1
	ldr r1, _0225E7E0 ; =ov92_02263B74
	mov r3, #2
	add r1, r1, r2
	add r2, r7, r1
	mov r1, #5
	mvn r1, r1
	ldrsh r1, [r2, r1]
	mov r2, #0xf0
	bl ov92_0225DDD8
	mov r0, #3
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x1c
	bl SpriteSystem_NewSprite
	str r0, [r5, #0x34]
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov92_0226077C
	add r1, r0, #0
	ldr r0, [r5, #0x34]
	bl ManagedSprite_SetPaletteOverrideOffset
	ldr r0, [r5, #0x34]
	mov r1, #5
	bl ManagedSprite_SetAnim
	ldr r0, [r5, #0x1c]
	bl ManagedSprite_TickTwoFrames
	ldr r0, [r5, #0x28]
	bl ManagedSprite_TickTwoFrames
	ldr r0, [r5, #0x34]
	bl ManagedSprite_TickTwoFrames
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl ov92_0225DF58
	ldr r0, [sp, #0x10]
	add r7, r7, #2
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x10]
_0225E7C8:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r6, #4]
	cmp r4, r0
	bge _0225E7D8
	b _0225E6C8
_0225E7D8:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E7DC: .word 0x00002328
_0225E7E0: .word ov92_02263B74
	thumb_func_end ov92_0225E6A4

