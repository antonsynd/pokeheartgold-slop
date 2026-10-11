	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222DA00
	.public ov40_0222E79C
	.public ov40_0222E7B8
	.public ov40_0222E7DC
	.public ov40_02230410
	.public ov40_02230638
	.public ov40_0223064C
	.public ov40_022306A0
	.public ov40_022307DC
	.public ov40_02230964
	.public ov40_022325B0
	.public ov40_02232FEC

	.text

	thumb_func_start ov40_022325B0
ov40_022325B0: ; 0x022325B0
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #3
	bhi _022326BE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022325CC: ; jump table
	.short _022325D4 - _022325CC - 2 ; case 0
	.short _02232600 - _022325CC - 2 ; case 1
	.short _02232618 - _022325CC - 2 ; case 2
	.short _0223267A - _022325CC - 2 ; case 3
_022325D4:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022325E6
	add r4, #0x9c
	add r0, r4, #0
	add r1, r5, #0
	bl ov40_0223064C
	b _022325F0
_022325E6:
	add r4, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl ov40_0222E7B8
_022325F0:
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022326D6
_02232600:
	mov r2, #1
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _022326D6
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022326D6
_02232618:
	mov r1, #1
	bl ov40_02230964
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02232644
	add r0, r4, #0
	add r0, #0x10
	add r1, r5, #0
	bl ov40_0222E79C
	add r4, #0x10
	add r0, r4, #0
	mov r1, #0
	bl ov40_0222E7DC
	add r0, r5, #0
	mov r1, #0x50
	mov r2, #3
	bl ov40_022307DC
	b _0223266A
_02232644:
	add r0, r4, #0
	add r0, #0x9c
	add r1, r5, #0
	bl ov40_02230638
	add r0, r4, #0
	add r0, #0x9c
	mov r1, #0
	bl ov40_022306A0
	add r4, #0x9c
	add r0, r4, #0
	bl ov40_02230410
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov40_022307DC
_0223266A:
	add r0, r5, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022326D6
_0223267A:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov40_0222DA00
	cmp r0, #0
	beq _022326D6
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0223269C
	add r4, #0x10
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222E7DC
	b _022326A6
_0223269C:
	add r4, #0x9c
	add r0, r4, #0
	mov r1, #1
	bl ov40_022306A0
_022326A6:
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	mov r0, #4
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022326D6
_022326BE:
	ldr r1, [r4, #0xc]
	mov r0, #1
	eor r1, r0
	str r1, [r4, #0xc]
	add r0, r5, #0
	add r1, #0x79
	bl ov40_02232FEC
	add r0, r5, #0
	mov r1, #3
	bl ov40_0222BF80
_022326D6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov40_022325B0

