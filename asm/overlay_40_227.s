	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222C4DC
	.public ov40_0222D874
	.public ov40_0222D910
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DD9C
	.public ov40_0222FB90
	.public ov40_02230964
	.public ov40_02240290
	.public ov40_02240418
	.public ov40_02241FD0
	.public ov40_02242FAC

	.text

	thumb_func_start ov40_02240290
ov40_02240290: ; 0x02240290
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r2, [r5, #8]
	ldr r4, [r5, r1]
	cmp r2, #0
	beq _022402A6
	cmp r2, #1
	beq _02240304
	b _02240360
_022402A6:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	cmp r0, #0
	beq _022402BA
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022402BA:
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
	b _02240414
_02240304:
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
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02240414
_02240360:
	add r1, #0xc
	ldr r1, [r5, r1]
	cmp r1, #0xc8
	beq _02240372
	cmp r1, #0xd2
	beq _022403A2
	cmp r1, #0xdc
	beq _022403D2
	b _022403FA
_02240372:
	mov r1, #0
	bl ov40_0222FB90
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020879E0
	add r0, r5, #0
	bl ov40_0222C4DC
	cmp r0, #1
	bne _02240398
	add r0, r5, #0
	mov r1, #6
	bl ov40_0222BF80
	b _02240414
_02240398:
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222BF80
	b _02240414
_022403A2:
	mov r1, #0
	bl ov40_0222FB90
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020879E0
	add r0, r5, #0
	bl ov40_0222C4DC
	cmp r0, #1
	bne _022403C8
	add r0, r5, #0
	mov r1, #0x1e
	bl ov40_0222BF80
	b _02240414
_022403C8:
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222BF80
	b _02240414
_022403D2:
	bl ov40_0222C4DC
	cmp r0, #1
	bne _022403E4
	add r0, r5, #0
	mov r1, #0x13
	bl ov40_0222BF80
	b _022403EC
_022403E4:
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222BF80
_022403EC:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020879E0
	b _02240414
_022403FA:
	mov r1, #0
	bl ov40_0222FB90
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020879E0
	add r0, r5, #0
	mov r1, #2
	bl ov40_0222BF80
_02240414:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov40_02240290

	thumb_func_start ov40_02240418
ov40_02240418: ; 0x02240418
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	mov r2, #0x75
	ldr r6, [r5, r1]
	lsl r2, r2, #2
	add r4, r6, r2
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _0224043A
	cmp r2, #1
	beq _022404AA
	cmp r2, #2
	beq _022404CE
	b _02240510
_0224043A:
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #5
	sub r1, #0x30
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	bl Save_PlayerData_GetOptionsAddr
	add r3, r0, #0
	mov r0, #0x6d
	mov r1, #0xc
	add r2, sp, #0xc
	bl ov40_02242FAC
	ldr r1, _0224051C ; =0x000004AC
	mov r2, #0x22
	str r0, [r6, r1]
	ldr r0, [r5, #0x14]
	lsl r2, r2, #4
	str r0, [r4, r2]
	ldr r3, [r5, #0x18]
	add r0, r2, #4
	str r3, [r4, r0]
	add r0, r2, #0
	ldr r3, [r5, #0x1c]
	add r0, #8
	str r3, [r4, r0]
	add r0, r2, #0
	ldr r3, [r5, #0x24]
	add r0, #0xc
	str r3, [r4, r0]
	add r0, r2, #0
	ldr r3, [r5, #0x28]
	add r0, #0x10
	str r3, [r4, r0]
	add r0, r2, #0
	add r0, #0x88
	ldr r3, [r6, r1]
	add r7, r4, r0
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r7!, {r0, r1}
	add r2, #0xb4
	str r5, [r4, r2]
	add r0, r5, #0
	bl ov40_02241FD0
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022404AA:
	mov r2, #8
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r6, #4
	bl ov40_0222D910
	mov r0, #8
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02240516
_022404CE:
	add r0, r6, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	mov r2, #0
	add r0, r6, #0
	add r1, r6, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _022404F6
	add r0, r5, #0
	mov r1, #0x70
	bl ov40_0222DD9C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_022404F6:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r6, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02240516
_02240510:
	mov r1, #3
	bl ov40_0222BF80
_02240516:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224051C: .word 0x000004AC
	thumb_func_end ov40_02240418

