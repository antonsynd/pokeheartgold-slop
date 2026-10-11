	.include "asm/macros.inc"
	.include "overlay_18_021F0918.inc"
	.include "global.inc"
	.public ov18_021F3CA8

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
	thumb_func_start ov18_021F3CA8
ov18_021F3CA8: ; 0x021F3CA8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, r2, #0
	ldr r2, _021F3D30 ; =0x000018A4
	add r5, r3, #0
	add r6, r4, r2
	ldrb r3, [r6, r1]
	mov r7, #0x80
	add r2, r3, #0
	tst r2, r7
	beq _021F3D0C
	ldr r1, _021F3D30 ; =0x000018A4
	sub r1, r1, #2
	ldrh r1, [r4, r1]
	cmp r1, #0xac
	bne _021F3CF2
	add r1, r3, #0
	eor r1, r7
	beq _021F3CD8
	cmp r1, #1
	beq _021F3CE0
	cmp r1, #2
	beq _021F3CEA
	pop {r3, r4, r5, r6, r7, pc}
_021F3CD8:
	mov r1, #0
	strb r1, [r0]
	strb r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021F3CE0:
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021F3CEA:
	mov r1, #1
	strb r1, [r0]
	strb r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021F3CF2:
	add r1, r3, #0
	eor r1, r7
	strb r1, [r0]
	ldr r1, _021F3D30 ; =0x000018A4
	ldr r0, [r4]
	sub r1, r1, #2
	ldrh r1, [r4, r1]
	ldr r0, [r0]
	mov r2, #0
	bl Pokedex_SpeciesGetLastSeenGender
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021F3D0C:
	mov r2, #0
	strb r2, [r0]
	ldrb r0, [r6, r1]
	cmp r0, #1
	beq _021F3D1E
	cmp r0, #2
	beq _021F3D22
	cmp r0, #3
	b _021F3D28
_021F3D1E:
	strb r2, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021F3D22:
	mov r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021F3D28:
	mov r0, #2
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F3D30: .word 0x000018A4
	thumb_func_end ov18_021F3CA8

