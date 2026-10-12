	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223F84C
	.extern ov82_0223EF7C
	.extern ov82_0223EFB4
	.extern ov82_0223F6C4
	.extern ov82_0223F6E4
	.extern ov82_0223FCB0
	.extern ov82_0223FCFC
	.extern ov82_0223FD78
	.extern ov82_0223FDC8

	.text

	.text
	thumb_func_start ov82_0223F84C
ov82_0223F84C: ; 0x0223F84C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov82_0223FCB0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x4c
	bl ov82_0223FD78
	ldrb r0, [r4, #0xd]
	bl ov80_02237920
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl BufferTypeName
	ldrb r0, [r4, #0xd]
	bl ov82_0223F6C4
	mov r1, #0x86
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl sub_02030BD0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0xa
	bls _0223F89C
	mov r2, #0xa
_0223F89C:
	add r0, r4, #0
	mov r1, #1
	bl ov82_0223EFB4
	add r0, r4, #0
	bl ov82_0223F6E4
	cmp r0, #1
	bne _0223F8B2
	mov r1, #0x1f
	b _0223F8B4
_0223F8B2:
	mov r1, #0x18
_0223F8B4:
	add r0, r4, #0
	mov r2, #1
	bl ov82_0223EF7C
	strb r0, [r4, #0xa]
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov82_0223FCFC
	add r2, r4, #0
	add r0, r4, #0
	add r2, #0x90
	add r0, #0x8c
	ldrb r2, [r2]
	ldr r0, [r0]
	ldr r1, [r4, #0x48]
	bl ov82_0223FDC8
	mov r0, #1
	strb r0, [r4, #0xf]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov82_0223F84C

