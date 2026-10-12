	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221D874
	.extern ov07_0221D3CC
	.extern ov07_0221D4B0
	.extern ov07_0221FA48

	.text

	.text
	thumb_func_start ov07_0221D874
ov07_0221D874: ; 0x0221D874
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	ldr r6, _0221DA68 ; =0x00004E21
	add r2, r1, #4
	str r2, [r4, #0x18]
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r4, #0x18]
	mov ip, r1
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r4, #0x18]
	str r1, [sp, #0x10]
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r4, #0x18]
	str r1, [sp, #0xc]
	ldr r1, [r2]
	add r2, r2, #4
	str r2, [r4, #0x18]
	add r2, r4, #0
	add r2, #0xc0
	ldr r2, [r2]
	add r1, r1, r6
	ldrh r3, [r2, #0x14]
	lsr r2, r6, #2
	mul r2, r3
	add r2, r1, r2
	str r2, [sp, #0x58]
	add r2, r4, #0
	add r2, #0xc0
	ldr r2, [r2]
	ldrh r3, [r2, #0x14]
	lsr r2, r6, #2
	mul r2, r3
	add r2, r1, r2
	str r2, [sp, #0x5c]
	add r2, r4, #0
	add r2, #0xc0
	ldr r2, [r2]
	ldrh r3, [r2, #0x14]
	lsr r2, r6, #2
	mul r2, r3
	add r2, r1, r2
	str r2, [sp, #0x60]
	add r2, r4, #0
	add r2, #0xc0
	ldr r2, [r2]
	lsr r3, r6, #2
	ldrh r2, [r2, #0x14]
	mul r3, r2
	add r1, r1, r3
	str r1, [sp, #0x64]
	mov r1, #0
	str r1, [sp, #0x68]
	str r1, [sp, #0x6c]
	mov r1, ip
	bl ov07_0221D3CC
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0]
	ldr r0, [sp, #0x1c]
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, #0xb0
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [sp, #0x18]
	ldr r0, [r1, #8]
	str r0, [sp, #0x14]
	ldr r0, [r1]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl ov07_0221FA48
	add r6, r0, #0
	beq _0221D93C
	mov r1, #0
	bl Pokepic_GetAttr
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	add r0, r6, #0
	mov r1, #1
	bl Pokepic_GetAttr
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
	add r0, r6, #0
	mov r1, #0x29
	bl Pokepic_GetAttr
	sub r0, r5, r0
	lsl r0, r0, #0x10
	asr r5, r0, #0x10
_0221D93C:
	add r0, sp, #0x24
	strh r7, [r0]
	strh r5, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #0x64
	str r0, [sp, #0x2c]
	mov r0, #1
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	add r2, sp, #0x58
	add r3, sp, #0x24
_0221D95A:
	ldr r0, [r2]
	add r1, r1, #1
	str r0, [r3, #0x14]
	add r2, r2, #4
	add r3, r3, #4
	cmp r1, #6
	blt _0221D95A
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r1, #0x4e
	add r0, #0xac
	lsl r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	add r2, sp, #0x24
	bl SpriteSystem_NewSprite
	add r7, r0, #0
	cmp r6, #0
	bne _0221D98C
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _0221D9A0
_0221D98C:
	add r0, r6, #0
	mov r1, #6
	bl Pokepic_GetAttr
	cmp r0, #1
	bne _0221D9A0
	add r0, r7, #0
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_0221D9A0:
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov07_0221FA48
	cmp r0, #0
	beq _0221D9C2
	ldr r0, [r7]
	bl Sprite_GetImageProxy
	add r1, r0, #0
	mov r3, #0x32
	ldr r1, [r1, #4]
	ldr r2, [sp, #0x20]
	mov r0, #0x13
	lsl r3, r3, #6
	bl GF_CreateNewVramTransferTask
_0221D9C2:
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov07_0221FA48
	cmp r0, #0
	beq _0221D9F8
	ldr r0, [r7]
	bl Sprite_GetPaletteProxy
	mov r1, #1
	bl ObjPlttTransfer_GetPaletteVramOffset
	mov r1, #2
	str r1, [sp]
	mov r1, #0x20
	lsl r0, r0, #0x14
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	ldr r3, [r4]
	bl PaletteData_LoadNarc
_0221D9F8:
	ldr r0, [sp, #0xc]
	lsl r5, r0, #2
	mov r0, #0x4f
	lsl r0, r0, #2
	add r6, r4, r0
	ldr r0, [r6, r5]
	cmp r0, #0
	beq _0221DA0C
	bl GF_AssertFail
_0221DA0C:
	mov r0, #0x15
	str r7, [r6, r5]
	mov r2, #1
	add r1, r4, r5
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0221DA62
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl ov07_0221FA48
	cmp r0, #0
	beq _0221DA62
	mov r0, #0x59
	lsl r0, r0, #2
	add r6, r4, r0
	ldr r0, [r4]
	mov r1, #0x10
	bl Heap_Alloc
	str r0, [r6, r5]
	ldr r0, [r6, r5]
	ldr r1, [sp, #0x1c]
	str r7, [r0]
	add r0, r4, #0
	bl ov07_0221FA48
	ldr r1, [r6, r5]
	ldr r2, _0221DA6C ; =0x00001001
	str r0, [r1, #8]
	ldr r0, [r6, r5]
	mov r1, #0
	strb r1, [r0, #4]
	ldr r0, [r6, r5]
	strb r1, [r0, #5]
	ldr r0, _0221DA70 ; =ov07_0221D4B0
	ldr r1, [r6, r5]
	bl SysTask_CreateOnMainQueue
	ldr r1, [r6, r5]
	str r0, [r1, #0xc]
_0221DA62:
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221DA68: .word 0x00004E21
_0221DA6C: .word 0x00001001
_0221DA70: .word ov07_0221D4B0
	thumb_func_end ov07_0221D874

