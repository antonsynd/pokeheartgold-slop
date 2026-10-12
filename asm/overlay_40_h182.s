	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022322E0
	.extern ov40_0222BF80
	.extern ov40_0222C4DC
	.extern ov40_0222D874
	.extern ov40_0222DA84
	.extern ov40_0222FB90
	.extern ov40_02230964
	.extern ov40_02233044

	.text

	.text
	thumb_func_start ov40_022322E0
ov40_022322E0: ; 0x022322E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022322F8
	cmp r1, #1
	beq _02232356
	b _022323E2
_022322F8:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	cmp r0, #0
	beq _0223230C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_0223230C:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02232460
_02232356:
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_0222D874
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #0
	add r1, r0, #0
	bl SetBgPriority
	mov r0, #1
	mov r1, #3
	bl SetBgPriority
	mov r0, #2
	mov r1, #0
	bl SetBgPriority
	mov r0, #3
	mov r1, #2
	bl SetBgPriority
	mov r0, #4
	mov r1, #0
	bl SetBgPriority
	mov r0, #5
	mov r1, #3
	bl SetBgPriority
	mov r0, #6
	mov r1, #1
	bl SetBgPriority
	mov r0, #7
	mov r1, #2
	bl SetBgPriority
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl GfGfxLoader_LoadCharDataFromOpenNarc
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02232460
_022323E2:
	mov r1, #0
	bl ov40_0222FB90
	add r0, r5, #0
	bl ov40_0222C4DC
	cmp r0, #1
	bne _02232458
	ldr r0, _02232468 ; =0x0000086C
	mov r6, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02232400
	mov r6, #1
	b _0223242A
_02232400:
	lsl r1, r1, #2
	add r1, r5, r1
	add r0, #0x10
	ldr r0, [r1, r0]
	mov r1, #5
	add r2, r6, #0
	bl sub_0203088C
	mov r3, #0
	mov r2, #1
	eor r1, r3
	eor r0, r2
	orr r0, r1
	bne _02232420
	mov r6, #1
	b _0223242A
_02232420:
	ldr r0, _0223246C ; =0x00000874
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0223242A
	mov r6, #1
_0223242A:
	cmp r6, #0
	beq _02232446
	add r0, r5, #0
	bl ov40_02233044
	mov r0, #0x66
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #9
	bl ov40_0222BF80
	b _02232460
_02232446:
	mov r0, #0x66
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #6
	bl ov40_0222BF80
	b _02232460
_02232458:
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222BF80
_02232460:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02232468: .word 0x0000086C
_0223246C: .word 0x00000874
	thumb_func_end ov40_022322E0

