	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6EB8
	.public ov68_021E7028

	.text

	.text
	thumb_func_start ov68_021E6EB8
ov68_021E6EB8: ; 0x021E6EB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021E7014 ; =0x0000B8A8
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #6
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021E7018 ; =0x0000B8A9
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #0xb
	bl SpriteSystem_LoadCharResObjFromOpenNarc
	ldr r4, _021E701C ; =0x0000B8AB
	add r7, r4, #4
_021E6F00:
	cmp r4, r7
	str r4, [sp]
	bhs _021E6F1C
	mov r0, #0x47
	mov r1, #0x12
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #2
	mov r3, #0
	bl sub_020776B8
	b _021E6F30
_021E6F1C:
	mov r0, #0x47
	mov r1, #0x12
	lsl r0, r0, #2
	lsl r1, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r2, #1
	mov r3, #0
	bl sub_020776B8
_021E6F30:
	ldr r0, _021E7020 ; =0x0000B8B2
	add r4, r4, #1
	cmp r4, r0
	bls _021E6F00
	mov r1, #0x47
	sub r0, #8
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #2
	mov r3, #0
	bl sub_02077834
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021E7014 ; =0x0000B8A8
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #5
	bl SpriteSystem_LoadPlttResObjFromOpenNarc
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r3, _021E7018 ; =0x0000B8A9
	mov r2, #2
	bl sub_020776EC
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	ldr r3, _021E7024 ; =0x0000B8AA
	mov r2, #1
	bl sub_020776EC
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E7014 ; =0x0000B8A8
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #7
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E7018 ; =0x0000B8A9
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #0xa
	bl SpriteSystem_LoadCellResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E7014 ; =0x0000B8A8
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #8
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r0, #0
	str r0, [sp]
	ldr r0, _021E7018 ; =0x0000B8A9
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r6, #0
	mov r3, #9
	bl SpriteSystem_LoadAnimResObjFromOpenNarc
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r2, _021E7024 ; =0x0000B8AA
	ldr r1, [r5, r1]
	add r3, r2, #0
	bl sub_0207775C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7014: .word 0x0000B8A8
_021E7018: .word 0x0000B8A9
_021E701C: .word 0x0000B8AB
_021E7020: .word 0x0000B8B2
_021E7024: .word 0x0000B8AA
	thumb_func_end ov68_021E6EB8

	thumb_func_start ov68_021E7028
ov68_021E7028: ; 0x021E7028
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	bne _021E7044
	add r0, r1, #0
	mov r1, #3
	bl GetMoveAttr
	add r6, r0, #0
	b _021E7050
_021E7044:
	add r0, r1, #0
	mov r1, #0xb
	bl GetMoveAttr
	add r6, r0, #0
	add r6, #0x12
_021E7050:
	bl sub_020776B4
	add r7, r0, #0
	add r0, r6, #0
	bl sub_02077678
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E70B8 ; =0x0000B8AB
	mov r1, #0x47
	add r0, r4, r0
	lsl r1, r1, #2
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl SpriteSystem_ReplaceCharResObj
	cmp r4, #4
	bhs _021E709A
	add r0, r6, #0
	bl sub_0207769C
	add r1, r0, #0
	add r0, r4, #4
	lsl r0, r0, #2
	add r2, r5, r0
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	add r1, r1, #4
	bl ManagedSprite_SetPaletteOverride
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021E709A:
	add r0, r6, #0
	bl sub_0207769C
	add r1, r0, #0
	add r0, r4, #4
	lsl r0, r0, #2
	add r2, r5, r0
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl ManagedSprite_SetPaletteOverride
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E70B8: .word 0x0000B8AB
	thumb_func_end ov68_021E7028

