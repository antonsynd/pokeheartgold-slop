	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_02258800
ov49_02258800: ; 0x02258800
	mov r3, #0
	ldrsh r2, [r0, r3]
	lsl r2, r2, #0xc
	str r2, [r1]
	mov r2, #2
	ldrsh r0, [r0, r2]
	lsl r0, r0, #0xc
	str r0, [r1, #8]
	str r3, [r1, #4]
	bx lr
	thumb_func_end ov49_02258800

	thumb_func_start ov49_02258814
ov49_02258814: ; 0x02258814
	ldr r3, [r0]
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	strh r2, [r1]
	ldr r2, [r0, #8]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	strh r0, [r1, #2]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02258814

	thumb_func_start ov49_02258830
ov49_02258830: ; 0x02258830
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0
	add r7, r3, #0
	bl GfGfxLoader_LoadFromOpenNarc
	add r4, r0, #0
	bl NNS_G3dGetTex
	add r6, r0, #0
	bl GF3dRender_AllocAndLoadTexResources
	add r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl NNS_G3dTexReleaseTexKey
	add r0, r6, #0
	bl NNS_G3dPlttReleasePlttKey
	str r0, [sp, #4]
	add r0, r4, #0
	bl G3dResFileHeader_GetSizeWithoutTex
	add r6, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl Heap_Alloc
	str r0, [r5]
	add r1, r4, #0
	add r2, r6, #0
	bl memcpy
	ldr r0, [r5]
	bl NNS_G3dGetTex
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r5, r0, #0
	bl NNS_G3dTexSetTexKey
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl NNS_G3dPlttSetPlttKey
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02258830

	thumb_func_start ov49_022588A0
ov49_022588A0: ; 0x022588A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r1, sp, #0x54
	add r2, sp, #0x58
	add r3, sp, #0x5c
	bl sub_020182B0
	add r0, r5, #0
	add r1, sp, #0x48
	add r2, sp, #0x4c
	add r3, sp, #0x50
	bl sub_020182CC
	add r0, r5, #0
	mov r1, #0
	bl sub_020182EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_020182EC
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_020182EC
	add r5, r0, #0
	add r0, sp, #0x24
	bl MTX_Identity33_
	asr r0, r6, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	ldr r2, _02258954 ; =FX_SinCosTable_
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, sp, #0
	bl MTX_RotX33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	asr r0, r5, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _02258954 ; =FX_SinCosTable_
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotZ33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	asr r0, r7, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _02258954 ; =FX_SinCosTable_
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotY33_
	add r1, sp, #0x24
	add r0, sp, #0
	add r2, r1, #0
	bl MTX_Concat33
	ldr r0, [r4, #8]
	add r1, sp, #0x54
	add r2, sp, #0x24
	add r3, sp, #0x48
	bl sub_0201F990
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02258954: .word FX_SinCosTable_
	thumb_func_end ov49_022588A0

	thumb_func_start ov49_02258958
ov49_02258958: ; 0x02258958
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #4
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0x23
	mov r1, #0x2a
	add r2, r5, #0
	bl ov42_02227EE0
	str r0, [r4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	mov r0, #0xca
	add r2, r1, #0
	add r3, r5, #0
	bl GfGfxLoader_LoadFromNarc
	add r5, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	bl ov42_02227F48
	add r0, r5, #0
	bl Heap_Free
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02258958

	thumb_func_start ov49_02258994
ov49_02258994: ; 0x02258994
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl ov42_02227F28
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02258994

	thumb_func_start ov49_022589A8
ov49_022589A8: ; 0x022589A8
	mov r0, #0x23
	bx lr
	thumb_func_end ov49_022589A8

	thumb_func_start ov49_022589AC
ov49_022589AC: ; 0x022589AC
	ldr r3, _022589B4 ; =ov42_02227FA4
	ldr r0, [r0]
	bx r3
	nop
_022589B4: .word ov42_02227FA4
	thumb_func_end ov49_022589AC

	thumb_func_start ov49_022589B8
ov49_022589B8: ; 0x022589B8
	push {r3, lr}
	ldr r0, [r0]
	bl ov42_02227FDC
	lsr r0, r0, #0xf
	pop {r3, pc}
	thumb_func_end ov49_022589B8

	thumb_func_start ov49_022589C4
ov49_022589C4: ; 0x022589C4
	push {r3, lr}
	ldr r0, [r0]
	bl ov42_02227FDC
	ldr r1, _022589D4 ; =0x00007FFF
	and r0, r1
	pop {r3, pc}
	nop
_022589D4: .word 0x00007FFF
	thumb_func_end ov49_022589C4

	thumb_func_start ov49_022589D8
ov49_022589D8: ; 0x022589D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r5, #0
	ldr r7, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
_022589EA:
	ldr r0, [sp, #0x10]
	mov r4, #0
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_022589F2:
	lsl r1, r4, #0x10
	ldr r0, [sp]
	lsr r1, r1, #0x10
	add r2, r6, #0
	bl ov49_022589B8
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _02258A1A
	cmp r5, r7
	blo _02258A18
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	strh r4, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x14
	strh r1, [r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02258A18:
	add r5, r5, #1
_02258A1A:
	add r4, r4, #1
	cmp r4, #0x23
	blt _022589F2
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x2a
	blt _022589EA
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_022589D8

	thumb_func_start ov49_02258A30
ov49_02258A30: ; 0x02258A30
	ldr r3, _02258A4C ; =ov49_02269634
	mov r2, #0
_02258A34:
	ldrb r1, [r3]
	cmp r0, r1
	bne _02258A3E
	mov r0, #1
	bx lr
_02258A3E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x20
	blo _02258A34
	mov r0, #0
	bx lr
	nop
_02258A4C: .word ov49_02269634
	thumb_func_end ov49_02258A30

	thumb_func_start ov49_02258A50
ov49_02258A50: ; 0x02258A50
	ldr r3, _02258A6C ; =_02269624
	mov r2, #0
_02258A54:
	ldrb r1, [r3]
	cmp r0, r1
	bne _02258A5E
	mov r0, #1
	bx lr
_02258A5E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #3
	blo _02258A54
	mov r0, #0
	bx lr
	nop
_02258A6C: .word _02269624
	thumb_func_end ov49_02258A50

	thumb_func_start ov49_02258A70
ov49_02258A70: ; 0x02258A70
	ldr r3, _02258A8C ; =ov49_0226962C
	mov r2, #0
_02258A74:
	ldrb r1, [r3]
	cmp r0, r1
	bne _02258A7E
	mov r0, #1
	bx lr
_02258A7E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #7
	blo _02258A74
	mov r0, #0
	bx lr
	nop
_02258A8C: .word ov49_0226962C
	thumb_func_end ov49_02258A70

	thumb_func_start ov49_02258A90
ov49_02258A90: ; 0x02258A90
	ldr r3, _02258AAC ; =ov49_02269628
	mov r2, #0
_02258A94:
	ldrb r1, [r3]
	cmp r0, r1
	bne _02258A9E
	mov r0, #1
	bx lr
_02258A9E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #4
	blo _02258A94
	mov r0, #0
	bx lr
	nop
_02258AAC: .word ov49_02269628
	thumb_func_end ov49_02258A90

	thumb_func_start ov49_02258AB0
ov49_02258AB0: ; 0x02258AB0
	ldr r0, [r0]
	bx lr
	thumb_func_end ov49_02258AB0

	thumb_func_start ov49_02258AB4
ov49_02258AB4: ; 0x02258AB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	mov r1, #0x28
	str r2, [sp]
	str r3, [sp, #4]
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl memset
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov42_02228010
	str r0, [r4]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	add r1, r6, #0
	bl ov45_02230498
	str r0, [r4, #4]
	ldr r1, [sp, #4]
	mov r0, #0x20
	bl ov42_02229A40
	str r0, [r4, #0x10]
	mov r0, #0x28
	add r7, r5, #0
	mul r7, r0
	ldr r0, [sp, #4]
	add r1, r7, #0
	strh r5, [r4, #0xc]
	bl Heap_Alloc
	mov r1, #0
	add r2, r7, #0
	str r0, [r4, #8]
	bl memset
	ldr r0, [sp]
	str r0, [r4, #0x14]
	add r0, r4, #0
	strh r6, [r4, #0xe]
	bl ov49_022591D8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02258AB4

	thumb_func_start ov49_02258B20
ov49_02258B20: ; 0x02258B20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl Heap_Free
	ldr r0, [r4, #0x10]
	bl ov42_02229A78
	ldr r0, [r4, #4]
	bl ov45_02230638
	ldr r0, [r4]
	bl ov42_02228050
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	thumb_func_end ov49_02258B20

	thumb_func_start ov49_02258B44
ov49_02258B44: ; 0x02258B44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl ov42_0222807C
	add r0, r4, #0
	ldr r1, [r4, #4]
	add r0, #0x18
	bl ov49_02259A54
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02258B44

	thumb_func_start ov49_02258B5C
ov49_02258B5C: ; 0x02258B5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02258B8C
	add r4, r6, #0
_02258B6C:
	ldr r0, [r5, #8]
	add r0, r0, r4
	bl ov49_022593FC
	cmp r0, #0
	bne _02258B82
	ldr r0, [r5, #8]
	add r1, r5, #0
	add r0, r0, r4
	ldr r2, [r0, #0x24]
	blx r2
_02258B82:
	ldrh r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _02258B6C
_02258B8C:
	ldr r0, [r5, #0x14]
	bl ov49_02258AB0
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, sp, #8
	bl ov42_02229AC8
	cmp r0, #1
	bne _02258BC8
	add r7, sp, #0
	add r6, sp, #8
_02258BA4:
	ldr r1, [r5]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov42_02228C80
	cmp r0, #1
	bne _02258BBC
	ldr r0, [r5]
	add r1, r7, #0
	bl ov42_02228068
_02258BBC:
	ldr r0, [r5, #0x10]
	add r1, r6, #0
	bl ov42_02229AC8
	cmp r0, #1
	beq _02258BA4
_02258BC8:
	ldr r0, [r5, #4]
	bl ov45_02230680
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02258B5C

	thumb_func_start ov49_02258BD4
ov49_02258BD4: ; 0x02258BD4
	ldr r3, _02258BDC ; =ov45_022306B4
	ldr r0, [r0, #4]
	bx r3
	nop
_02258BDC: .word ov45_022306B4
	thumb_func_end ov49_02258BD4

	thumb_func_start ov49_02258BE0
ov49_02258BE0: ; 0x02258BE0
	ldr r3, _02258BE8 ; =ov45_022306F4
	ldr r0, [r0, #4]
	bx r3
	nop
_02258BE8: .word ov45_022306F4
	thumb_func_end ov49_02258BE0

	thumb_func_start ov49_02258BEC
ov49_02258BEC: ; 0x02258BEC
	add r3, r0, #0
	add r2, r1, #0
	ldr r1, [r3, #4]
	lsl r3, r2, #2
	ldr r2, _02258C00 ; =ov49_02269660
	add r0, #0x18
	ldr r2, [r2, r3]
	ldr r3, _02258C04 ; =ov49_02259A20
	bx r3
	nop
_02258C00: .word ov49_02269660
_02258C04: .word ov49_02259A20
	thumb_func_end ov49_02258BEC

	thumb_func_start ov49_02258C08
ov49_02258C08: ; 0x02258C08
	lsl r2, r1, #2
	ldr r1, _02258C14 ; =ov49_02269660
	ldr r3, _02258C18 ; =ov49_02259A3C
	add r0, #0x18
	ldr r1, [r1, r2]
	bx r3
	.balign 4, 0
_02258C14: .word ov49_02269660
_02258C18: .word ov49_02259A3C
	thumb_func_end ov49_02258C08

	thumb_func_start ov49_02258C1C
ov49_02258C1C: ; 0x02258C1C
	ldr r3, _02258C24 ; =ov42_02229A8C
	ldr r0, [r0, #0x10]
	bx r3
	nop
_02258C24: .word ov42_02229A8C
	thumb_func_end ov49_02258C1C

	thumb_func_start ov49_02258C28
ov49_02258C28: ; 0x02258C28
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r2, sp, #4
	add r4, r1, #0
	ldr r0, [r5, #0x14]
	mov r1, #3
	add r2, #2
	add r3, sp, #4
	bl ov49_022589D8
	cmp r0, #0
	bne _02258C4A
	bl GF_AssertFail
_02258C4A:
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02258C5C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02258C28

	thumb_func_start ov49_02258C5C
ov49_02258C5C: ; 0x02258C5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp]
	bl ov49_022593C0
	add r4, r0, #0
	lsl r0, r7, #4
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [sp]
	mov r2, #0
	lsl r0, r0, #4
	strh r0, [r1, #2]
	strh r6, [r1, #4]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _02258C8C
	strh r2, [r1, #0xa]
	b _02258C90
_02258C8C:
	mov r0, #0x61
	strh r0, [r1, #0xa]
_02258C90:
	ldr r0, [r5]
	add r1, sp, #4
	bl ov42_022280B8
	str r0, [r4]
	ldr r0, [r5, #4]
	ldr r1, [r4]
	bl ov45_0223070C
	str r0, [r4, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	str r4, [r5, #0x20]
	bl ov49_02258EEC
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02258C5C

	thumb_func_start ov49_02258CB8
ov49_02258CB8: ; 0x02258CB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	bl ov49_022593C0
	mov r6, #0
	str r0, [sp, #8]
	add r4, r6, #0
_02258CCC:
	str r4, [sp]
	add r2, sp, #0xc
	ldr r0, [r5, #0x14]
	add r1, r7, #4
	add r2, #2
	add r3, sp, #0xc
	bl ov49_022589D8
	cmp r0, #0
	bne _02258CE6
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02258CE6:
	add r0, r5, #0
	bl ov49_02258DAC
	cmp r0, #0
	bne _02258CF4
	mov r6, #1
	b _02258D06
_02258CF4:
	add r1, sp, #0xc
	add r2, sp, #0xc
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	bl ov49_02258FDC
	cmp r0, #0
	bne _02258D06
	mov r6, #1
_02258D06:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r6, #0
	beq _02258CCC
	add r1, sp, #0xc
	ldrh r0, [r1, #2]
	lsl r0, r0, #4
	strh r0, [r1, #4]
	ldrh r0, [r1]
	lsl r0, r0, #4
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	mov r0, #0
	strh r0, [r1, #0xa]
	mov r0, #1
	strh r0, [r1, #0xc]
	ldr r0, [sp, #4]
	strh r0, [r1, #0xe]
	ldr r0, [r5]
	add r1, sp, #0x10
	bl ov42_022280B8
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, [r1]
	bl ov45_0223070C
	ldr r1, [sp, #8]
	mov r2, #0
	str r0, [r1, #4]
	add r0, r5, #0
	bl ov49_02258EEC
	ldr r0, [sp, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02258CB8

	thumb_func_start ov49_02258D54
ov49_02258D54: ; 0x02258D54
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov45_02230884
	ldr r0, [r4]
	bl ov42_02228100
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl memset
	pop {r4, pc}
	thumb_func_end ov49_02258D54

	thumb_func_start ov49_02258D70
ov49_02258D70: ; 0x02258D70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xc]
	add r7, r1, #0
	mov r6, #0
	cmp r0, #0
	ble _02258DA6
	add r4, r6, #0
_02258D80:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02258D9C
	mov r1, #4
	bl ov42_02228188
	cmp r0, r7
	bne _02258D9C
	mov r0, #0x28
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_02258D9C:
	ldrh r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _02258D80
_02258DA6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02258D70

	thumb_func_start ov49_02258DAC
ov49_02258DAC: ; 0x02258DAC
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov49_02258DAC

	thumb_func_start ov49_02258DB0
ov49_02258DB0: ; 0x02258DB0
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov49_02258DB0

	thumb_func_start ov49_02258DB4
ov49_02258DB4: ; 0x02258DB4
	push {r0, r1, r2, r3}
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _02258DC4
	bl GF_AssertFail
_02258DC4:
	add r1, sp, #8
	ldrh r2, [r1, #4]
	mov r3, sp
	ldr r0, [r4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov42_0222839C
	add r1, sp, #8
	mov r3, sp
	ldrh r2, [r1, #4]
	ldr r0, [r4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov42_022283AC
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	bl ov42_022281F8
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
	thumb_func_end ov49_02258DB4

	thumb_func_start ov49_02258E04
ov49_02258E04: ; 0x02258E04
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r1, sp, #0x10
	add r4, r2, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	sub r3, r3, #4
	add r5, r0, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov49_02258DB4
	ldr r0, [r5]
	mov r1, #6
	add r2, r4, #0
	bl ov42_022281F8
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
	thumb_func_end ov49_02258E04

	thumb_func_start ov49_02258E34
ov49_02258E34: ; 0x02258E34
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _02258E44
	bl GF_AssertFail
_02258E44:
	ldr r0, [r4]
	bl ov42_022282F4
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	lsl r1, r2, #0x10
	orr r0, r1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02258E34

	thumb_func_start ov49_02258E60
ov49_02258E60: ; 0x02258E60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	bne _02258E70
	bl GF_AssertFail
_02258E70:
	ldr r0, [r5]
	add r1, r4, #0
	bl ov42_02228188
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_02258E60

	thumb_func_start ov49_02258E7C
ov49_02258E7C: ; 0x02258E7C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	mov r1, #5
	add r6, r2, #0
	add r7, r3, #0
	bl ov42_02228188
	cmp r0, #0
	beq _02258E96
	bl GF_AssertFail
_02258E96:
	ldr r0, [r4]
	mov r1, #4
	bl ov42_02228188
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_0225927C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02258E7C

	thumb_func_start ov49_02258EAC
ov49_02258EAC: ; 0x02258EAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	add r7, r3, #0
	bl ov42_022282DC
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	strh r6, [r1, #8]
	strb r7, [r1, #0xa]
	ldr r0, [r4]
	mov r1, #4
	bl ov42_02228188
	add r1, sp, #0
	strb r0, [r1, #0xb]
	ldr r0, [r5]
	add r1, sp, #4
	bl ov42_02228068
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02258EAC

	thumb_func_start ov49_02258EEC
ov49_02258EEC: ; 0x02258EEC
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #0xa
	blt _02258EFC
	bl GF_AssertFail
_02258EFC:
	ldrb r0, [r5, #0xb]
	lsl r1, r0, #2
	ldr r0, _02258F30 ; =ov49_02269698
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _02258F0E
	add r0, r5, #0
	add r1, r6, #0
	blx r2
_02258F0E:
	mov r2, #0
	strh r2, [r5, #8]
	strb r2, [r5, #0xa]
	add r1, r5, #0
	strb r4, [r5, #0xb]
	add r1, #0xc
	mov r0, #0x18
_02258F1C:
	strb r2, [r1]
	add r1, r1, #1
	sub r0, r0, #1
	bne _02258F1C
	ldr r0, _02258F34 ; =ov49_022696C0
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	str r0, [r5, #0x24]
	pop {r4, r5, r6, pc}
	nop
_02258F30: .word ov49_02269698
_02258F34: .word ov49_022696C0
	thumb_func_end ov49_02258EEC

	thumb_func_start ov49_02258F38
ov49_02258F38: ; 0x02258F38
	ldrb r0, [r0, #0xa]
	bx lr
	thumb_func_end ov49_02258F38

	thumb_func_start ov49_02258F3C
ov49_02258F3C: ; 0x02258F3C
	ldrb r0, [r0, #0xb]
	bx lr
	thumb_func_end ov49_02258F3C

	thumb_func_start ov49_02258F40
ov49_02258F40: ; 0x02258F40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	mov r1, #6
	bl ov42_02228188
	add r2, r0, #0
	ldr r0, [r4]
	ldr r1, [r5]
	bl ov42_022283BC
	cmp r0, #0
	bne _02258F60
	mov r0, #0
	pop {r3, r4, r5, pc}
_02258F60:
	mov r1, #4
	bl ov42_02228188
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_02258D70
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02258F40

	thumb_func_start ov49_02258F70
ov49_02258F70: ; 0x02258F70
	ldr r3, _02258F78 ; =ov45_022308B8
	ldr r0, [r0, #4]
	bx r3
	nop
_02258F78: .word ov45_022308B8
	thumb_func_end ov49_02258F70

	thumb_func_start ov49_02258F7C
ov49_02258F7C: ; 0x02258F7C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	lsl r0, r1, #4
	add r1, sp, #0
	strh r0, [r1]
	lsl r0, r2, #4
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov42_022284A4
	cmp r0, #0
	bne _02258FAA
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02258FAA:
	ldrh r2, [r4, #0xc]
	mov r1, #0
	cmp r2, #0
	ble _02258FD0
	ldr r3, [r4, #8]
_02258FB4:
	ldr r2, [r3]
	cmp r2, r0
	bne _02258FC6
	mov r0, #0x28
	ldr r2, [r4, #8]
	mul r0, r1
	add sp, #4
	add r0, r2, r0
	pop {r3, r4, pc}
_02258FC6:
	ldrh r2, [r4, #0xc]
	add r1, r1, #1
	add r3, #0x28
	cmp r1, r2
	blt _02258FB4
_02258FD0:
	bl GF_AssertFail
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02258F7C

	thumb_func_start ov49_02258FDC
ov49_02258FDC: ; 0x02258FDC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r4, r2, #0
	bl ov42_022282DC
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5]
	bl ov42_022282E8
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r1, [r2, r1]
	lsl r0, r6, #4
	cmp r1, r0
	bne _0225902C
	mov r1, #0xe
	ldrsh r2, [r2, r1]
	lsl r1, r4, #4
	cmp r2, r1
	bne _0225902C
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225902C:
	add r2, sp, #0
	mov r1, #8
	ldrsh r1, [r2, r1]
	cmp r1, r0
	bne _02259046
	mov r0, #0xa
	ldrsh r1, [r2, r0]
	lsl r0, r4, #4
	cmp r1, r0
	bne _02259046
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_02259046:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_02258FDC

	thumb_func_start ov49_0225904C
ov49_0225904C: ; 0x0225904C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r6, r0, #0
	ldr r0, [r1]
	str r2, [sp]
	str r3, [sp, #4]
	bl ov42_022282DC
	add r4, sp, #0x1c
	strh r0, [r4, #4]
	lsr r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	mov r5, sp
	ldr r7, _0225912C ; =ov49_02269654
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #6]
	sub r5, r5, #4
	strh r0, [r4, #0xe]
	mov r0, #0
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0xc]
	str r0, [sp, #0x14]
	ldrh r0, [r4, #0xe]
	str r0, [sp, #0x18]
_0225907E:
	ldr r0, [sp, #0x14]
	strh r0, [r5]
	ldr r0, [sp, #0x18]
	strh r0, [r5, #2]
	ldrb r1, [r7]
	ldr r0, [r5]
	bl ov42_02228270
	strh r0, [r4]
	lsr r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0xc]
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #0xc]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov49_022589AC
	cmp r0, #1
	beq _02259118
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r6, #0x14]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov49_022589C4
	cmp r0, #0
	beq _022590E8
	cmp r0, #0x2a
	bne _02259118
_022590E8:
	ldrh r1, [r4, #8]
	ldr r0, [r6]
	strh r1, [r5]
	ldrh r1, [r4, #0xa]
	strh r1, [r5, #2]
	ldr r1, [r5]
	bl ov42_022284A4
	cmp r0, #0
	bne _02259118
	ldr r1, _0225912C ; =ov49_02269654
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	str r1, [r0]
	add r1, sp, #0x1c
	ldr r0, [sp, #4]
	ldrh r2, [r1, #8]
	add sp, #0x2c
	strh r2, [r0]
	ldrh r1, [r1, #0xa]
	strh r1, [r0, #2]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02259118:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0225907E
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0225912C: .word ov49_02269654
	thumb_func_end ov49_0225904C

	thumb_func_start ov49_02259130
ov49_02259130: ; 0x02259130
	ldr r3, _02259138 ; =ov45_0223089C
	ldr r0, [r0, #4]
	bx r3
	nop
_02259138: .word ov45_0223089C
	thumb_func_end ov49_02259130

	thumb_func_start ov49_0225913C
ov49_0225913C: ; 0x0225913C
	ldr r3, _02259144 ; =ov45_022308C0
	ldr r0, [r0, #4]
	bx r3
	nop
_02259144: .word ov45_022308C0
	thumb_func_end ov49_0225913C

	thumb_func_start ov49_02259148
ov49_02259148: ; 0x02259148
	ldr r3, _02259150 ; =ov45_022308E4
	ldr r0, [r0, #4]
	bx r3
	nop
_02259150: .word ov45_022308E4
	thumb_func_end ov49_02259148

	thumb_func_start ov49_02259154
ov49_02259154: ; 0x02259154
	ldr r3, _0225915C ; =ov45_02230908
	ldr r0, [r0, #4]
	bx r3
	nop
_0225915C: .word ov45_02230908
	thumb_func_end ov49_02259154

	thumb_func_start ov49_02259160
ov49_02259160: ; 0x02259160
	ldr r3, _02259168 ; =ov45_02230920
	ldr r0, [r0, #4]
	bx r3
	nop
_02259168: .word ov45_02230920
	thumb_func_end ov49_02259160

	thumb_func_start ov49_0225916C
ov49_0225916C: ; 0x0225916C
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _0225917C
	mov r1, #1
	bl ov45_0223093C
	pop {r3, pc}
_0225917C:
	bl ov45_02230968
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225916C

	thumb_func_start ov49_02259184
ov49_02259184: ; 0x02259184
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _02259194
	mov r1, #0
	bl ov45_0223093C
	pop {r3, pc}
_02259194:
	bl ov45_02230968
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_02259184

	thumb_func_start ov49_0225919C
ov49_0225919C: ; 0x0225919C
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _022591AC
	mov r1, #2
	bl ov45_0223093C
	pop {r3, pc}
_022591AC:
	bl ov45_02230968
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225919C

	thumb_func_start ov49_022591B4
ov49_022591B4: ; 0x022591B4
	ldr r3, _022591BC ; =ov45_022308B0
	ldr r0, [r0, #4]
	bx r3
	nop
_022591BC: .word ov45_022308B0
	thumb_func_end ov49_022591B4

	thumb_func_start ov49_022591C0
ov49_022591C0: ; 0x022591C0
	ldr r3, _022591C8 ; =ov45_02230978
	ldr r0, [r0, #4]
	bx r3
	nop
_022591C8: .word ov45_02230978
	thumb_func_end ov49_022591C0

	thumb_func_start ov49_022591CC
ov49_022591CC: ; 0x022591CC
	ldr r3, _022591D4 ; =ov45_02230994
	ldr r0, [r0, #4]
	bx r3
	nop
_022591D4: .word ov45_02230994
	thumb_func_end ov49_022591CC

	thumb_func_start ov49_022591D8
ov49_022591D8: ; 0x022591D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	ldr r4, _02259278 ; =ov49_02269678
	str r0, [sp, #8]
_022591E4:
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	ldrb r1, [r4]
	add r2, sp, #0xc
	ldr r0, [r5, #0x14]
	add r2, #2
	add r3, sp, #0xc
	bl ov49_022589D8
	cmp r0, #1
	bne _02259266
	add r7, sp, #0xc
_022591FE:
	add r0, r5, #0
	bl ov49_022593C0
	add r6, r0, #0
	ldrh r0, [r7, #2]
	add r1, sp, #0x10
	lsl r0, r0, #4
	strh r0, [r7, #4]
	ldrh r0, [r7]
	lsl r0, r0, #4
	strh r0, [r7, #6]
	ldrb r0, [r4, #4]
	strh r0, [r7, #8]
	mov r0, #0
	strh r0, [r7, #0xa]
	ldrb r0, [r4, #1]
	strh r0, [r7, #0xc]
	ldrh r0, [r4, #2]
	strh r0, [r7, #0xe]
	ldr r0, [r5]
	bl ov42_022280B8
	add r1, r0, #0
	str r1, [r6]
	ldr r0, [r5, #4]
	bl ov45_0223070C
	str r0, [r6, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov49_02258EEC
	ldrb r0, [r4]
	cmp r0, #0x61
	bne _02259248
	str r6, [r5, #0x24]
_02259248:
	ldr r0, [sp, #4]
	add r2, sp, #0xc
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	str r0, [sp]
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	add r2, #2
	add r3, sp, #0xc
	bl ov49_022589D8
	cmp r0, #1
	beq _022591FE
_02259266:
	ldr r0, [sp, #8]
	add r4, #8
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blo _022591E4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02259278: .word ov49_02269678
	thumb_func_end ov49_022591D8

	thumb_func_start ov49_0225927C
ov49_0225927C: ; 0x0225927C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	add r1, sp, #0
	strb r3, [r4, #3]
	bl ov49_02258C1C
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225927C

	thumb_func_start ov49_02259294
ov49_02259294: ; 0x02259294
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl MTRandom
	add r1, r4, #0
	bl _u32_div_f
	ldrb r0, [r5, r1]
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02259294

	thumb_func_start ov49_022592A8
ov49_022592A8: ; 0x022592A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r1]
	add r6, r2, #0
	add r4, r3, #0
	bl ov42_022282DC
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	add r1, r6, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov42_02228270
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #8
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r3, [r2, r1]
	ldr r0, [r5, #0x14]
	asr r1, r3, #3
	lsr r1, r1, #0x1c
	add r1, r3, r1
	mov r3, #0xa
	ldrsh r3, [r2, r3]
	lsl r1, r1, #0xc
	lsr r1, r1, #0x10
	asr r2, r3, #3
	lsr r2, r2, #0x1c
	add r2, r3, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x10
	bl ov49_022589B8
	cmp r0, r4
	bne _02259318
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_02259318:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_022592A8

	thumb_func_start ov49_02259320
ov49_02259320: ; 0x02259320
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov49_02259320

	thumb_func_start ov49_0225932C
ov49_0225932C: ; 0x0225932C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r6, [r5, #8]
	beq _02259348
	lsl r0, r4, #0xc
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02259356
_02259348:
	lsl r0, r4, #0xc
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02259356:
	bl _ffix
	add r2, r0, #0
	asr r1, r6, #0x1f
	add r0, r6, #0
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0225938E
	lsl r0, r0, #0xc
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225939C
_0225938E:
	lsl r0, r0, #0xc
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225939C:
	bl _ffix
	add r1, r0, #0
	add r0, r6, #0
	bl FX_Div
	ldr r1, [r5, #4]
	add r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #0xc]
	cmp r4, r0
	blo _022593B8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022593B8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225932C

	thumb_func_start ov49_022593BC
ov49_022593BC: ; 0x022593BC
	ldr r0, [r0]
	bx lr
	thumb_func_end ov49_022593BC

	thumb_func_start ov49_022593C0
ov49_022593C0: ; 0x022593C0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _022593EE
	add r4, r6, #0
_022593CE:
	ldr r0, [r5, #8]
	add r0, r0, r4
	bl ov49_022593FC
	cmp r0, #0
	beq _022593E4
	mov r0, #0x28
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_022593E4:
	ldrh r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x28
	cmp r6, r0
	blt _022593CE
_022593EE:
	bl GF_AssertFail
	mov r0, #0x28
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_022593C0

	thumb_func_start ov49_022593FC
ov49_022593FC: ; 0x022593FC
	ldr r0, [r0]
	cmp r0, #0
	bne _02259406
	mov r0, #1
	bx lr
_02259406:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_022593FC

	thumb_func_start ov49_0225940C
ov49_0225940C: ; 0x0225940C
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225940C

	thumb_func_start ov49_02259410
ov49_02259410: ; 0x02259410
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7]
	add r5, r1, #0
	mov r1, #6
	bl ov42_02228188
	add r4, r0, #0
	ldr r0, [r7]
	mov r1, #4
	bl ov42_02228188
	add r6, r0, #0
	ldr r0, [r7]
	mov r1, #5
	bl ov42_02228188
	cmp r0, #0
	bne _022594D2
	ldr r0, _022594D4 ; =gSystem
	mov r1, #2
	ldr r0, [r0, #0x44]
	add r2, r0, #0
	tst r2, r1
	beq _02259444
	mov r1, #3
_02259444:
	mov r2, #0x40
	tst r2, r0
	beq _02259468
	cmp r4, #0
	bne _0225945A
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov49_0225927C
	pop {r3, r4, r5, r6, r7, pc}
_0225945A:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	add r3, r6, #0
	bl ov49_0225927C
	pop {r3, r4, r5, r6, r7, pc}
_02259468:
	mov r2, #0x80
	tst r2, r0
	beq _0225948C
	cmp r4, #1
	bne _0225947E
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov49_0225927C
	pop {r3, r4, r5, r6, r7, pc}
_0225947E:
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	add r3, r6, #0
	bl ov49_0225927C
	pop {r3, r4, r5, r6, r7, pc}
_0225948C:
	mov r2, #0x20
	tst r2, r0
	beq _022594B0
	cmp r4, #2
	bne _022594A2
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov49_0225927C
	pop {r3, r4, r5, r6, r7, pc}
_022594A2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	add r3, r6, #0
	bl ov49_0225927C
	pop {r3, r4, r5, r6, r7, pc}
_022594B0:
	mov r2, #0x10
	tst r0, r2
	beq _022594D2
	cmp r4, #3
	bne _022594C6
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov49_0225927C
	pop {r3, r4, r5, r6, r7, pc}
_022594C6:
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	add r3, r6, #0
	bl ov49_0225927C
_022594D2:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022594D4: .word gSystem
	thumb_func_end ov49_02259410

	thumb_func_start ov49_022594D8
ov49_022594D8: ; 0x022594D8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	add r5, r1, #0
	cmp r0, #4
	bhi _022595C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022594F0: ; jump table
	.short _022594FA - _022594F0 - 2 ; case 0
	.short _0225950C - _022594F0 - 2 ; case 1
	.short _02259522 - _022594F0 - 2 ; case 2
	.short _0225958E - _022594F0 - 2 ; case 3
	.short _022595B0 - _022594F0 - 2 ; case 4
_022594FA:
	ldr r0, _022595C4 ; =ov49_02269658
	mov r1, #4
	bl ov49_02259294
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225950C:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022595C0
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02259522:
	ldr r0, [r4]
	mov r1, #4
	bl ov42_02228188
	add r6, r0, #0
	ldr r0, [r4]
	mov r1, #6
	bl ov42_02228188
	add r7, r0, #0
	ldr r0, _022595C8 ; =ov49_0226965C
	mov r1, #4
	bl ov49_02259294
	strh r0, [r4, #0xe]
	mov r2, #0xe
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #4
	bl ov49_022592A8
	cmp r0, #1
	bne _0225957A
	mov r0, #0xe
	ldrsh r3, [r4, r0]
	cmp r7, r3
	bne _0225956A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02258E7C
	mov r0, #4
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225956A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov49_02258E7C
	mov r0, #3
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225957A:
	mov r3, #0xe
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov49_02258E7C
	mov r0, #4
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225958E:
	ldr r0, [r4]
	mov r1, #5
	bl ov42_02228188
	cmp r0, #0
	bne _022595C0
	mov r3, #0xe
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02258E7C
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022595B0:
	ldr r0, [r4]
	mov r1, #5
	bl ov42_02228188
	cmp r0, #0
	bne _022595C0
	mov r0, #0
	strh r0, [r4, #8]
_022595C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022595C4: .word ov49_02269658
_022595C8: .word ov49_0226965C
	thumb_func_end ov49_022594D8


    .rodata

_02269624:
	.byte 0x27, 0x28, 0x29, 0x00

ov49_02269628: ; 0x02269628
	.byte 0x02, 0x03, 0x04, 0x05

ov49_0226962C: ; 0x0226962C
	.byte 0x24, 0x25, 0x26, 0x27
	.byte 0x28, 0x29, 0x2B, 0x00

ov49_02269634: ; 0x02269634
	.byte 0x01, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10
	.byte 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20
	.byte 0x21, 0x22, 0x23, 0x2C

ov49_02269654: ; 0x02269654
	.byte 0x03, 0x02, 0x01, 0x00

ov49_02269658: ; 0x02269658
	.byte 0x20, 0x40, 0x80, 0x90

ov49_0226965C: ; 0x0226965C
	.byte 0x00, 0x01, 0x02, 0x03

ov49_02269660: ; 0x02269660
	.byte 0x10, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov49_02269678: ; 0x02269678
	.byte 0x40, 0x02, 0x1E, 0x01, 0xFF, 0x00, 0x00, 0x00
	.byte 0x41, 0x01, 0x1E, 0x01, 0xFF, 0x00, 0x00, 0x00, 0x42, 0x01, 0x1D, 0x01, 0xFF, 0x00, 0x00, 0x00
	.byte 0x61, 0x01, 0x1D, 0x01, 0xFE, 0x00, 0x00, 0x00

ov49_02269698: ; 0x02269698
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov49_022599F8

ov49_022696C0: ; 0x022696C0
	.word ov49_0225940C
	.word ov49_02259410
	.word ov49_022594D8
	.word ov49_022595CC
	.word ov49_0225967C
	.word ov49_0225974C
	.word ov49_02259758
	.word ov49_02259734
	.word ov49_02259740
	.word ov49_0225991C

