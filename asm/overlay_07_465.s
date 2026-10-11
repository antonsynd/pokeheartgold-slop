	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222BE00
	.extern ov07_0221BFD0
	.extern ov07_0221C410
	.extern ov07_0221C468
	.extern ov07_0221C4E8
	.extern ov07_0221C514
	.extern ov07_0221FA48
	.extern ov07_02222004
	.extern ov07_02222180
	.extern ov07_02222864
	.extern ov07_02222A44
	.extern ov07_0222BD90
	.extern ov07_02231E08

	.text

	.text
	thumb_func_start ov07_0222BE00
ov07_0222BE00: ; 0x0222BE00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	bl ov07_0221BFD0
	mov r1, #0xf0
	bl Heap_Alloc
	add r4, r0, #0
	str r5, [r4]
	add r0, r5, #0
	bl ov07_0221C514
	str r0, [r4, #4]
	ldr r0, [r4]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_0221FA48
	mov r1, #0
	str r0, [r4, #8]
	bl Pokepic_GetAttr
	add r1, r4, #0
	add r1, #0xe8
	strh r0, [r1]
	ldr r0, [r4, #8]
	mov r1, #1
	bl Pokepic_GetAttr
	add r1, r4, #0
	add r1, #0xea
	strh r0, [r1]
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl Pokepic_GetAttr
	add r1, r4, #0
	add r1, #0xec
	strh r0, [r1]
	mov r0, #0xea
	ldrsh r1, [r4, r0]
	add r0, r4, #0
	add r0, #0xea
	add r1, #8
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0xc
	mov r1, #1
	mov r2, #8
	bl ov07_02222A44
	add r0, sp, #0x20
	mov r1, #1
	mov r2, #0xa
	bl ov07_02222A44
	ldr r0, [r4]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_02222004
	ldr r1, [r4, #0x18]
	mov r6, #0
	add r2, r1, #0
	mul r2, r0
	str r2, [r4, #0x18]
	ldr r1, [sp, #0x2c]
	add r5, r4, #0
	mul r0, r1
	str r0, [sp, #0x2c]
	mov r7, #0x64
_0222BE98:
	ldr r0, [r4]
	add r1, r6, #0
	bl ov07_0221C4E8
	str r0, [r5, #0x30]
	add r1, r7, #0
	bl ManagedSprite_SetDrawPriority
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl ManagedSprite_SetPriority
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl ManagedSprite_SetOamMode
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _0222BE98
	mov r0, #0xea
	ldrsh r1, [r4, r0]
	mov r0, #0xec
	ldrsh r0, [r4, r0]
	mov r3, #0xe8
	ldr r2, _0222BF10 ; =ov07_02222180
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, r4, #0
	ldrsh r3, [r4, r3]
	add r0, #0x38
	add r1, sp, #0x20
	bl ov07_02222864
	mov r1, #0
	mvn r1, r1
	ldr r0, [r4]
	add r2, r1, #0
	bl ov07_02231E08
	ldr r0, [r4]
	ldr r1, _0222BF14 ; =ov07_0222BD90
	add r2, r4, #0
	bl ov07_0221C410
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222BF10: .word ov07_02222180
_0222BF14: .word ov07_0222BD90
	thumb_func_end ov07_0222BE00

