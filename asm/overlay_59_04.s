	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02237F3C
	.public ov59_02237F74
	.public ov59_02237FA4
	.public ov59_0223801C
	.public ov59_02238068
	.public ov59_022385AC
	.public ov59_02238624
	.public ov59_02238674
	.public ov59_022386A8
	.public ov59_022386D0
	.public ov59_02238CFC
	.public ov59_02238D74
	.public ov59_02238FF4

	.text

	thumb_func_start ov59_02237F3C
ov59_02237F3C: ; 0x02237F3C
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x3c]
	cmp r1, #0
	beq _02237F4C
	cmp r1, #1
	beq _02237F58
	b _02237F6E
_02237F4C:
	bl ov59_02238674
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02237F6E
_02237F58:
	bl ov59_022386D0
	bl sub_020210BC
	mov r0, #1
	bl sub_02021148
	mov r0, #0
	strh r0, [r4, #0x3c]
	mov r0, #1
	pop {r4, pc}
_02237F6E:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov59_02237F3C

	thumb_func_start ov59_02237F74
ov59_02237F74: ; 0x02237F74
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02237F82
	cmp r0, #1
	b _02237F94
_02237F82:
	bl sub_02021238
	add r0, r4, #0
	bl ov59_022386A8
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02237FA0
_02237F94:
	bl ov59_02238624
	mov r0, #0
	strh r0, [r4, #0x3c]
	mov r0, #1
	pop {r4, pc}
_02237FA0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov59_02237F74

	thumb_func_start ov59_02237FA4
ov59_02237FA4: ; 0x02237FA4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02237FB6
	cmp r0, #1
	beq _02237FD4
	b _02238016
_02237FB6:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02238016
_02237FD4:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02238016
	mov r0, #0
	strh r0, [r4, #0x3c]
	add r0, r4, #0
	add r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq _02238010
	cmp r0, #1
	beq _02237FF4
	cmp r0, #2
	beq _0223800A
	b _02238010
_02237FF4:
	ldr r0, [r4, #0x10]
	bl sub_02031C00
	cmp r0, #1
	beq _02238004
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, pc}
_02238004:
	add sp, #0xc
	mov r0, #4
	pop {r3, r4, pc}
_0223800A:
	add sp, #0xc
	mov r0, #5
	pop {r3, r4, pc}
_02238010:
	add sp, #0xc
	mov r0, #3
	pop {r3, r4, pc}
_02238016:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov59_02237FA4

	thumb_func_start ov59_0223801C
ov59_0223801C: ; 0x0223801C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _0223802E
	cmp r0, #1
	beq _0223804E
	b _02238060
_0223802E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02238060
_0223804E:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02238060
	mov r0, #0
	strh r0, [r4, #0x3c]
	add sp, #0xc
	mov r0, #0x10
	pop {r3, r4, pc}
_02238060:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov59_0223801C

	thumb_func_start ov59_02238068
ov59_02238068: ; 0x02238068
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x3c]
	cmp r1, #0
	bne _022380C2
	mov r1, #1
	bl ov59_02238FF4
	ldr r0, [r4, #0x10]
	bl sub_02031C00
	cmp r0, #0
	beq _0223808C
	cmp r0, #2
	beq _0223809C
	cmp r0, #3
	beq _022380A8
	b _022380B2
_0223808C:
	add r2, r4, #0
	add r2, #0x45
	ldrb r2, [r2]
	add r0, r4, #0
	mov r1, #0x16
	bl ov59_02238CFC
	b _022380B2
_0223809C:
	add r0, r4, #0
	mov r1, #0x17
	mov r2, #0xff
	bl ov59_02238CFC
	b _022380B2
_022380A8:
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0xff
	bl ov59_02238CFC
_022380B2:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02031BEC
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _022380E0
_022380C2:
	bl ov59_022385AC
	cmp r0, #0
	beq _022380E0
	add r0, r4, #0
	mov r1, #0
	bl ov59_02238FF4
	add r0, r4, #0
	bl ov59_02238D74
	mov r0, #0
	strh r0, [r4, #0x3c]
	mov r0, #4
	pop {r4, pc}
_022380E0:
	mov r0, #2
	pop {r4, pc}
	thumb_func_end ov59_02238068

