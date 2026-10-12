	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F2468
	.extern ov18_021F2424
	.extern ov18_021FA484
	.extern ov18_021FAB24

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F2468
ov18_021F2468: ; 0x021F2468
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r4, _021F24D0 ; =ov18_021FA484
	add r7, r0, #0
	add r3, sp, #0
	mov r2, #6
_021F2474:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F2474
	ldr r0, [r4]
	mov r4, #0x1b
	add r5, r7, #0
	str r0, [r3]
	mov r6, #0x12
	lsl r4, r4, #4
	add r5, #0x48
_021F248A:
	mov r0, #0x4d
	lsl r0, r0, #2
	sub r1, r4, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov18_021F2424
	ldr r0, _021F24D4 ; =0x0000066C
	ldr r1, _021F24D8 ; =0x0000C55A
	ldr r0, [r7, r0]
	mov r2, #2
	bl SpriteManager_FindPlttResourceOffset
	add r1, r0, #0
	mov r0, #0x67
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPaletteOverride
	add r6, r6, #1
	add r4, #0x18
	add r5, r5, #4
	cmp r6, #0x17
	bls _021F248A
	ldr r2, _021F24DC ; =ov18_021FAB24
	add r0, r7, #0
	mov r1, #8
	bl ov18_021F2424
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021F24D0: .word ov18_021FA484
_021F24D4: .word 0x0000066C
_021F24D8: .word 0x0000C55A
_021F24DC: .word ov18_021FAB24
	thumb_func_end ov18_021F2468

