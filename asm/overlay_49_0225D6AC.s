	.include "asm/macros.inc"
	.include "overlay_49_0225D6AC.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_0225D6AC
ov49_0225D6AC: ; 0x0225D6AC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	str r1, [sp]
	mov r7, #0
	add r4, r6, #0
	add r5, #0x20
_0225D6BA:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _0225D6D4
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_020180F8
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	str r0, [r1]
_0225D6D4:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r7, #5
	blt _0225D6BA
	mov r4, #0
_0225D6E0:
	add r0, r6, #0
	bl ov49_0225D574
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #2
	blt _0225D6E0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225D6AC

	thumb_func_start ov49_0225D6F0
ov49_0225D6F0: ; 0x0225D6F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #1
	add r7, r1, #0
	str r0, [r6]
	mov r0, #0
	str r0, [sp]
	add r4, r7, #0
	add r5, r6, #4
_0225D704:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020181B0
	add r0, r5, #0
	mov r1, #1
	bl sub_020182A0
	ldr r0, [sp]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x78
	str r0, [sp]
	cmp r0, #2
	blt _0225D704
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x7c
	add r4, r7, #0
	str r0, [sp, #8]
	add r0, r6, #4
	mov r5, #0
	add r4, #0x20
	str r0, [sp, #4]
_0225D734:
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #1
	bne _0225D75C
	add r1, r6, #0
	add r1, #0xf4
	mov r0, #1
	str r0, [r1]
	cmp r5, #3
	beq _0225D754
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_020181D4
	b _0225D75C
_0225D754:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_020181D4
_0225D75C:
	add r5, r5, #1
	add r7, r7, #4
	add r6, r6, #4
	add r4, #0x14
	cmp r5, #4
	blt _0225D734
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225D6F0

	thumb_func_start ov49_0225D76C
ov49_0225D76C: ; 0x0225D76C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r0, [sp]
	add r0, #0x7c
	mov r6, #0
	add r4, r7, #0
	add r5, #0x20
	str r0, [sp]
_0225D77E:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #1
	bne _0225D7A6
	add r1, r4, #0
	add r1, #0xf4
	mov r0, #0
	str r0, [r1]
	cmp r6, #3
	beq _0225D79E
	add r0, r7, #4
	add r1, r5, #0
	bl sub_020181E0
	b _0225D7A6
_0225D79E:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_020181E0
_0225D7A6:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #4
	blt _0225D77E
	mov r0, #0
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D76C

	thumb_func_start ov49_0225D7B8
ov49_0225D7B8: ; 0x0225D7B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, r1, #0
	mov r0, #0x42
	add r4, #0x20
	lsl r0, r0, #2
	add r6, r5, r0
	add r7, r4, #0
_0225D7CC:
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _0225D7EE
	mov r2, #1
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl ov49_0225D57C
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_02018198
_0225D7EE:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	add r4, #0x14
	add r6, r6, #4
	add r7, #0x14
	str r0, [sp]
	cmp r0, #5
	blt _0225D7CC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D7B8

	thumb_func_start ov49_0225D804
ov49_0225D804: ; 0x0225D804
	push {r3, r4, r5, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _0225D81E
	mov r4, #0
	add r5, r0, #4
_0225D810:
	add r0, r5, #0
	bl sub_020181EC
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #2
	blt _0225D810
_0225D81E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225D804

	thumb_func_start ov49_0225D820
ov49_0225D820: ; 0x0225D820
	push {r4, lr}
	mov r1, #0x49
	lsl r1, r1, #2
	ldrb r4, [r0, r1]
	mov r2, #0
	cmp r4, #0
	ble _0225D84A
	sub r1, #8
	ldr r3, [r0, r1]
	add r1, r3, #0
_0225D834:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0225D842
	mov r0, #0xb4
	mul r0, r2
	add r0, r3, r0
	pop {r4, pc}
_0225D842:
	add r2, r2, #1
	add r1, #0xb4
	cmp r2, r4
	blt _0225D834
_0225D84A:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225D820

	thumb_func_start ov49_0225D854
ov49_0225D854: ; 0x0225D854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	mov r7, #0x4a
	str r0, [sp, #0x58]
	mov r0, #0
	str r0, [sp, #0x40]
	add r0, r3, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x20]
	add r0, #0x20
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x20]
	lsl r7, r7, #2
_0225D878:
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x20]
	mov r6, #0
_0225D87E:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x58]
	add r0, r5, #0
	bl ov49_02258830
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _0225D87E
	ldr r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #2
	blt _0225D878
	ldr r4, [sp, #8]
	ldr r6, [sp, #0x14]
	mov r7, #0
	add r5, r4, #0
_0225D8B2:
	mov r0, #0
	mov r1, #0x12
	str r0, [sp]
	lsl r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r1]
	ldr r3, [sp, #0x58]
	mov r2, #0
	bl GfGfxLoader_LoadFromOpenNarc
	str r0, [r4]
	bl NNS_G3dGetMdlSet
	str r0, [r4, #4]
	cmp r0, #0
	beq _0225D8F2
	add r1, r0, #0
	add r1, #8
	beq _0225D8E6
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _0225D8E6
	ldrh r2, [r0, #0xe]
	add r1, r1, r2
	add r1, r1, #4
	b _0225D8E8
_0225D8E6:
	mov r1, #0
_0225D8E8:
	cmp r1, #0
	beq _0225D8F2
	ldr r1, [r1]
	add r0, r0, r1
	b _0225D8F4
_0225D8F2:
	mov r0, #0
_0225D8F4:
	str r0, [r4, #8]
	ldr r0, [r5, #0x20]
	bl NNS_G3dGetTex
	str r0, [r4, #0xc]
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x10
	add r5, #0xc
	cmp r7, #2
	blt _0225D8B2
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r7, [sp, #0x14]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	str r0, [sp, #0x38]
	add r0, #0x38
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	str r0, [sp, #0x30]
_0225D924:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	ldr r6, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	ldr r5, [sp, #0x30]
	str r0, [sp, #0x28]
_0225D934:
	mov r0, #5
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	ldr r1, [sp, #0x14]
	sub r0, #0x20
	ldr r0, [r1, r0]
	cmp r0, r3
	beq _0225D988
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	bl sub_020180BC
	ldr r0, [sp, #0x18]
	cmp r0, #1
	blt _0225D988
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	bls _0225D988
_0225D96A:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	beq _0225D97C
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl NNS_G3dAnmObjDisableID
_0225D97C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	add r4, r4, #1
	cmp r4, r0
	blo _0225D96A
_0225D988:
	ldr r0, [sp, #0x2c]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r5, #0x14
	add r0, #0x14
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0225D934
	ldr r0, [sp, #0x3c]
	add r7, r7, #4
	add r0, #0x10
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	add r0, #0x50
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r0, #0x50
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #2
	blt _0225D924
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225D854

	thumb_func_start ov49_0225D9D0
ov49_0225D9D0: ; 0x0225D9D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r7, [sp]
	mov r0, #0
	add r6, r1, #0
	str r0, [sp, #8]
	add r7, #0x38
_0225D9E0:
	mov r4, #0
	add r5, r7, #0
_0225D9E4:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020180F8
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _0225D9E4
	ldr r0, [sp, #8]
	add r7, #0x50
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _0225D9E0
	ldr r4, [sp]
	mov r5, #0
_0225DA04:
	ldr r0, [r4]
	bl Heap_Free
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #2
	blt _0225DA04
	mov r0, #0
	ldr r7, _0225DA68 ; =NNS_GfdDefaultFuncFreeTexVram
	str r0, [sp, #4]
_0225DA18:
	ldr r4, [sp]
	mov r5, #0
_0225DA1C:
	ldr r0, [r4, #0x20]
	bl NNS_G3dGetTex
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r6, r0, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r0, [sp, #0x10]
	ldr r1, [r7]
	blx r1
	ldr r0, [sp, #0xc]
	ldr r1, [r7]
	blx r1
	add r0, r6, #0
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _0225DA6C ; =NNS_GfdDefaultFuncFreePlttVram
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0x20]
	bl Heap_Free
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _0225DA1C
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _0225DA18
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225DA68: .word NNS_GfdDefaultFuncFreeTexVram
_0225DA6C: .word NNS_GfdDefaultFuncFreePlttVram
	thumb_func_end ov49_0225D9D0

	thumb_func_start ov49_0225DA70
ov49_0225DA70: ; 0x0225DA70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r7, #0
	str r0, [sp]
	add r4, r0, #0
	add r0, r1, #0
	str r1, [sp, #4]
	add r0, #0x38
	add r6, r7, #0
	add r5, #0x8c
	str r0, [sp, #4]
_0225DA88:
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0225DAEC
	cmp r7, #3
	bhi _0225DAE8
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DA9E: ; jump table
	.short _0225DAA6 - _0225DA9E - 2 ; case 0
	.short _0225DAC0 - _0225DA9E - 2 ; case 1
	.short _0225DAA6 - _0225DA9E - 2 ; case 2
	.short _0225DAC0 - _0225DA9E - 2 ; case 3
_0225DAA6:
	ldr r1, [sp]
	mov r2, #0x50
	ldrb r1, [r1, #2]
	add r0, r5, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r1, r1, r2
	mov r2, #1
	add r1, r1, r6
	lsl r2, r2, #0xc
	bl ov49_0225D57C
	b _0225DAEC
_0225DAC0:
	ldr r1, [sp]
	mov r2, #0x50
	ldrb r1, [r1, #2]
	add r0, r5, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r1, r1, r2
	mov r2, #1
	add r1, r1, r6
	lsl r2, r2, #0xc
	bl ov49_0225D5A0
	cmp r0, #1
	bne _0225DAEC
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x7c]
	add r1, #0x8c
	str r0, [r1]
	b _0225DAEC
_0225DAE8:
	bl GF_AssertFail
_0225DAEC:
	add r7, r7, #1
	add r4, r4, #4
	add r6, #0x14
	add r5, r5, #4
	cmp r7, #4
	blt _0225DA88
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225DA70

	thumb_func_start ov49_0225DAFC
ov49_0225DAFC: ; 0x0225DAFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5]
	str r1, [sp]
	cmp r0, #0
	beq _0225DBF2
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r0, r0, r1
	add r1, r5, #4
	bl ov49_022588A0
	cmp r0, #0
	beq _0225DBF2
	ldrb r0, [r5, #1]
	cmp r0, #3
	blo _0225DB26
	bl GF_AssertFail
_0225DB26:
	ldrb r0, [r5, #2]
	cmp r0, #2
	blo _0225DB30
	bl GF_AssertFail
_0225DB30:
	ldrb r1, [r5, #2]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x20]
	bl NNS_G3dGetTex
	ldrb r1, [r5, #2]
	lsl r2, r1, #4
	ldr r1, [sp]
	add r1, r1, r2
	str r0, [r1, #0xc]
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, [r1, #4]
	ldr r1, [r1, #0xc]
	bl NNS_G3dBindMdlSet
	cmp r0, #0
	bne _0225DB6A
	bl GF_AssertFail
_0225DB6A:
	ldr r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r6, r5, #0
	add r4, r0, #0
	add r7, #0x38
_0225DB76:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _0225DBA0
	ldrb r2, [r5, #2]
	mov r1, #0x50
	add r0, r5, #4
	mul r1, r2
	add r1, r7, r1
	add r1, r1, r4
	bl sub_020181D4
	ldrb r1, [r5, #2]
	mov r0, #0x50
	mul r0, r1
	add r1, r6, #0
	add r1, #0x8c
	add r0, r7, r0
	ldr r1, [r1]
	add r0, r0, r4
	bl sub_02018198
_0225DBA0:
	ldr r0, [sp, #4]
	add r6, r6, #4
	add r0, r0, #1
	add r4, #0x14
	str r0, [sp, #4]
	cmp r0, #4
	blt _0225DB76
	add r0, r5, #4
	bl sub_020181EC
	ldr r0, [sp]
	mov r7, #0
	str r0, [sp, #8]
	add r0, #0x38
	add r6, r5, #0
	add r4, r7, #0
	str r0, [sp, #8]
_0225DBC2:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _0225DBDA
	ldrb r1, [r5, #2]
	mov r2, #0x50
	add r0, r5, #4
	mul r2, r1
	ldr r1, [sp, #8]
	add r1, r1, r2
	add r1, r1, r4
	bl sub_020181E0
_0225DBDA:
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	cmp r7, #4
	blt _0225DBC2
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl NNS_G3dReleaseMdlSet
_0225DBF2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225DAFC

	thumb_func_start ov49_0225DBF8
ov49_0225DBF8: ; 0x0225DBF8
	push {r4, lr}
	ldr r3, _0225DC28 ; =0x00000125
	mov r1, #0
	ldrb r2, [r0, r3]
	cmp r2, #0
	ble _0225DC20
	sub r3, r3, #5
	ldr r4, [r0, r3]
	add r3, r4, #0
_0225DC0A:
	ldrh r0, [r3]
	cmp r0, #0
	bne _0225DC18
	mov r0, #0xe4
	mul r0, r1
	add r0, r4, r0
	pop {r4, pc}
_0225DC18:
	add r1, r1, #1
	add r3, #0xe4
	cmp r1, r2
	blt _0225DC0A
_0225DC20:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0225DC28: .word 0x00000125
	thumb_func_end ov49_0225DBF8

	thumb_func_start ov49_0225DC2C
ov49_0225DC2C: ; 0x0225DC2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r7, r3, #0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #0x10]
	str r0, [sp, #0xc]
_0225DC44:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [r7]
	ldr r3, [sp, #0x30]
	bl ov49_0225D528
	ldr r0, [sp, #0x14]
	cmp r0, #0xb
	beq _0225DC62
	cmp r0, #0xc
	beq _0225DC62
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl ov45_0222D740
_0225DC62:
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0xc]
	mov r6, #0
_0225DC68:
	ldr r1, [r4, #0x48]
	ldr r0, [r7]
	cmp r0, r1
	beq _0225DC86
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x30]
	mov r2, #0
	bl GfGfxLoader_LoadFromOpenNarc
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r5, r1]
	b _0225DC8E
_0225DC86:
	mov r0, #0x12
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_0225DC8E:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _0225DC68
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x12
	blt _0225DC44
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225DC2C

	thumb_func_start ov49_0225DCBC
ov49_0225DCBC: ; 0x0225DCBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r7, #0x12
	str r0, [sp, #4]
	mov r6, #0
	lsl r7, r7, #4
_0225DCD0:
	ldr r5, [sp]
	mov r4, #0
_0225DCD4:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0225DCE4
	bl Heap_Free
	mov r0, #0x12
	lsl r0, r0, #4
	str r6, [r5, r0]
_0225DCE4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _0225DCD4
	ldr r0, [sp, #4]
	bl ov49_0225D574
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0x12
	blt _0225DCD0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225DCBC

	thumb_func_start ov49_0225DD0C
ov49_0225DD0C: ; 0x0225DD0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225DD64
	ldrh r0, [r4, #2]
	add r1, r4, #4
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov49_022588A0
	cmp r0, #0
	beq _0225DD64
	add r0, r4, #0
	add r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225DD44
	ldrh r0, [r4, #2]
	add r1, r4, #0
	add r1, #0xe1
	lsl r0, r0, #4
	add r0, r5, r0
	ldrb r1, [r1]
	ldr r0, [r0, #8]
	bl NNS_G3dMdlSetMdlAlphaAll
_0225DD44:
	add r0, r4, #4
	bl sub_020181EC
	add r0, r4, #0
	add r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225DD64
	ldrh r0, [r4, #2]
	add r4, #0xe2
	ldrb r1, [r4]
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #8]
	bl NNS_G3dMdlSetMdlAlphaAll
_0225DD64:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225DD0C

	thumb_func_start ov49_0225DD68
ov49_0225DD68: ; 0x0225DD68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x7c
	add r7, r4, #0
	mov r5, #0
	str r0, [sp, #0xc]
	add r7, #0xc0
	add r6, r4, #0
	str r0, [sp, #8]
_0225DD82:
	add r0, r4, r5
	add r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225DDEE
	add r0, r4, r5
	add r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #6
	bhi _0225DDEE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DDA2: ; jump table
	.short _0225DDB0 - _0225DDA2 - 2 ; case 0
	.short _0225DDCC - _0225DDA2 - 2 ; case 1
	.short _0225DEFC - _0225DDA2 - 2 ; case 2
	.short _0225DE12 - _0225DDA2 - 2 ; case 3
	.short _0225DE2E - _0225DDA2 - 2 ; case 4
	.short _0225DE72 - _0225DDA2 - 2 ; case 5
	.short _0225DEC8 - _0225DDA2 - 2 ; case 6
_0225DDB0:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	add r0, r7, #0
	bl ov49_0225D57C
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl sub_02018198
	b _0225DEFC
_0225DDCC:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	add r0, r7, #0
	bl ov49_0225D5A0
	add r1, r6, #0
	add r1, #0xc0
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl sub_02018198
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _0225DDF0
_0225DDEE:
	b _0225DEFC
_0225DDF0:
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0]
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r2, r5, #0
	bl ov49_0225D328
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0225DEFC
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	blx r2
	b _0225DEFC
_0225DE12:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	add r0, r7, #0
	bl ov49_0225D5C8
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl sub_02018198
	b _0225DEFC
_0225DE2E:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	add r0, r7, #0
	bl ov49_0225D5E4
	add r1, r6, #0
	add r1, #0xc0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl sub_02018198
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0225DEFC
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	add r2, r5, #0
	bl ov49_0225D328
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0225DEFC
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	blx r2
	b _0225DEFC
_0225DE72:
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225DE8C
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	b _0225DEFC
_0225DE8C:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	add r0, r7, #0
	bl ov49_0225D5A0
	cmp r0, #1
	bne _0225DEBA
	bl MTRandom
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl _u32_div_f
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	add r1, r6, #0
	add r1, #0xc0
	mov r0, #0
	str r0, [r1]
_0225DEBA:
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl sub_02018198
	b _0225DEFC
_0225DEC8:
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225DEE2
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	b _0225DEFC
_0225DEE2:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	add r0, r7, #0
	bl ov49_0225D57C
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl sub_02018198
_0225DEFC:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r0, #0x14
	add r6, r6, #4
	str r0, [sp, #8]
	cmp r5, #3
	bge _0225DF14
	b _0225DD82
_0225DF14:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225DD68

	thumb_func_start ov49_0225DF18
ov49_0225DF18: ; 0x0225DF18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _0225E284 ; =0x00000614
	add r0, r3, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl Heap_Alloc
	ldr r2, _0225E284 ; =0x00000614
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x61
	str r7, [r4]
	lsl r0, r0, #4
	strb r5, [r4, r0]
	add r0, r0, #1
	strb r6, [r4, r0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x48]
	mov r0, #9
	mov r1, #0x80
	bl ov49_0225CC4C
	str r0, [r4, #4]
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl ov49_0225CDEC
	mov r0, #0
	ldr r5, _0225E288 ; =ov49_02269AAC
	str r0, [sp, #0xc]
_0225DF66:
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5]
	str r0, [sp, #8]
	add r2, sp, #0x1c
	ldr r0, [r4]
	add r2, #2
	add r3, sp, #0x1c
	bl ov49_022589D8
	cmp r0, #1
	beq _0225DF80
	b _0225E234
_0225DF80:
	mov r0, #0x92
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x10]
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0x14]
	ldr r0, _0225E28C ; =0x000004E8
	mov r7, sp
	add r0, r4, r0
	str r0, [sp, #0x18]
	sub r7, r7, #4
	add r6, sp, #0x1c
_0225DF9C:
	ldrh r1, [r5, #2]
	ldrh r2, [r6, #2]
	ldrh r3, [r6]
	ldr r0, [r4, #4]
	bl ov49_0225D098
	ldr r1, _0225E290 ; =0x00000612
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #8]
	ldrh r0, [r5, #2]
	cmp r0, #0x10
	bls _0225DFBA
	b _0225E20E
_0225DFBA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DFC6: ; jump table
	.short _0225E014 - _0225DFC6 - 2 ; case 0
	.short _0225E20E - _0225DFC6 - 2 ; case 1
	.short _0225E20E - _0225DFC6 - 2 ; case 2
	.short _0225E20E - _0225DFC6 - 2 ; case 3
	.short _0225E20E - _0225DFC6 - 2 ; case 4
	.short _0225E20E - _0225DFC6 - 2 ; case 5
	.short _0225DFE8 - _0225DFC6 - 2 ; case 6
	.short _0225DFE8 - _0225DFC6 - 2 ; case 7
	.short _0225DFE8 - _0225DFC6 - 2 ; case 8
	.short _0225E20E - _0225DFC6 - 2 ; case 9
	.short _0225E052 - _0225DFC6 - 2 ; case 10
	.short _0225E07E - _0225DFC6 - 2 ; case 11
	.short _0225E07E - _0225DFC6 - 2 ; case 12
	.short _0225E094 - _0225DFC6 - 2 ; case 13
	.short _0225E0F2 - _0225DFC6 - 2 ; case 14
	.short _0225E150 - _0225DFC6 - 2 ; case 15
	.short _0225E18C - _0225DFC6 - 2 ; case 16
_0225DFE8:
	ldr r1, _0225E290 ; =0x00000612
	mov r2, #0
	ldrb r1, [r4, r1]
	ldr r0, [r4, #4]
	add r3, r2, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225D214
	ldr r0, _0225E290 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #8]
	ldrh r0, [r5, #2]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x85
	lsl r0, r0, #2
	str r2, [r1, r0]
	b _0225E20E
_0225E014:
	ldr r1, _0225E290 ; =0x00000612
	mov r2, #0
	ldrb r1, [r4, r1]
	ldr r0, [r4, #4]
	add r3, r2, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225D214
	ldr r1, _0225E290 ; =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	mov r2, #1
	mov r3, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225D214
	ldr r1, _0225E290 ; =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	mov r2, #2
	mov r3, #0
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225D214
	b _0225E20E
_0225E052:
	ldr r1, _0225E290 ; =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	mov r2, #0
	mov r3, #2
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225D214
	ldr r0, _0225E290 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #8]
	ldrh r0, [r5]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x45
	lsl r0, r0, #2
	str r2, [r1, r0]
	b _0225E20E
_0225E07E:
	ldr r1, _0225E290 ; =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	mov r2, #0
	mov r3, #2
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225D214
	b _0225E20E
_0225E094:
	ldr r0, _0225E294 ; =0x00000608
	mov r1, #0xc
	ldrb r0, [r4, r0]
	mul r1, r0
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	ldr r1, _0225E290 ; =0x00000612
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225EB00
	ldr r0, _0225E294 ; =0x00000608
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _0225E294 ; =0x00000608
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _0225E0C2
	bl GF_AssertFail
_0225E0C2:
	ldr r0, _0225E290 ; =0x00000612
	mov r1, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov49_0225D494
	ldrh r1, [r5]
	ldr r0, _0225E298 ; =0x0000FFA4
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bls _0225E0E2
	b _0225E20E
_0225E0E2:
	ldr r0, _0225E290 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov49_0225EE4C
	b _0225E20E
_0225E0F2:
	ldr r0, _0225E29C ; =0x00000609
	mov r1, #0xc
	ldrb r0, [r4, r0]
	mul r1, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldr r1, _0225E290 ; =0x00000612
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225EB00
	ldr r0, _0225E29C ; =0x00000609
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _0225E29C ; =0x00000609
	strb r1, [r4, r0]
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _0225E122
	bl GF_AssertFail
_0225E122:
	ldr r0, _0225E290 ; =0x00000612
	mov r1, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov49_0225D494
	ldrh r1, [r5]
	ldr r0, _0225E298 ; =0x0000FFA4
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0225E20E
	ldr r0, _0225E290 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov49_0225EE4C
	b _0225E20E
_0225E150:
	ldr r0, _0225E290 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #8]
	ldr r0, _0225E2A0 ; =0x0000060A
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0225E2A4 ; =0x00000488
	str r2, [r1, r0]
	ldr r0, _0225E2A0 ; =0x0000060A
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _0225E2A0 ; =0x0000060A
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _0225E17A
	bl GF_AssertFail
_0225E17A:
	ldr r0, _0225E290 ; =0x00000612
	mov r1, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov49_0225D494
	b _0225E20E
_0225E18C:
	ldr r0, _0225E2A8 ; =0x0000060B
	mov r1, #0xc
	ldrb r0, [r4, r0]
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	ldr r1, _0225E290 ; =0x00000612
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r1, [r1, #8]
	bl ov49_0225EB00
	ldr r0, _0225E2A8 ; =0x0000060B
	ldrb r0, [r4, r0]
	add r1, r0, #1
	ldr r0, _0225E2A8 ; =0x0000060B
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _0225E1BA
	bl GF_AssertFail
_0225E1BA:
	ldr r0, _0225E290 ; =0x00000612
	mov r1, #0
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov49_0225D494
	ldr r0, _0225E290 ; =0x00000612
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	bl ov49_0225D1EC
	strh r0, [r6, #4]
	lsr r0, r0, #0x10
	strh r0, [r6, #6]
	ldrh r0, [r6, #4]
	strh r0, [r6, #8]
	ldrh r0, [r6, #6]
	strh r0, [r6, #0xa]
	mov r0, #8
	ldrsh r0, [r6, r0]
	add r0, #8
	strh r0, [r6, #8]
	mov r0, #0xa
	ldrsh r0, [r6, r0]
	add r0, #0x14
	strh r0, [r6, #0xa]
	ldr r0, _0225E290 ; =0x00000612
	ldrh r1, [r6, #8]
	ldrb r0, [r4, r0]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #8]
	strh r1, [r7]
	ldrh r1, [r6, #0xa]
	strh r1, [r7, #2]
	ldr r1, [r7]
	bl ov49_0225D1C4
_0225E20E:
	ldr r0, _0225E290 ; =0x00000612
	add r2, sp, #0x1c
	ldrb r0, [r4, r0]
	add r2, #2
	add r3, sp, #0x1c
	add r1, r0, #1
	ldr r0, _0225E290 ; =0x00000612
	strb r1, [r4, r0]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp]
	str r0, [sp, #8]
	ldrh r1, [r5]
	ldr r0, [r4]
	bl ov49_022589D8
	cmp r0, #1
	bne _0225E234
	b _0225DF9C
_0225E234:
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x23
	bhs _0225E242
	b _0225DF66
_0225E242:
	mov r0, #0xa
	mov r7, #0
	lsl r0, r0, #0xe
	ldr r6, _0225E2AC ; =ov49_02269A88
	str r7, [sp, #0x28]
	str r0, [sp, #0x30]
	str r7, [sp, #0x2c]
	add r5, r4, #0
_0225E252:
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	ldr r0, [r4, #4]
	add r3, sp, #0x28
	bl ov49_0225CF28
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov49_0225D040
	add r7, r7, #1
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, #9
	blt _0225E252
	ldr r0, _0225E2B0 ; =0x00000613
	mov r1, #9
	strb r1, [r4, r0]
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E284: .word 0x00000614
_0225E288: .word ov49_02269AAC
_0225E28C: .word 0x000004E8
_0225E290: .word 0x00000612
_0225E294: .word 0x00000608
_0225E298: .word 0x0000FFA4
_0225E29C: .word 0x00000609
_0225E2A0: .word 0x0000060A
_0225E2A4: .word 0x00000488
_0225E2A8: .word 0x0000060B
_0225E2AC: .word ov49_02269A88
_0225E2B0: .word 0x00000613
	thumb_func_end ov49_0225DF18

	thumb_func_start ov49_0225E2B4
ov49_0225E2B4: ; 0x0225E2B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225E310 ; =0x00000613
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0225E2DA
	ldr r7, _0225E310 ; =0x00000613
	add r4, r5, #0
_0225E2C6:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov49_0225CF94
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0225E2C6
_0225E2DA:
	ldr r0, _0225E314 ; =0x00000612
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0225E2FA
	ldr r7, _0225E314 ; =0x00000612
	add r4, r5, #0
_0225E2E8:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl ov49_0225D160
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0225E2E8
_0225E2FA:
	ldr r0, [r5, #4]
	bl ov49_0225CE88
	ldr r0, [r5, #4]
	bl ov49_0225CCC0
	add r0, r5, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E310: .word 0x00000613
_0225E314: .word 0x00000612
	thumb_func_end ov49_0225E2B4

	thumb_func_start ov49_0225E318
ov49_0225E318: ; 0x0225E318
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225E390 ; =0x00000608
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0225E340
	mov r0, #0x92
	lsl r0, r0, #2
	ldr r7, _0225E390 ; =0x00000608
	add r4, r5, r0
_0225E32E:
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl ov49_0225EB08
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _0225E32E
_0225E340:
	ldr r0, _0225E394 ; =0x00000609
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0225E364
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r7, _0225E394 ; =0x00000609
	add r4, r5, r0
_0225E352:
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl ov49_0225ECF0
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _0225E352
_0225E364:
	ldr r0, _0225E398 ; =0x0000060B
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0225E386
	ldr r0, _0225E39C ; =0x000004E8
	ldr r7, _0225E398 ; =0x0000060B
	add r4, r5, r0
_0225E374:
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl ov49_0225ED98
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _0225E374
_0225E386:
	ldr r0, [r5, #4]
	bl ov49_0225CCF0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E390: .word 0x00000608
_0225E394: .word 0x00000609
_0225E398: .word 0x0000060B
_0225E39C: .word 0x000004E8
	thumb_func_end ov49_0225E318

	thumb_func_start ov49_0225E3A0
ov49_0225E3A0: ; 0x0225E3A0
	ldr r3, _0225E3A8 ; =ov49_0225CD58
	ldr r0, [r0, #4]
	bx r3
	nop
_0225E3A8: .word ov49_0225CD58
	thumb_func_end ov49_0225E3A0

	thumb_func_start ov49_0225E3AC
ov49_0225E3AC: ; 0x0225E3AC
	ldr r3, _0225E3B4 ; =ov49_0225CDE8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225E3B4: .word ov49_0225CDE8
	thumb_func_end ov49_0225E3AC

	thumb_func_start ov49_0225E3B8
ov49_0225E3B8: ; 0x0225E3B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0225E3F0 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r2, #0
	cmp r0, r4
	bhi _0225E3CE
	bl GF_AssertFail
_0225E3CE:
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	str r6, [sp]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl ov49_0225CFA8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0225E3F0: .word 0x00000613
	thumb_func_end ov49_0225E3B8

	thumb_func_start ov49_0225E3F4
ov49_0225E3F4: ; 0x0225E3F4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0225E41C ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r2, #0
	cmp r0, r4
	bhi _0225E408
	bl GF_AssertFail
_0225E408:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ov49_0225CFEC
	pop {r4, r5, r6, pc}
	nop
_0225E41C: .word 0x00000613
	thumb_func_end ov49_0225E3F4

	thumb_func_start ov49_0225E420
ov49_0225E420: ; 0x0225E420
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225E470 ; =0x00000613
	add r6, r1, #0
	ldrb r0, [r5, r0]
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, r6
	bhi _0225E436
	bl GF_AssertFail
_0225E436:
	cmp r7, #3
	blo _0225E43E
	bl GF_AssertFail
_0225E43E:
	lsl r0, r6, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r4, #0
	bl ov49_0225D030
	ldr r1, _0225E474 ; =ov49_02269A7C
	lsl r0, r7, #2
	ldrsh r1, [r1, r0]
	ldr r2, [r4]
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r4]
	ldr r1, _0225E478 ; =ov49_02269A7E
	ldr r2, [r4, #8]
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	add r0, r2, r0
	str r0, [r4, #8]
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E470: .word 0x00000613
_0225E474: .word ov49_02269A7C
_0225E478: .word ov49_02269A7E
	thumb_func_end ov49_0225E420

	thumb_func_start ov49_0225E47C
ov49_0225E47C: ; 0x0225E47C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0225E4A0 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _0225E48E
	bl GF_AssertFail
_0225E48E:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov49_0225D04C
	pop {r3, r4, r5, pc}
	nop
_0225E4A0: .word 0x00000613
	thumb_func_end ov49_0225E47C

	thumb_func_start ov49_0225E4A4
ov49_0225E4A4: ; 0x0225E4A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0225E4C8 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _0225E4B6
	bl GF_AssertFail
_0225E4B6:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov49_0225D064
	pop {r3, r4, r5, pc}
	nop
_0225E4C8: .word 0x00000613
	thumb_func_end ov49_0225E4A4

	thumb_func_start ov49_0225E4CC
ov49_0225E4CC: ; 0x0225E4CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0225E4F4 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r2, #0
	cmp r0, r4
	bhi _0225E4E0
	bl GF_AssertFail
_0225E4E0:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ov49_0225D040
	pop {r4, r5, r6, pc}
	nop
_0225E4F4: .word 0x00000613
	thumb_func_end ov49_0225E4CC

	thumb_func_start ov49_0225E4F8
ov49_0225E4F8: ; 0x0225E4F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0225E520 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	add r6, r2, #0
	cmp r0, r4
	bhi _0225E50C
	bl GF_AssertFail
_0225E50C:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl ov49_0225D07C
	pop {r4, r5, r6, pc}
	nop
_0225E520: .word 0x00000613
	thumb_func_end ov49_0225E4F8

	thumb_func_start ov49_0225E524
ov49_0225E524: ; 0x0225E524
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0225E548 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _0225E536
	bl GF_AssertFail
_0225E536:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov49_0225D088
	pop {r3, r4, r5, pc}
	nop
_0225E548: .word 0x00000613
	thumb_func_end ov49_0225E524

	thumb_func_start ov49_0225E54C
ov49_0225E54C: ; 0x0225E54C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0225E570 ; =0x00000613
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _0225E55E
	bl GF_AssertFail
_0225E55E:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov49_0225D090
	pop {r3, r4, r5, pc}
	nop
_0225E570: .word 0x00000613
	thumb_func_end ov49_0225E54C

	thumb_func_start ov49_0225E574
ov49_0225E574: ; 0x0225E574
	ldr r3, _0225E57C ; =ov49_0225CED0
	ldr r0, [r0, #4]
	bx r3
	nop
_0225E57C: .word ov49_0225CED0
	thumb_func_end ov49_0225E574

	thumb_func_start ov49_0225E580
ov49_0225E580: ; 0x0225E580
	ldr r3, _0225E588 ; =ov49_0225CEFC
	ldr r0, [r0, #4]
	bx r3
	nop
_0225E588: .word ov49_0225CEFC
	thumb_func_end ov49_0225E580

	thumb_func_start ov49_0225E58C
ov49_0225E58C: ; 0x0225E58C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0225E61C ; =0x00000612
	str r1, [sp]
	ldrb r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _0225E616
	ldr r1, [sp]
	sub r0, r2, #1
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	add r4, r5, #0
	str r1, [sp, #4]
	lsr r7, r0, #0x18
_0225E5B0:
	ldr r0, [r4, #8]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl ov49_0225E9D0
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp]
	add r2, r7, #0
	bl ov49_0225E9D0
	ldr r1, [sp, #8]
	cmp r1, #1
	beq _0225E5D0
	cmp r0, #1
	bne _0225E60A
_0225E5D0:
	ldr r0, [r4, #8]
	bl ov49_0225D1C0
	cmp r0, #4
	bhi _0225E60A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225E5E6: ; jump table
	.short _0225E60A - _0225E5E6 - 2 ; case 0
	.short _0225E5F0 - _0225E5E6 - 2 ; case 1
	.short _0225E5F0 - _0225E5E6 - 2 ; case 2
	.short _0225E5F0 - _0225E5E6 - 2 ; case 3
	.short _0225E5F0 - _0225E5E6 - 2 ; case 4
_0225E5F0:
	ldr r0, _0225E620 ; =0x00000611
	ldrb r0, [r5, r0]
	cmp r0, #4
	bne _0225E602
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov49_0225EAB4
	b _0225E60A
_0225E602:
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov49_0225EA70
_0225E60A:
	ldr r0, _0225E61C ; =0x00000612
	add r6, r6, #1
	ldrb r0, [r5, r0]
	add r4, r4, #4
	cmp r6, r0
	blt _0225E5B0
_0225E616:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225E61C: .word 0x00000612
_0225E620: .word 0x00000611
	thumb_func_end ov49_0225E58C

	thumb_func_start ov49_0225E624
ov49_0225E624: ; 0x0225E624
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225E6DC ; =0x00000612
	add r7, r1, #0
	ldrb r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _0225E6DA
	add r4, r5, #0
_0225E636:
	ldr r0, [r4, #8]
	bl ov49_0225D1C0
	cmp r0, #4
	bhi _0225E656
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225E64C: ; jump table
	.short _0225E6CE - _0225E64C - 2 ; case 0
	.short _0225E65C - _0225E64C - 2 ; case 1
	.short _0225E65C - _0225E64C - 2 ; case 2
	.short _0225E65C - _0225E64C - 2 ; case 3
	.short _0225E65C - _0225E64C - 2 ; case 4
_0225E656:
	cmp r0, #0xf
	beq _0225E66C
	b _0225E6CE
_0225E65C:
	cmp r7, #1
	bne _0225E6CE
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov49_0225D4A0
	b _0225E6CE
_0225E66C:
	cmp r7, #1
	bne _0225E6A8
	mov r1, #2
	ldr r0, [r4, #8]
	lsl r1, r1, #0xa
	bl ov49_0225D4C8
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #0
	mov r3, #6
	bl ov49_0225D214
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	mov r3, #6
	bl ov49_0225D214
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #2
	mov r3, #6
	bl ov49_0225D214
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov49_0225D494
	b _0225E6CE
_0225E6A8:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #0
	bl ov49_0225D328
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov49_0225D328
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #2
	bl ov49_0225D328
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov49_0225D494
_0225E6CE:
	ldr r0, _0225E6DC ; =0x00000612
	add r6, r6, #1
	ldrb r0, [r5, r0]
	add r4, r4, #4
	cmp r6, r0
	blt _0225E636
_0225E6DA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E6DC: .word 0x00000612
	thumb_func_end ov49_0225E624

	thumb_func_start ov49_0225E6E0
ov49_0225E6E0: ; 0x0225E6E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0225E70C ; =0x0000060B
	add r7, r1, #0
	ldrb r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _0225E708
	ldr r0, _0225E710 ; =0x000004E8
	add r5, r6, r0
_0225E6F4:
	add r0, r5, #0
	add r1, r7, #0
	bl ov49_0225ECD4
	ldr r0, _0225E70C ; =0x0000060B
	add r4, r4, #1
	ldrb r0, [r6, r0]
	add r5, #0xc
	cmp r4, r0
	blt _0225E6F4
_0225E708:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E70C: .word 0x0000060B
_0225E710: .word 0x000004E8
	thumb_func_end ov49_0225E6E0

	thumb_func_start ov49_0225E714
ov49_0225E714: ; 0x0225E714
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225E75C ; =0x00000612
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0225E75A
	ldr r7, _0225E75C ; =0x00000612
	add r4, r5, #0
_0225E726:
	ldr r0, [r4, #8]
	bl ov49_0225D1C0
	cmp r0, #4
	bhi _0225E750
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225E73C: ; jump table
	.short _0225E750 - _0225E73C - 2 ; case 0
	.short _0225E746 - _0225E73C - 2 ; case 1
	.short _0225E746 - _0225E73C - 2 ; case 2
	.short _0225E746 - _0225E73C - 2 ; case 3
	.short _0225E746 - _0225E73C - 2 ; case 4
_0225E746:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	bl ov49_0225D4A0
_0225E750:
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0225E726
_0225E75A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E75C: .word 0x00000612
	thumb_func_end ov49_0225E714

	thumb_func_start ov49_0225E760
ov49_0225E760: ; 0x0225E760
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0225E818 ; =0x00000612
	add r7, r1, #0
	ldrb r0, [r4, r0]
	mov r6, #0
	cmp r0, #0
	ble _0225E816
	add r5, r4, #0
_0225E772:
	ldr r0, [r5, #8]
	bl ov49_0225D1C0
	cmp r0, #0xb
	beq _0225E780
	cmp r0, #0xc
	bne _0225E80A
_0225E780:
	cmp r7, #3
	bhi _0225E80A
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225E790: ; jump table
	.short _0225E798 - _0225E790 - 2 ; case 0
	.short _0225E7AE - _0225E790 - 2 ; case 1
	.short _0225E7C8 - _0225E790 - 2 ; case 2
	.short _0225E7EC - _0225E790 - 2 ; case 3
_0225E798:
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #0
	mov r3, #2
	bl ov49_0225D214
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0225E80A
_0225E7AE:
	ldr r0, _0225E81C ; =ov49_0225EA10
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r3, #1
	bl ov49_0225D224
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0225E80A
_0225E7C8:
	ldr r0, _0225E820 ; =ov49_0225EA40
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r3, #4
	bl ov49_0225D224
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #1
	bl ov49_0225D328
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0225E80A
_0225E7EC:
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #1
	mov r3, #0
	bl ov49_0225D214
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #0
	bl ov49_0225D328
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0225E80A:
	ldr r0, _0225E818 ; =0x00000612
	add r6, r6, #1
	ldrb r0, [r4, r0]
	add r5, r5, #4
	cmp r6, r0
	blt _0225E772
_0225E816:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E818: .word 0x00000612
_0225E81C: .word ov49_0225EA10
_0225E820: .word ov49_0225EA40
	thumb_func_end ov49_0225E760

	thumb_func_start ov49_0225E824
ov49_0225E824: ; 0x0225E824
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov49_0225E824

	thumb_func_start ov49_0225E82C
ov49_0225E82C: ; 0x0225E82C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225E858 ; =0x00000608
	add r6, r1, #0
	ldrb r0, [r5, r0]
	add r7, r2, #0
	mov r4, #0
	cmp r0, #0
	ble _0225E854
_0225E83E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov49_0225E85C
	ldr r0, _0225E858 ; =0x00000608
	add r4, r4, #1
	ldrb r0, [r5, r0]
	cmp r4, r0
	blt _0225E83E
_0225E854:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E858: .word 0x00000608
	thumb_func_end ov49_0225E82C

	thumb_func_start ov49_0225E85C
ov49_0225E85C: ; 0x0225E85C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0225E890 ; =0x00000608
	ldrb r0, [r4, r0]
	cmp r1, r0
	bhs _0225E88C
	mov r0, #0x92
	lsl r0, r0, #2
	add r5, r4, r0
	mov r0, #0xc
	mul r0, r1
	cmp r2, #0
	beq _0225E882
	ldr r1, [r4, #4]
	add r0, r5, r0
	add r2, r3, #0
	bl ov49_0225EB54
	b _0225E888
_0225E882:
	add r0, r5, r0
	bl ov49_0225EB84
_0225E888:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225E88C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225E890: .word 0x00000608
	thumb_func_end ov49_0225E85C

	thumb_func_start ov49_0225E894
ov49_0225E894: ; 0x0225E894
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0225E8C0 ; =0x00000609
	add r7, r1, #0
	ldrb r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	ble _0225E8BE
	mov r0, #0xda
	lsl r0, r0, #2
	add r5, r6, r0
_0225E8AA:
	add r0, r5, #0
	add r1, r7, #0
	bl ov49_0225ECD4
	ldr r0, _0225E8C0 ; =0x00000609
	add r4, r4, #1
	ldrb r0, [r6, r0]
	add r5, #0xc
	cmp r4, r0
	blt _0225E8AA
_0225E8BE:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E8C0: .word 0x00000609
	thumb_func_end ov49_0225E894

	thumb_func_start ov49_0225E8C4
ov49_0225E8C4: ; 0x0225E8C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r1, r5, r0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	add r0, #0xc
	ldr r7, [r1, r0]
	ldr r0, [sp, #0x18]
	add r4, r2, #0
	cmp r0, #1
	beq _0225E8E2
	cmp r3, #1
	bne _0225E992
_0225E8E2:
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225D450
	cmp r0, #0
	bne _0225E8FA
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl ov49_0225D214
_0225E8FA:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _0225E938
	add r0, r4, #4
	lsl r1, r0, #2
	beq _0225E918
	lsl r0, r0, #0xe
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225E926
_0225E918:
	lsl r0, r0, #0xe
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225E926:
	bl _ffix
	add r3, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	mov r2, #0
	bl ov49_0225D3F8
	pop {r3, r4, r5, r6, r7, pc}
_0225E938:
	ldr r0, _0225E9CC ; =0x0000060C
	mov r1, #0x1c
	ldr r0, [r5, r0]
	add r0, r0, #1
	bl _u32_div_f
	ldr r0, _0225E9CC ; =0x0000060C
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0xe
	bhs _0225E984
	lsl r0, r4, #2
	beq _0225E964
	lsl r0, r4, #0xe
	bl _ffltu
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0225E972
_0225E964:
	lsl r0, r4, #0xe
	bl _ffltu
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0225E972:
	bl _ffix
	add r3, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	mov r2, #0
	bl ov49_0225D3F8
	pop {r3, r4, r5, r6, r7, pc}
_0225E984:
	mov r2, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r3, r2, #0
	bl ov49_0225D3F8
	pop {r3, r4, r5, r6, r7, pc}
_0225E992:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #4]
	beq _0225E9B4
	add r1, r6, #0
	bl ov49_0225D394
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl ov49_0225D394
	ldr r0, [r5, #4]
	add r1, r6, #0
	mov r2, #1
	bl ov49_0225D4A0
	pop {r3, r4, r5, r6, r7, pc}
_0225E9B4:
	add r1, r6, #0
	mov r2, #1
	bl ov49_0225D328
	mov r2, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r3, r2, #0
	bl ov49_0225D3F8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E9CC: .word 0x0000060C
	thumb_func_end ov49_0225E8C4

	thumb_func_start ov49_0225E9D0
ov49_0225E9D0: ; 0x0225E9D0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	lsl r1, r2, #0x14
	asr r4, r1, #0x10
	bl ov49_0225D1EC
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	lsl r0, r5, #0x14
	asr r0, r0, #0x10
	cmp r2, r0
	bne _0225EA08
	mov r0, #6
	ldrsh r0, [r1, r0]
	cmp r0, r4
	bne _0225EA08
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225EA08:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225E9D0

	thumb_func_start ov49_0225EA10
ov49_0225EA10: ; 0x0225EA10
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ov49_0225D1C0
	add r4, r0, #0
	cmp r4, #0xb
	beq _0225EA2A
	cmp r4, #0xc
	beq _0225EA2A
	bl GF_AssertFail
_0225EA2A:
	sub r4, #0xb
	cmp r4, #1
	bhi _0225EA3C
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0
	bl ov49_0225D214
_0225EA3C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225EA10

	thumb_func_start ov49_0225EA40
ov49_0225EA40: ; 0x0225EA40
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ov49_0225D1C0
	add r4, r0, #0
	cmp r4, #0xb
	beq _0225EA5A
	cmp r4, #0xc
	beq _0225EA5A
	bl GF_AssertFail
_0225EA5A:
	sub r4, #0xb
	cmp r4, #1
	bhi _0225EA6C
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	mov r3, #2
	bl ov49_0225D214
_0225EA6C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225EA40

	thumb_func_start ov49_0225EA70
ov49_0225EA70: ; 0x0225EA70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	ldr r0, [r6, #4]
	add r2, r4, #0
	add r5, r1, #0
	bl ov49_0225D3BC
	cmp r0, #0
	bne _0225EA88
	mov r4, #1
	b _0225EA9A
_0225EA88:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225D470
	mov r1, #2
	lsl r1, r1, #0xc
	cmp r0, r1
	ble _0225EA9A
	mov r4, #1
_0225EA9A:
	cmp r4, #1
	bne _0225EAAC
	add r0, r6, #0
	add r1, r5, #0
	bl ov49_0225EAE0
	ldr r0, _0225EAB0 ; =0x000005BC
	bl PlaySE
_0225EAAC:
	pop {r4, r5, r6, pc}
	nop
_0225EAB0: .word 0x000005BC
	thumb_func_end ov49_0225EA70

	thumb_func_start ov49_0225EAB4
ov49_0225EAB4: ; 0x0225EAB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r4, #0
	ldr r0, [r5, #4]
	add r2, r4, #0
	add r6, r1, #0
	bl ov49_0225D3BC
	cmp r0, #0
	bne _0225EACA
	mov r4, #1
_0225EACA:
	cmp r4, #1
	bne _0225EADE
	add r0, r5, #0
	add r1, r6, #0
	bl ov49_0225EAE0
	mov r0, #0x17
	lsl r0, r0, #6
	bl PlaySE
_0225EADE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225EAB4

	thumb_func_start ov49_0225EAE0
ov49_0225EAE0: ; 0x0225EAE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #1
_0225EAEA:
	ldr r0, [r5, #4]
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl ov49_0225D214
	add r4, r4, #1
	cmp r4, #3
	blt _0225EAEA
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225EAE0

	thumb_func_start ov49_0225EB00
ov49_0225EB00: ; 0x0225EB00
	str r1, [r0]
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov49_0225EB00

	thumb_func_start ov49_0225EB08
ov49_0225EB08: ; 0x0225EB08
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r2, [r4, #4]
	add r5, r1, #0
	cmp r2, #4
	bhi _0225EB52
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225EB20: ; jump table
	.short _0225EB52 - _0225EB20 - 2 ; case 0
	.short _0225EB2A - _0225EB20 - 2 ; case 1
	.short _0225EB52 - _0225EB20 - 2 ; case 2
	.short _0225EB34 - _0225EB20 - 2 ; case 3
	.short _0225EB3E - _0225EB20 - 2 ; case 4
_0225EB2A:
	bl ov49_0225EBA8
	mov r0, #2
	strh r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0225EB34:
	bl ov49_0225EC28
	mov r0, #4
	strh r0, [r4, #4]
	pop {r3, r4, r5, pc}
_0225EB3E:
	bl ov49_0225EC30
	cmp r0, #1
	bne _0225EB52
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_0225EBE4
	mov r0, #0
	strh r0, [r4, #4]
_0225EB52:
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225EB08

	thumb_func_start ov49_0225EB54
ov49_0225EB54: ; 0x0225EB54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldrh r2, [r5, #4]
	ldr r3, _0225EB80 ; =0x0000FFFF
	add r6, r2, r3
	lsl r6, r6, #0x10
	lsr r6, r6, #0x10
	cmp r6, #1
	bls _0225EB7E
	sub r3, r3, #2
	add r2, r2, r3
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #1
	bhi _0225EB78
	bl ov49_0225EBE4
_0225EB78:
	mov r0, #1
	strh r0, [r5, #4]
	str r4, [r5, #8]
_0225EB7E:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225EB80: .word 0x0000FFFF
	thumb_func_end ov49_0225EB54

	thumb_func_start ov49_0225EB84
ov49_0225EB84: ; 0x0225EB84
	ldrh r2, [r0, #4]
	ldr r1, _0225EBA4 ; =0x0000FFFD
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bls _0225EBA0
	cmp r2, #1
	bhi _0225EB9C
	mov r1, #0
	strh r1, [r0, #4]
	bx lr
_0225EB9C:
	mov r1, #3
	strh r1, [r0, #4]
_0225EBA0:
	bx lr
	nop
_0225EBA4: .word 0x0000FFFD
	thumb_func_end ov49_0225EB84

	thumb_func_start ov49_0225EBA8
ov49_0225EBA8: ; 0x0225EBA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov49_0225D4C8
	mov r2, #0
	ldr r1, [r5]
	add r0, r4, #0
	add r3, r2, #0
	bl ov49_0225D214
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov49_0225D214
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #2
	mov r3, #0
	bl ov49_0225D214
	ldr r0, [r5]
	mov r1, #1
	bl ov49_0225D494
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225EBA8

	thumb_func_start ov49_0225EBE4
ov49_0225EBE4: ; 0x0225EBE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225D328
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #1
	bl ov49_0225D328
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #2
	bl ov49_0225D328
	ldr r0, [r5]
	mov r1, #0
	bl ov49_0225D494
	ldr r0, [r5]
	bl ov49_0225D4E8
	mov r1, #1
	lsl r1, r1, #0xc
	ldr r0, [r5]
	add r2, r1, #0
	add r3, r1, #0
	bl ov49_0225D4F0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225EBE4

	thumb_func_start ov49_0225EC28
ov49_0225EC28: ; 0x0225EC28
	mov r1, #0
	strh r1, [r0, #6]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225EC28

	thumb_func_start ov49_0225EC30
ov49_0225EC30: ; 0x0225EC30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #6
	ldrsh r1, [r4, r0]
	cmp r1, #0xa
	bge _0225ECCC
	add r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #8]
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xa
	lsl r1, r1, #0xc
	bl FX_Div
	add r2, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4]
	add r1, r2, r1
	bl ov49_0225D4C8
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #0x1f
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	mov r2, #0x1f
	sub r1, r2, r0
	lsl r1, r1, #0x18
	ldr r0, [r4]
	lsr r1, r1, #0x18
	bl ov49_0225D4D0
	mov r0, #6
	ldrsh r0, [r4, r0]
	ldr r2, _0225ECD0 ; =0x000002E1
	mov r3, #0
	lsl r0, r0, #0xc
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xa
	lsl r1, r1, #0xc
	bl FX_Div
	mov r3, #1
	add r5, r0, #0
	lsl r3, r3, #0xc
	add r1, r5, r3
	ldr r0, [r4]
	add r2, r1, #0
	add r3, r5, r3
	bl ov49_0225D4F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_0225ECCC:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0225ECD0: .word 0x000002E1
	thumb_func_end ov49_0225EC30

	thumb_func_start ov49_0225ECD4
ov49_0225ECD4: ; 0x0225ECD4
	ldrh r3, [r0, #4]
	ldr r2, _0225ECEC ; =0x0000FFFF
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r2, #1
	bls _0225ECE8
	mov r2, #1
	strh r2, [r0, #4]
	str r1, [r0, #8]
_0225ECE8:
	bx lr
	nop
_0225ECEC: .word 0x0000FFFF
	thumb_func_end ov49_0225ECD4

	thumb_func_start ov49_0225ECF0
ov49_0225ECF0: ; 0x0225ECF0
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #4]
	cmp r2, #4
	bhi _0225ED62
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225ED06: ; jump table
	.short _0225ED66 - _0225ED06 - 2 ; case 0
	.short _0225ED10 - _0225ED06 - 2 ; case 1
	.short _0225ED1A - _0225ED06 - 2 ; case 2
	.short _0225ED2E - _0225ED06 - 2 ; case 3
	.short _0225ED38 - _0225ED06 - 2 ; case 4
_0225ED10:
	bl ov49_0225ED68
	mov r0, #2
	strh r0, [r4, #4]
	pop {r4, pc}
_0225ED1A:
	add r0, r1, #0
	ldr r1, [r4]
	mov r2, #0
	bl ov49_0225D3BC
	cmp r0, #0
	bne _0225ED66
	mov r0, #3
	strh r0, [r4, #4]
	pop {r4, pc}
_0225ED2E:
	bl ov49_0225EC28
	mov r0, #4
	strh r0, [r4, #4]
	pop {r4, pc}
_0225ED38:
	bl ov49_0225EC30
	cmp r0, #1
	bne _0225ED66
	ldr r0, [r4]
	mov r1, #0
	bl ov49_0225D494
	ldr r0, [r4]
	bl ov49_0225D4E8
	mov r1, #1
	lsl r1, r1, #0xc
	ldr r0, [r4]
	add r2, r1, #0
	add r3, r1, #0
	bl ov49_0225D4F0
	mov r0, #0
	strh r0, [r4, #4]
	pop {r4, pc}
_0225ED62:
	bl GF_AssertFail
_0225ED66:
	pop {r4, pc}
	thumb_func_end ov49_0225ECF0

	thumb_func_start ov49_0225ED68
ov49_0225ED68: ; 0x0225ED68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov49_0225D4C8
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	bl ov49_0225D214
	mov r2, #1
	ldr r1, [r5]
	add r0, r4, #0
	add r3, r2, #0
	bl ov49_0225D214
	ldr r0, [r5]
	mov r1, #1
	bl ov49_0225D494
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225ED68

	thumb_func_start ov49_0225ED98
ov49_0225ED98: ; 0x0225ED98
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #4]
	cmp r2, #4
	bhi _0225EE0A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225EDAE: ; jump table
	.short _0225EE0E - _0225EDAE - 2 ; case 0
	.short _0225EDB8 - _0225EDAE - 2 ; case 1
	.short _0225EDC2 - _0225EDAE - 2 ; case 2
	.short _0225EDD6 - _0225EDAE - 2 ; case 3
	.short _0225EDE0 - _0225EDAE - 2 ; case 4
_0225EDB8:
	bl ov49_0225EE10
	mov r0, #2
	strh r0, [r4, #4]
	pop {r4, pc}
_0225EDC2:
	add r0, r1, #0
	ldr r1, [r4]
	mov r2, #0
	bl ov49_0225D3BC
	cmp r0, #0
	bne _0225EE0E
	mov r0, #3
	strh r0, [r4, #4]
	pop {r4, pc}
_0225EDD6:
	bl ov49_0225EC28
	mov r0, #4
	strh r0, [r4, #4]
	pop {r4, pc}
_0225EDE0:
	bl ov49_0225EC30
	cmp r0, #1
	bne _0225EE0E
	ldr r0, [r4]
	mov r1, #0
	bl ov49_0225D494
	ldr r0, [r4]
	bl ov49_0225D4E8
	mov r1, #1
	lsl r1, r1, #0xc
	ldr r0, [r4]
	add r2, r1, #0
	add r3, r1, #0
	bl ov49_0225D4F0
	mov r0, #0
	strh r0, [r4, #4]
	pop {r4, pc}
_0225EE0A:
	bl GF_AssertFail
_0225EE0E:
	pop {r4, pc}
	thumb_func_end ov49_0225ED98

	thumb_func_start ov49_0225EE10
ov49_0225EE10: ; 0x0225EE10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov49_0225D4C8
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #0
	mov r3, #1
	bl ov49_0225D214
	mov r2, #1
	ldr r1, [r5]
	add r0, r4, #0
	add r3, r2, #0
	bl ov49_0225D214
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #2
	mov r3, #1
	bl ov49_0225D214
	ldr r0, [r5]
	mov r1, #1
	bl ov49_0225D494
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225EE10

	thumb_func_start ov49_0225EE4C
ov49_0225EE4C: ; 0x0225EE4C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x5c
	beq _0225EE60
	cmp r4, #0x5d
	beq _0225EE60
	bl GF_AssertFail
_0225EE60:
	add r0, r5, #0
	bl ov49_0225D1EC
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	sub r4, #0x5c
	lsl r2, r4, #2
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r3, [r1, r0]
	ldr r0, _0225EEA8 ; =ov49_02269A74
	ldr r0, [r0, r2]
	add r0, r3, r0
	strh r0, [r1, #4]
	mov r0, #6
	ldrsh r0, [r1, r0]
	mov r3, sp
	sub r3, r3, #4
	sub r0, #0xa
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov49_0225D1C4
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0225EEA8: .word ov49_02269A74
	thumb_func_end ov49_0225EE4C


    .rodata

ov49_02269A74: ; 0x02269A74
	.byte 0xF5, 0xFF, 0xFF, 0xFF, 0x0C, 0x00, 0x00, 0x00

ov49_02269A7C: ; 0x02269A7C
	.byte 0xFE, 0xFF

ov49_02269A7E: ; 0x02269A7E
	.byte 0x0A, 0x00
	.byte 0x0E, 0x00, 0x0A, 0x00, 0x1E, 0x00, 0x0A, 0x00

ov49_02269A88: ; 0x02269A88
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x02, 0x00

ov49_02269AAC: ; 0x02269AAC
	.byte 0x18, 0x00, 0x00, 0x00
	.byte 0x19, 0x00, 0x01, 0x00, 0x1A, 0x00, 0x02, 0x00, 0x1B, 0x00, 0x03, 0x00, 0x1B, 0x00, 0x03, 0x00
	.byte 0x1C, 0x00, 0x04, 0x00, 0x21, 0x00, 0x05, 0x00, 0x46, 0x00, 0x06, 0x00, 0x47, 0x00, 0x07, 0x00
	.byte 0x48, 0x00, 0x08, 0x00, 0x4C, 0x00, 0x09, 0x00, 0x49, 0x00, 0x0A, 0x00, 0x4A, 0x00, 0x0A, 0x00
	.byte 0x4B, 0x00, 0x0A, 0x00, 0x4D, 0x00, 0x0B, 0x00, 0x4E, 0x00, 0x0C, 0x00, 0x4D, 0x00, 0x0D, 0x00
	.byte 0x4E, 0x00, 0x0D, 0x00, 0x4D, 0x00, 0x0E, 0x00, 0x4E, 0x00, 0x0E, 0x00, 0x19, 0x00, 0x0F, 0x00
	.byte 0x1A, 0x00, 0x0F, 0x00, 0x1B, 0x00, 0x0F, 0x00, 0x1B, 0x00, 0x0F, 0x00, 0x1C, 0x00, 0x0F, 0x00
	.byte 0x19, 0x00, 0x10, 0x00, 0x1A, 0x00, 0x10, 0x00, 0x1B, 0x00, 0x10, 0x00, 0x1B, 0x00, 0x10, 0x00
	.byte 0x1C, 0x00, 0x10, 0x00, 0x5C, 0x00, 0x0D, 0x00, 0x5D, 0x00, 0x0D, 0x00, 0x5C, 0x00, 0x0E, 0x00
	.byte 0x5D, 0x00, 0x0E, 0x00, 0x62, 0x00, 0x11, 0x00

