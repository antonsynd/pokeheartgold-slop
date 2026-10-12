	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02232A48
	.public ov40_02232AF8
	.extern ov40_0222BF80
	.extern ov40_0222C4E8
	.extern ov40_0222D8C8
	.extern ov40_0222DED0
	.extern ov40_0222DFB0
	.extern ov40_0222E7B8
	.extern ov40_0222FCCC
	.extern ov40_0222FDC4
	.extern ov40_0223064C
	.extern ov40_02230964
	.extern ov40_02232FCC
	.extern ov40_02233044
	.extern ov40_022330B8
	.extern ov40_02244BBC

	.text

	.text
	thumb_func_start ov40_02232A48
ov40_02232A48: ; 0x02232A48
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02232A5E
	cmp r1, #1
	beq _02232A82
	cmp r1, #2
	beq _02232A92
	b _02232AD6
_02232A5E:
	ldr r1, _02232AF0 ; =0x0000012B
	bl ov40_0222DED0
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6d
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02232AE8
_02232A82:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02232AE8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02232AE8
_02232A92:
	ldr r1, _02232AF4 ; =0x00000874
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _02232ACE
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r4, r0]
	sub r1, #0x44
	str r0, [sp]
	ldr r0, [r4, r1]
	mov r1, #0x6d
	add r2, sp, #0xc
	mov r3, #0
	bl sub_0202FC90
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, #0x3c
	ldr r1, [r4, r1]
	bl ov40_02244BBC
	bl sub_0202FC24
	add r0, r4, #0
	bl ov40_0222FDC4
	add r0, r4, #0
	bl ov40_0222FCCC
_02232ACE:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02232AE8
_02232AD6:
	bl ov40_0222DFB0
	add r0, r4, #0
	bl ov40_02233044
	add r0, r4, #0
	mov r1, #9
	bl ov40_0222BF80
_02232AE8:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_02232AF0: .word 0x0000012B
_02232AF4: .word 0x00000874
	thumb_func_end ov40_02232A48

	thumb_func_start ov40_02232AF8
ov40_02232AF8: ; 0x02232AF8
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02232B14
	cmp r1, #1
	beq _02232B34
	cmp r1, #2
	beq _02232B44
	b _02232BC2
_02232B14:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6d
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02232BCE
_02232B34:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02232BCE
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02232BCE
_02232B44:
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _02232B8E
	mov r1, #1
	bl ov40_02230964
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02232B66
	add r0, r4, #0
	add r0, #0x9c
	add r1, r5, #0
	bl ov40_0223064C
	b _02232B70
_02232B66:
	add r0, r4, #0
	add r0, #0x10
	add r1, r5, #0
	bl ov40_0222E7B8
_02232B70:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl TouchHitboxController_Destroy
	add r0, r5, #0
	bl ov40_02232FCC
	add r0, r5, #0
	bl ov40_022330B8
_02232B8E:
	add r0, r5, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r5, #0
	bl ov40_0222D8C8
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	ldr r1, [r1]
	bl ov40_0222C4E8
	ldr r0, _02232BD4 ; =0x00000868
	mov r1, #1
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_02087A84
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _02232BCE
_02232BC2:
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02232BCE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02232BD4: .word 0x00000868
	thumb_func_end ov40_02232AF8

