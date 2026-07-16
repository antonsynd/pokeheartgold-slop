	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_022655E0
ov49_022655E0: ; 0x022655E0
	push {r3, r4}
	ldr r4, [r0, #4]
	str r4, [r1]
	ldr r1, [r0, #8]
	str r1, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov49_022655E0

	thumb_func_start ov49_022655F4
ov49_022655F4: ; 0x022655F4
	push {r4, lr}
	add r4, r0, #0
	strh r1, [r4]
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _02265624 ; =FX_SinCosTable_
	strh r2, [r4, #2]
	ldrsh r0, [r0, r1]
	add r2, r3, #0
	str r3, [r4, #4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
_02265624: .word FX_SinCosTable_
	thumb_func_end ov49_022655F4

	thumb_func_start ov49_02265628
ov49_02265628: ; 0x02265628
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, [r4, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0226565C ; =FX_SinCosTable_
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
_0226565C: .word FX_SinCosTable_
	thumb_func_end ov49_02265628

	thumb_func_start ov49_02265660
ov49_02265660: ; 0x02265660
	ldr r0, [r0, #8]
	str r0, [r1]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02265660

	thumb_func_start ov49_02265668
ov49_02265668: ; 0x02265668
	push {r3, r4, r5, lr}
	ldr r0, [r0, #4]
	ldr r4, [r1, #8]
	add r5, r2, #0
	bl ov49_02258DAC
	cmp r4, r0
	bne _02265684
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #5
	bl sub_0200606C
	pop {r3, r4, r5, pc}
_02265684:
	add r0, r4, #0
	bl ov49_02258F70
	cmp r0, #0
	bne _02265696
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
_02265696:
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02265668

	thumb_func_start ov49_02265698
ov49_02265698: ; 0x02265698
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_022656A2:
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x81
	mov r2, #0
	add r3, r7, #0
	bl GfGfxLoader_LoadFromOpenNarc
	ldr r1, _0226570C ; =0x00010550
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	bl NNS_G3dGetMdlSet
	ldr r1, _02265710 ; =0x00010554
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _022656EC
	add r0, r1, #0
	add r0, #8
	beq _022656E0
	ldrb r2, [r1, #9]
	cmp r2, #0
	bls _022656E0
	ldrh r2, [r1, #0xe]
	add r0, r0, r2
	add r0, r0, #4
	b _022656E2
_022656E0:
	mov r0, #0
_022656E2:
	cmp r0, #0
	beq _022656EC
	ldr r0, [r0]
	add r1, r1, r0
	b _022656EE
_022656EC:
	mov r1, #0
_022656EE:
	ldr r0, _02265714 ; =0x00010558
	str r1, [r5, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _02265714 ; =0x00010558
	ldr r1, _02265718 ; =0x00007FFF
	ldr r0, [r5, r0]
	bl NNS_G3dMdlSetMdlEmiAll
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xf
	blt _022656A2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0226570C: .word 0x00010550
_02265710: .word 0x00010554
_02265714: .word 0x00010558
_02265718: .word 0x00007FFF
	thumb_func_end ov49_02265698

	thumb_func_start ov49_0226571C
ov49_0226571C: ; 0x0226571C
	push {r4, r5, r6, lr}
	ldr r6, _02265734 ; =0x00010550
	add r5, r0, #0
	mov r4, #0
_02265724:
	ldr r0, [r5, r6]
	bl Heap_Free
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xf
	blt _02265724
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02265734: .word 0x00010550
	thumb_func_end ov49_0226571C

	thumb_func_start ov49_02265738
ov49_02265738: ; 0x02265738
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _0226575C ; =0x00010640
	add r7, r2, #0
	mov r4, #0
	add r5, r0, r1
_02265744:
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x90
	add r3, r7, #0
	bl ov49_02258830
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blt _02265744
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0226575C: .word 0x00010640
	thumb_func_end ov49_02265738

	thumb_func_start ov49_02265760
ov49_02265760: ; 0x02265760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _022657A8 ; =NNS_GfdDefaultFuncFreeTexVram
	add r5, r0, #0
	mov r4, #0
_0226576A:
	ldr r0, _022657AC ; =0x00010640
	ldr r0, [r5, r0]
	bl NNS_G3dGetTex
	add r1, sp, #4
	add r2, sp, #0
	add r6, r0, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r0, [sp, #4]
	ldr r1, [r7]
	blx r1
	ldr r0, [sp]
	ldr r1, [r7]
	blx r1
	add r0, r6, #0
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _022657B0 ; =NNS_GfdDefaultFuncFreePlttVram
	ldr r1, [r1]
	blx r1
	ldr r0, _022657AC ; =0x00010640
	ldr r0, [r5, r0]
	bl Heap_Free
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blt _0226576A
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022657A8: .word NNS_GfdDefaultFuncFreeTexVram
_022657AC: .word 0x00010640
_022657B0: .word NNS_GfdDefaultFuncFreePlttVram
	thumb_func_end ov49_02265760

	thumb_func_start ov49_022657B4
ov49_022657B4: ; 0x022657B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	ldr r4, _02265840 ; =ov49_0226A70C
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
_022657C4:
	ldr r0, _02265844 ; =0x0001081C
	mov r6, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _02265848 ; =0x000106DC
	add r0, r5, r0
	str r0, [sp, #0x18]
	ldr r0, _0226584C ; =0x00010550
	add r0, r5, r0
	str r0, [sp, #0x1c]
_022657D8:
	add r7, r4, r6
	ldrb r1, [r7, #2]
	cmp r1, #0x11
	beq _0226582A
	mov r0, #0x14
	mul r0, r1
	add r1, r5, r0
	ldr r0, _02265848 ; =0x000106DC
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0226582A
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02265850 ; =0x00010640
	ldr r0, [r1, r0]
	bl NNS_G3dGetTex
	ldrb r1, [r4]
	lsl r1, r1, #4
	add r2, r5, r1
	ldr r1, _02265854 ; =0x0001055C
	str r0, [r2, r1]
	ldrb r3, [r7, #2]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r1, r3, #0
	str r0, [sp, #4]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r3, #0xb7
	add r0, r0, r1
	ldrb r1, [r4]
	lsl r2, r1, #4
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	ldr r2, [sp, #8]
	bl sub_020180BC
_0226582A:
	add r6, r6, #1
	cmp r6, #2
	blt _022657D8
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x27
	blt _022657C4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02265840: .word ov49_0226A70C
_02265844: .word 0x0001081C
_02265848: .word 0x000106DC
_0226584C: .word 0x00010550
_02265850: .word 0x00010640
_02265854: .word 0x0001055C
	thumb_func_end ov49_022657B4

	thumb_func_start ov49_02265858
ov49_02265858: ; 0x02265858
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02265888 ; =0x000106DC
	mov r6, #0
	add r4, r5, r0
	ldr r0, _0226588C ; =0x0001081C
	add r7, r5, r0
_02265866:
	ldr r0, _02265888 ; =0x000106DC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0226587C
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020180F8
	ldr r0, _02265888 ; =0x000106DC
	mov r1, #0
	str r1, [r5, r0]
_0226587C:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #0x10
	blt _02265866
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02265888: .word 0x000106DC
_0226588C: .word 0x0001081C
	thumb_func_end ov49_02265858

	thumb_func_start ov49_02265890
ov49_02265890: ; 0x02265890
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r7, #0x1b
	blo _022658A2
	bl GF_AssertFail
_022658A2:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02265948
	str r6, [r4, #8]
	add r0, r6, #0
	mov r1, #5
	strb r7, [r4]
	bl ov49_02258E60
	add r0, #0x28
	str r0, [r4, #4]
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _022658DC ; =ov49_0226A5A4
	ldr r2, [r2, r3]
	blx r2
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _022658E0 ; =ov49_0226A610
	ldr r2, [r2, r3]
	bl ov49_02265668
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022658DC: .word ov49_0226A5A4
_022658E0: .word ov49_0226A610
	thumb_func_end ov49_02265890

	thumb_func_start ov49_022658E4
ov49_022658E4: ; 0x022658E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_02265958
	cmp r0, #0
	beq _02265918
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _022658FE
	bl GF_AssertFail
_022658FE:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _0226591C ; =ov49_0226A538
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _02265918
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02265948
_02265918:
	pop {r3, r4, r5, pc}
	nop
_0226591C: .word ov49_0226A538
	thumb_func_end ov49_022658E4

	thumb_func_start ov49_02265920
ov49_02265920: ; 0x02265920
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_02265958
	cmp r0, #0
	bne _02265934
	mov r0, #0
	pop {r3, r4, r5, pc}
_02265934:
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _0226593E
	bl GF_AssertFail
_0226593E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02266AF0
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02265920

	thumb_func_start ov49_02265948
ov49_02265948: ; 0x02265948
	ldr r3, _02265954 ; =memset
	mov r2, #0xd1
	add r0, r1, #0
	mov r1, #0
	lsl r2, r2, #4
	bx r3
	.balign 4, 0
_02265954: .word memset
	thumb_func_end ov49_02265948

	thumb_func_start ov49_02265958
ov49_02265958: ; 0x02265958
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02265962
	mov r0, #1
	bx lr
_02265962:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_02265958

	thumb_func_start ov49_02265968
ov49_02265968: ; 0x02265968
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0226597C ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02265978
	mov r0, #1
	bx lr
_02265978:
	mov r0, #0
	bx lr
	.balign 4, 0
_0226597C: .word 0x0000087C
	thumb_func_end ov49_02265968

	thumb_func_start ov49_02265980
ov49_02265980: ; 0x02265980
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	str r0, [sp]
	add r5, r1, #0
	add r6, r3, #0
	cmp r4, #0x12
	blo _02265994
	bl GF_AssertFail
_02265994:
	ldr r0, _022659C8 ; =0x0000087C
	add r7, r5, r0
	lsl r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _022659A6
	bl GF_AssertFail
_022659A6:
	ldr r0, [sp, #4]
	ldr r2, _022659CC ; =0x00010550
	ldr r1, [sp]
	str r6, [r7, r0]
	add r2, r1, r2
	ldrb r1, [r6]
	mov r0, #0x78
	add r5, #0xc
	mul r0, r4
	lsl r1, r1, #4
	add r0, r5, r0
	add r1, r2, r1
	bl sub_020181B0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022659C8: .word 0x0000087C
_022659CC: .word 0x00010550
	thumb_func_end ov49_02265980

	thumb_func_start ov49_022659D0
ov49_022659D0: ; 0x022659D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r2, #0
	str r0, [sp]
	lsl r7, r5, #2
	add r0, r1, #0
	str r1, [sp, #4]
	add r1, r0, r7
	ldr r0, _02265B04 ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022659EC
	bl GF_AssertFail
_022659EC:
	mov r0, #0x78
	add r6, r5, #0
	mul r6, r0
	ldr r0, [sp, #4]
	add r0, #0xc
	add r0, r0, r6
	bl sub_020182A4
	cmp r0, #0
	beq _02265AFE
	ldr r0, [sp, #4]
	add r1, r0, r7
	ldr r0, _02265B04 ; =0x0000087C
	ldr r2, [r1, r0]
	ldr r0, _02265B08 ; =0x00010550
	ldrb r3, [r2]
	ldr r1, [sp]
	add r1, r1, r0
	lsl r3, r3, #4
	add r1, r1, r3
	str r1, [sp, #0xc]
	ldrb r1, [r2, #1]
	add r0, #0xf0
	lsl r2, r1, #2
	ldr r1, [sp]
	add r1, r1, r2
	ldr r0, [r1, r0]
	bl NNS_G3dGetTex
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [r1, #0xc]
	add r0, r1, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl NNS_G3dForceBindMdlTex
	cmp r0, #0
	bne _02265A40
	bl GF_AssertFail
_02265A40:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	mov r2, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl NNS_G3dForceBindMdlPltt
	cmp r0, #0
	bne _02265A58
	bl GF_AssertFail
_02265A58:
	ldr r0, [sp, #4]
	lsl r1, r5, #3
	add r5, r0, r1
	add r0, r0, r7
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _02265B0C ; =0x000106DC
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r4, #0
	add r7, r0, r1
_02265A72:
	ldr r1, [sp, #8]
	ldr r0, _02265B04 ; =0x0000087C
	ldr r0, [r1, r0]
	add r0, r0, r4
	ldrb r1, [r0, #2]
	cmp r1, #0x11
	beq _02265AA6
	mov r0, #0x14
	mul r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r6
	add r1, r7, r1
	bl sub_020181D4
	ldr r1, _02265B10 ; =0x000008C4
	ldr r0, [sp, #0x14]
	ldr r1, [r5, r1]
	add r0, r7, r0
	bl sub_02018198
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02265A72
_02265AA6:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	bl NNS_G3dMdlSetMdlPolygonIDAll
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	add r0, r0, r6
	bl sub_020181EC
	ldr r1, _02265B0C ; =0x000106DC
	ldr r0, [sp]
	ldr r7, _02265B04 ; =0x0000087C
	mov r4, #0
	add r5, r0, r1
_02265AC8:
	ldr r0, [sp, #8]
	ldr r0, [r0, r7]
	add r0, r0, r4
	ldrb r1, [r0, #2]
	cmp r1, #0x11
	beq _02265AE8
	ldr r0, [sp, #4]
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r6
	add r1, r5, r2
	bl sub_020181E0
	add r4, r4, #1
	cmp r4, #2
	blt _02265AC8
_02265AE8:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl NNS_G3dReleaseMdlTex
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl NNS_G3dReleaseMdlPltt
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r1, [r0, #0xc]
_02265AFE:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265B04: .word 0x0000087C
_02265B08: .word 0x00010550
_02265B0C: .word 0x000106DC
_02265B10: .word 0x000008C4
	thumb_func_end ov49_022659D0

	thumb_func_start ov49_02265B14
ov49_02265B14: ; 0x02265B14
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	lsl r4, r4, #0xc
	str r4, [sp]
	bl ov49_02265B3C
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02265B14

	thumb_func_start ov49_02265B28
ov49_02265B28: ; 0x02265B28
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	lsl r4, r4, #0xc
	str r4, [sp]
	bl ov49_02265B94
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02265B28

	thumb_func_start ov49_02265B3C
ov49_02265B3C: ; 0x02265B3C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02265B88 ; =0x000106DC
	add r6, r2, #0
	add r0, r0, r1
	lsl r1, r6, #2
	add r2, r4, r1
	ldr r1, _02265B8C ; =0x0000087C
	add r5, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r5
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_020181A4
	add r1, r0, #0
	ldr r0, _02265B90 ; =0x000008C4
	lsl r2, r6, #3
	add r0, r4, r0
	add r4, r0, r2
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	cmp r0, r1
	bge _02265B78
	str r0, [r4, r5]
	pop {r4, r5, r6, pc}
_02265B78:
	mov r0, #2
	lsl r0, r0, #0xc
	add r0, r2, r0
	bl _s32_div_f
	str r1, [r4, r5]
	pop {r4, r5, r6, pc}
	nop
_02265B88: .word 0x000106DC
_02265B8C: .word 0x0000087C
_02265B90: .word 0x000008C4
	thumb_func_end ov49_02265B3C

	thumb_func_start ov49_02265B94
ov49_02265B94: ; 0x02265B94
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02265BDC ; =0x000106DC
	add r4, r2, #0
	add r0, r0, r1
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, _02265BE0 ; =0x0000087C
	add r6, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r6
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_020181A4
	ldr r3, _02265BE4 ; =0x000008C4
	lsl r1, r4, #3
	add r2, r5, r3
	add r2, r2, r1
	lsl r1, r6, #2
	ldr r5, [sp, #0x10]
	ldr r4, [r2, r1]
	add r4, r5, r4
	cmp r4, r0
	bge _02265BD0
	str r4, [r2, r1]
	mov r0, #0
	pop {r4, r5, r6, pc}
_02265BD0:
	sub r3, #0xc4
	sub r0, r0, r3
	str r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02265BDC: .word 0x000106DC
_02265BE0: .word 0x0000087C
_02265BE4: .word 0x000008C4
	thumb_func_end ov49_02265B94

	thumb_func_start ov49_02265BE8
ov49_02265BE8: ; 0x02265BE8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02265C34 ; =0x000106DC
	add r4, r2, #0
	add r0, r0, r1
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, _02265C38 ; =0x0000087C
	add r6, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r6
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_020181A4
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge _02265C24
	mov r1, #2
	lsl r2, r4, #3
	lsl r1, r1, #0xa
	add r3, r5, r2
	lsl r2, r6, #2
	sub r0, r0, r1
	add r2, r3, r2
	add r1, #0xc4
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_02265C24:
	lsl r0, r4, #3
	add r2, r5, r0
	lsl r0, r6, #2
	add r2, r2, r0
	ldr r0, _02265C3C ; =0x000008C4
	str r1, [r2, r0]
	pop {r4, r5, r6, pc}
	nop
_02265C34: .word 0x000106DC
_02265C38: .word 0x0000087C
_02265C3C: .word 0x000008C4
	thumb_func_end ov49_02265BE8

	thumb_func_start ov49_02265C40
ov49_02265C40: ; 0x02265C40
	push {r4, lr}
	lsl r2, r2, #2
	add r2, r1, r2
	ldr r1, _02265C60 ; =0x0000087C
	ldr r4, _02265C64 ; =0x000106DC
	ldr r1, [r2, r1]
	add r0, r0, r4
	add r1, r1, r3
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_020181A0
	pop {r4, pc}
	nop
_02265C60: .word 0x0000087C
_02265C64: .word 0x000106DC
	thumb_func_end ov49_02265C40

	thumb_func_start ov49_02265C68
ov49_02265C68: ; 0x02265C68
	ldr r3, _02265C70 ; =ov49_02267A84
	mov r2, #1
	bx r3
	nop
_02265C70: .word ov49_02267A84
	thumb_func_end ov49_02265C68

	thumb_func_start ov49_02265C74
ov49_02265C74: ; 0x02265C74
	ldr r3, _02265C7C ; =ov49_02267A84
	mov r2, #2
	bx r3
	nop
_02265C7C: .word ov49_02267A84
	thumb_func_end ov49_02265C74

	thumb_func_start ov49_02265C80
ov49_02265C80: ; 0x02265C80
	ldr r3, _02265C88 ; =ov49_02267A84
	mov r2, #3
	bx r3
	nop
_02265C88: .word ov49_02267A84
	thumb_func_end ov49_02265C80

	thumb_func_start ov49_02265C8C
ov49_02265C8C: ; 0x02265C8C
	ldr r3, _02265C94 ; =ov49_02267C20
	mov r2, #1
	bx r3
	nop
_02265C94: .word ov49_02267C20
	thumb_func_end ov49_02265C8C

	thumb_func_start ov49_02265C98
ov49_02265C98: ; 0x02265C98
	ldr r3, _02265CA0 ; =ov49_02267C20
	mov r2, #2
	bx r3
	nop
_02265CA0: .word ov49_02267C20
	thumb_func_end ov49_02265C98

	thumb_func_start ov49_02265CA4
ov49_02265CA4: ; 0x02265CA4
	ldr r3, _02265CAC ; =ov49_02267C20
	mov r2, #3
	bx r3
	nop
_02265CAC: .word ov49_02267C20
	thumb_func_end ov49_02265CA4

	thumb_func_start ov49_02265CB0
ov49_02265CB0: ; 0x02265CB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r7, #0
	str r0, [sp]
	mov r4, #0
	add r5, #0xc
_02265CBE:
	add r3, r4, #3
	lsl r6, r3, #2
	ldr r3, _02265D08 ; =ov49_0226A70C
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	ldr r0, [r7, #8]
	add r1, sp, #4
	bl ov49_02259154
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r2, r1, r0
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	str r2, [sp, #8]
	bl sub_020182A8
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _02265CBE
	ldr r0, _02265D0C ; =0x00000954
	mov r1, #0xff
	str r1, [r7, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265D08: .word ov49_0226A70C
_02265D0C: .word 0x00000954
	thumb_func_end ov49_02265CB0

	thumb_func_start ov49_02265D10
ov49_02265D10: ; 0x02265D10
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02265E40 ; =ov49_0226A730
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_02265980
	ldr r3, _02265E44 ; =ov49_0226A73C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_020182A0
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov49_02259154
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #8
	str r0, [r3]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02265E48 ; =0x00000958
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov49_02258E60
	cmp r0, #3
	bhi _02265E20
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265D80: ; jump table
	.short _02265D88 - _02265D80 - 2 ; case 0
	.short _02265DA8 - _02265D80 - 2 ; case 1
	.short _02265DCA - _02265D80 - 2 ; case 2
	.short _02265DF6 - _02265D80 - 2 ; case 3
_02265D88:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02265E4C ; =0x0000BFFF
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	b _02265E20
_02265DA8:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02265E50 ; =0x00003FFF
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	b _02265E20
_02265DCA:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	mov r2, #1
	bl sub_020182E0
	b _02265E20
_02265DF6:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r1, #2
	ldr r0, [sp, #8]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	sub r1, r1, #1
	mov r2, #1
	bl sub_020182E0
_02265E20:
	add r0, r4, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_020182A8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02265E40: .word ov49_0226A730
_02265E44: .word ov49_0226A73C
_02265E48: .word 0x00000958
_02265E4C: .word 0x0000BFFF
_02265E50: .word 0x00003FFF
	thumb_func_end ov49_02265D10

	thumb_func_start ov49_02265E54
ov49_02265E54: ; 0x02265E54
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02266058 ; =ov49_0226A730
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_02265980
	ldr r3, _0226605C ; =ov49_0226A73C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	ldr r3, _02266060 ; =ov49_0226A734
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02265980
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_020182A0
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov49_02259154
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #8
	str r0, [r3]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02266064 ; =0x00000958
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov49_02258E60
	cmp r0, #3
	bls _02265ECA
	b _02266046
_02265ECA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02265ED6: ; jump table
	.short _02265EDE - _02265ED6 - 2 ; case 0
	.short _02265F32 - _02265ED6 - 2 ; case 1
	.short _02265F88 - _02265ED6 - 2 ; case 2
	.short _02265FE8 - _02265ED6 - 2 ; case 3
_02265EDE:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266068 ; =0x0000A38D
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _0226606C ; =0x0000DC70
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_020182A8
	b _02266046
_02265F32:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266070 ; =0x0000238E
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _02266074 ; =0x00005C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_020182A8
	b _02266046
_02265F88:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266078 ; =0x0000E38F
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _0226607C ; =0x00001C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	sub r3, r5, r3
	bl sub_020182A8
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	add r3, r5, r3
	bl sub_020182A8
	b _02266046
_02265FE8:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266080 ; =0x0000638D
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _02266084 ; =0x00009C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	add r3, r5, r3
	bl sub_020182A8
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	sub r3, r5, r3
	bl sub_020182A8
_02266046:
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_020182A8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02266058: .word ov49_0226A730
_0226605C: .word ov49_0226A73C
_02266060: .word ov49_0226A734
_02266064: .word 0x00000958
_02266068: .word 0x0000A38D
_0226606C: .word 0x0000DC70
_02266070: .word 0x0000238E
_02266074: .word 0x00005C71
_02266078: .word 0x0000E38F
_0226607C: .word 0x00001C71
_02266080: .word 0x0000638D
_02266084: .word 0x00009C71
	thumb_func_end ov49_02265E54

	thumb_func_start ov49_02266088
ov49_02266088: ; 0x02266088
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02266314 ; =ov49_0226A730
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_02265980
	ldr r3, _02266318 ; =ov49_0226A73C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	ldr r3, _0226631C ; =ov49_0226A734
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02265980
	ldr r3, _02266320 ; =ov49_0226A738
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov49_02265980
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_020182A0
	ldr r1, _02266324 ; =0x00000958
	mov r2, #8
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #8
	str r2, [r4, r1]
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov49_02259154
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov49_02258E60
	cmp r0, #3
	bls _0226610E
	b _02266302
_0226610E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226611A: ; jump table
	.short _02266122 - _0226611A - 2 ; case 0
	.short _02266194 - _0226611A - 2 ; case 1
	.short _02266208 - _0226611A - 2 ; case 2
	.short _02266286 - _0226611A - 2 ; case 3
_02266122:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266328 ; =0x0000A38D
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _0226632C ; =0x0000DC70
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _02266330 ; =0x0000BFFF
	add r0, r4, r0
	mov r2, #1
	bl sub_020182E0
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_020182A8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_020182A8
	b _02266302
_02266194:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266334 ; =0x0000238E
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _02266338 ; =0x00005C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _0226633C ; =0x00003FFF
	add r0, r4, r0
	mov r2, #1
	bl sub_020182E0
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_020182A8
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_020182A8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_020182A8
	b _02266302
_02266208:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266340 ; =0x0000E38F
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _02266344 ; =0x00001C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #1
	bl sub_020182E0
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	sub r3, r5, r3
	bl sub_020182A8
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	add r3, r5, r3
	bl sub_020182A8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_020182A8
	b _02266302
_02266286:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02266348 ; =0x0000638D
	add r0, #0x84
	mov r2, #1
	bl sub_020182E0
	add r0, r4, #0
	ldr r1, _0226634C ; =0x00009C71
	add r0, #0xfc
	mov r2, #1
	bl sub_020182E0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _02266350 ; =0x00007FFF
	add r0, r4, r0
	mov r2, #1
	bl sub_020182E0
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	add r3, r5, r3
	bl sub_020182A8
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	sub r3, r5, r3
	bl sub_020182A8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_020182A8
_02266302:
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_020182A8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02266314: .word ov49_0226A730
_02266318: .word ov49_0226A73C
_0226631C: .word ov49_0226A734
_02266320: .word ov49_0226A738
_02266324: .word 0x00000958
_02266328: .word 0x0000A38D
_0226632C: .word 0x0000DC70
_02266330: .word 0x0000BFFF
_02266334: .word 0x0000238E
_02266338: .word 0x00005C71
_0226633C: .word 0x00003FFF
_02266340: .word 0x0000E38F
_02266344: .word 0x00001C71
_02266348: .word 0x0000638D
_0226634C: .word 0x00009C71
_02266350: .word 0x00007FFF
	thumb_func_end ov49_02266088

	thumb_func_start ov49_02266354
ov49_02266354: ; 0x02266354
	ldr r3, _0226635C ; =ov49_02266B28
	mov r2, #1
	bx r3
	nop
_0226635C: .word ov49_02266B28
	thumb_func_end ov49_02266354

	thumb_func_start ov49_02266360
ov49_02266360: ; 0x02266360
	ldr r3, _02266368 ; =ov49_02266B28
	mov r2, #2
	bx r3
	nop
_02266368: .word ov49_02266B28
	thumb_func_end ov49_02266360

	thumb_func_start ov49_0226636C
ov49_0226636C: ; 0x0226636C
	ldr r3, _02266374 ; =ov49_02266B28
	mov r2, #3
	bx r3
	nop
_02266374: .word ov49_02266B28
	thumb_func_end ov49_0226636C

	thumb_func_start ov49_02266378
ov49_02266378: ; 0x02266378
	ldr r3, _02266380 ; =ov49_02267908
	mov r2, #1
	bx r3
	nop
_02266380: .word ov49_02267908
	thumb_func_end ov49_02266378

	thumb_func_start ov49_02266384
ov49_02266384: ; 0x02266384
	ldr r3, _0226638C ; =ov49_02267908
	mov r2, #2
	bx r3
	nop
_0226638C: .word ov49_02267908
	thumb_func_end ov49_02266384

	thumb_func_start ov49_02266390
ov49_02266390: ; 0x02266390
	ldr r3, _02266398 ; =ov49_02267908
	mov r2, #4
	bx r3
	nop
_02266398: .word ov49_02267908
	thumb_func_end ov49_02266390

	thumb_func_start ov49_0226639C
ov49_0226639C: ; 0x0226639C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _022663DC ; =ov49_0226A7A8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_022663A8:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _022663E0 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _022663A8
	mov r0, #0
	str r0, [sp]
	ldr r0, _022663E4 ; =0x00000954
	ldr r1, _022663E8 ; =ov49_0226A454
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022663DC: .word ov49_0226A7A8
_022663E0: .word ov49_0226A70C
_022663E4: .word 0x00000954
_022663E8: .word ov49_0226A454
	thumb_func_end ov49_0226639C

	thumb_func_start ov49_022663EC
ov49_022663EC: ; 0x022663EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226642C ; =ov49_0226A7B8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_022663F8:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02266430 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _022663F8
	mov r0, #0
	str r0, [sp]
	ldr r0, _02266434 ; =0x00000954
	ldr r1, _02266438 ; =ov49_0226A46C
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226642C: .word ov49_0226A7B8
_02266430: .word ov49_0226A70C
_02266434: .word 0x00000954
_02266438: .word ov49_0226A46C
	thumb_func_end ov49_022663EC

	thumb_func_start ov49_0226643C
ov49_0226643C: ; 0x0226643C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226647C ; =ov49_0226A7C8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_02266448:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02266480 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _02266448
	mov r0, #0
	str r0, [sp]
	ldr r0, _02266484 ; =0x00000954
	ldr r1, _02266488 ; =ov49_0226A4B4
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226647C: .word ov49_0226A7C8
_02266480: .word ov49_0226A70C
_02266484: .word 0x00000954
_02266488: .word ov49_0226A4B4
	thumb_func_end ov49_0226643C

	thumb_func_start ov49_0226648C
ov49_0226648C: ; 0x0226648C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _022664CC ; =ov49_0226A7A8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_02266498:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _022664D0 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _02266498
	mov r0, #1
	str r0, [sp]
	ldr r0, _022664D4 ; =0x00000954
	ldr r1, _022664D8 ; =ov49_0226A464
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022664CC: .word ov49_0226A7A8
_022664D0: .word ov49_0226A70C
_022664D4: .word 0x00000954
_022664D8: .word ov49_0226A464
	thumb_func_end ov49_0226648C

	thumb_func_start ov49_022664DC
ov49_022664DC: ; 0x022664DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226651C ; =ov49_0226A7B8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_022664E8:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02266520 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _022664E8
	mov r0, #1
	str r0, [sp]
	ldr r0, _02266524 ; =0x00000954
	ldr r1, _02266528 ; =ov49_0226A49C
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x29
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226651C: .word ov49_0226A7B8
_02266520: .word ov49_0226A70C
_02266524: .word 0x00000954
_02266528: .word ov49_0226A49C
	thumb_func_end ov49_022664DC

	thumb_func_start ov49_0226652C
ov49_0226652C: ; 0x0226652C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226656C ; =ov49_0226A7C8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_02266538:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02266570 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _02266538
	mov r0, #1
	str r0, [sp]
	ldr r0, _02266574 ; =0x00000954
	ldr r1, _02266578 ; =ov49_0226A4C0
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226656C: .word ov49_0226A7C8
_02266570: .word ov49_0226A70C
_02266574: .word 0x00000954
_02266578: .word ov49_0226A4C0
	thumb_func_end ov49_0226652C

	thumb_func_start ov49_0226657C
ov49_0226657C: ; 0x0226657C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _022665C0 ; =ov49_0226A7A8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_02266588:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _022665C4 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _02266588
	ldr r0, _022665C8 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _022665CC ; =ov49_0226A47C
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov49_02267C8C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022665C0: .word ov49_0226A7A8
_022665C4: .word ov49_0226A70C
_022665C8: .word 0x00000954
_022665CC: .word ov49_0226A47C
	thumb_func_end ov49_0226657C

	thumb_func_start ov49_022665D0
ov49_022665D0: ; 0x022665D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _02266614 ; =ov49_0226A7B8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_022665DC:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02266618 ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _022665DC
	ldr r0, _0226661C ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _02266620 ; =ov49_0226A45C
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov49_02267C8C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02266614: .word ov49_0226A7B8
_02266618: .word ov49_0226A70C
_0226661C: .word 0x00000954
_02266620: .word ov49_0226A45C
	thumb_func_end ov49_022665D0

	thumb_func_start ov49_02266624
ov49_02266624: ; 0x02266624
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _02266668 ; =ov49_0226A7C8
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_02266630:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226666C ; =ov49_0226A70C
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _02266630
	ldr r0, _02266670 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _02266674 ; =ov49_0226A474
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov49_02267D98
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov49_02267C8C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02266668: .word ov49_0226A7C8
_0226666C: .word ov49_0226A70C
_02266670: .word 0x00000954
_02266674: .word ov49_0226A474
	thumb_func_end ov49_02266624

	thumb_func_start ov49_02266678
ov49_02266678: ; 0x02266678
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #2
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	cmp r0, #0x36
	bgt _0226668C
	strh r0, [r5, #2]
_0226668C:
	mov r0, #2
	ldrsh r1, [r5, r0]
	mov r0, #6
	mul r0, r1
	mov r1, #0x36
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, _02266740 ; =0x00000955
	ldrsb r4, [r5, r0]
	cmp r4, r6
	bhs _022666CA
	add r7, r5, #0
	add r7, #0xc
_022666A8:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	ldr r0, _02266744 ; =0x00000954
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bhs _022666C4
	mov r0, #0x78
	mul r0, r1
	add r0, r7, r0
	mov r1, #1
	bl sub_020182A0
_022666C4:
	add r4, r4, #1
	cmp r4, r6
	blo _022666A8
_022666CA:
	ldr r1, _02266740 ; =0x00000955
	mov r0, #1
	str r0, [sp, #8]
	strb r6, [r5, r1]
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _02266724
	add r7, r5, #0
	add r7, #0xc
	add r6, r7, #0
_022666E2:
	add r0, r7, #0
	bl sub_020182A4
	cmp r0, #1
	bne _02266716
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov49_02265B28
	str r0, [sp, #8]
	cmp r0, #0
	beq _02266716
	add r0, r6, #0
	mov r1, #0
	bl sub_020182A0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov49_02265BE8
_02266716:
	ldr r0, _02266744 ; =0x00000954
	add r4, r4, #1
	ldrsb r0, [r5, r0]
	add r7, #0x78
	add r6, #0x78
	cmp r4, r0
	blt _022666E2
_02266724:
	ldr r0, _02266740 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #6
	blt _02266738
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _02266738
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02266738:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02266740: .word 0x00000955
_02266744: .word 0x00000954
	thumb_func_end ov49_02266678

	thumb_func_start ov49_02266748
ov49_02266748: ; 0x02266748
	ldr r3, _02266750 ; =ov49_02267AF0
	mov r2, #0
	bx r3
	nop
_02266750: .word ov49_02267AF0
	thumb_func_end ov49_02266748

	thumb_func_start ov49_02266754
ov49_02266754: ; 0x02266754
	ldr r3, _0226675C ; =ov49_02267AF0
	mov r2, #1
	bx r3
	nop
_0226675C: .word ov49_02267AF0
	thumb_func_end ov49_02266754

	thumb_func_start ov49_02266760
ov49_02266760: ; 0x02266760
	ldr r3, _02266768 ; =ov49_02267AF0
	mov r2, #2
	bx r3
	nop
_02266768: .word ov49_02267AF0
	thumb_func_end ov49_02266760

	thumb_func_start ov49_0226676C
ov49_0226676C: ; 0x0226676C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #2
	ldrsh r1, [r5, r0]
	lsl r0, r1, #1
	add r1, r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r4, r0, #5
	ldr r0, _02266818 ; =0x00000954
	ldrsh r1, [r5, r0]
	cmp r4, r1
	beq _022667BA
	strh r4, [r5, r0]
	add r0, r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, r4
	bls _022667BA
	cmp r4, #0
	beq _022667AA
	add r2, r5, #0
	sub r1, r4, #1
	mov r0, #0x78
	mul r0, r1
	add r2, #0xc
	add r0, r2, r0
	mov r1, #0
	bl sub_020182A0
_022667AA:
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r4
	add r0, r1, r0
	mov r1, #1
	bl sub_020182A0
_022667BA:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x20
	bge _022667C6
	add r0, r0, #1
	strh r0, [r5, #2]
_022667C6:
	ldr r0, _0226681C ; =0x00000956
	mov r4, #0
	ldrsh r0, [r5, r0]
	str r4, [sp]
	cmp r0, #0
	ble _02266812
	add r6, r5, #0
	add r6, #0xc
_022667D6:
	add r0, r6, #0
	bl sub_020182A4
	cmp r0, #0
	beq _02266806
	ldr r0, _0226681C ; =0x00000956
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	cmp r4, r0
	bne _022667FA
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov49_02265B28
	str r0, [sp]
	b _02266806
_022667FA:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov49_02265B14
_02266806:
	ldr r0, _0226681C ; =0x00000956
	add r4, r4, #1
	ldrsh r0, [r5, r0]
	add r6, #0x78
	cmp r4, r0
	blt _022667D6
_02266812:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266818: .word 0x00000954
_0226681C: .word 0x00000956
	thumb_func_end ov49_0226676C

	thumb_func_start ov49_02266820
ov49_02266820: ; 0x02266820
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, _02266968 ; =0x0000087C
	add r5, r1, #0
	ldr r0, [r5, r0]
	ldrb r0, [r0, #2]
	cmp r0, #0x11
	bne _02266836
	bl GF_AssertFail
_02266836:
	ldr r0, _0226696C ; =0x00000954
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _0226684E
	sub r1, r1, #1
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_020182A0
	b _022668AA
_0226684E:
	mov r0, #2
	ldrsh r1, [r5, r0]
	cmp r1, #3
	bge _022668AA
	add r0, r5, #0
	add r1, r1, #1
	bl ov49_02265968
	cmp r0, #1
	bne _022668AA
	add r0, r5, #0
	add r0, #0xc
	mov r1, #1
	bl sub_020182A0
	mov r2, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r3, r2, #0
	bl ov49_02265B28
	cmp r0, #1
	bne _022668AA
	mov r1, #2
	ldrsh r0, [r5, r1]
	mov r2, #3
	add r0, r0, #1
	strh r0, [r5, #2]
	ldr r0, _0226696C ; =0x00000954
	str r2, [r5, r0]
	ldrsh r0, [r5, r1]
	cmp r0, #3
	bge _022668A0
	mov r2, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r3, r2, #0
	str r2, [sp]
	bl ov49_02265BE8
	b _022668AA
_022668A0:
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_020182A0
_022668AA:
	add r7, r5, #0
	mov r4, #1
	add r7, #0xc
	str r4, [sp, #8]
	add r7, #0x78
	add r6, r5, #4
_022668B6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02265968
	cmp r0, #1
	bne _02266956
	mov r0, #2
	ldrsh r1, [r5, r0]
	sub r0, r4, #1
	cmp r1, r0
	ble _02266952
	add r0, r7, #0
	mov r1, #1
	bl sub_020182A0
	mov r0, #0xa
	lsl r0, r0, #0xa
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov49_02265B94
	cmp r0, #0
	bne _022668F0
	mov r0, #0
	str r0, [sp, #8]
	b _02266956
_022668F0:
	sub r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _02266970 ; =0x00000958
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0226691E
	add r0, r7, #0
	mov r1, #0
	bl sub_020182A0
	ldr r0, _02266968 ; =0x0000087C
	ldr r0, [r6, r0]
	ldrb r0, [r0]
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, _02266974 ; =0x00010558
	ldr r0, [r1, r0]
	mov r1, #0x1f
	bl NNS_G3dMdlSetMdlAlphaAll
	b _02266956
_0226691E:
	ldr r0, _02266970 ; =0x00000958
	ldr r0, [r1, r0]
	sub r2, r0, #1
	ldr r0, _02266970 ; =0x00000958
	str r2, [r1, r0]
	sub r0, #0xdc
	ldr r0, [r6, r0]
	ldrb r0, [r0]
	lsl r2, r0, #4
	ldr r0, [sp, #4]
	add r2, r0, r2
	ldr r0, _02266974 ; =0x00010558
	ldr r0, [r2, r0]
	ldr r2, _02266970 ; =0x00000958
	ldr r1, [r1, r2]
	mov r2, #0x14
	mul r2, r1
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	bl NNS_G3dMdlSetMdlAlphaAll
	mov r0, #0
	str r0, [sp, #8]
	b _02266956
_02266952:
	mov r0, #0
	str r0, [sp, #8]
_02266956:
	add r4, r4, #1
	add r7, #0x78
	add r6, r6, #4
	cmp r4, #3
	ble _022668B6
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02266968: .word 0x0000087C
_0226696C: .word 0x00000954
_02266970: .word 0x00000958
_02266974: .word 0x00010558
	thumb_func_end ov49_02266820

	thumb_func_start ov49_02266978
ov49_02266978: ; 0x02266978
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r2, [r4, #1]
	add r5, r0, #0
	cmp r2, #0
	beq _0226698A
	cmp r2, #1
	beq _022669A0
	b _022669AC
_0226698A:
	bl ov49_02266D60
	cmp r0, #0
	beq _022669AC
	mov r0, #1
	strb r0, [r4, #1]
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02266EF8
	b _022669AC
_022669A0:
	bl ov49_022670B8
	cmp r0, #0
	beq _022669AC
	mov r0, #1
	pop {r3, r4, r5, pc}
_022669AC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02266978

	thumb_func_start ov49_022669B0
ov49_022669B0: ; 0x022669B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _02266A7C ; =0x00000955
	str r0, [sp]
	add r0, r1, #1
	ldrsb r2, [r5, r1]
	ldrb r0, [r5, r0]
	cmp r2, r0
	bge _02266A1C
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r5, r0]
	ldrsb r0, [r5, r0]
	cmp r0, #8
	blt _022669E0
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r5, r0]
	ldrsb r0, [r5, r1]
	add r0, r0, #1
	strb r0, [r5, r1]
_022669E0:
	ldr r0, _02266A80 ; =0x00000954
	ldrsb r1, [r5, r0]
	lsl r2, r1, #2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r2, r1, #3
	add r1, r0, #1
	ldrsb r1, [r5, r1]
	add r0, r0, #3
	ldrb r6, [r5, r0]
	lsl r1, r1, #2
	add r7, r2, r1
	cmp r6, r7
	bhs _02266A18
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r6
	add r4, r1, r0
_02266A08:
	add r0, r4, #0
	mov r1, #1
	bl sub_020182A0
	add r6, r6, #1
	add r4, #0x78
	cmp r6, r7
	blo _02266A08
_02266A18:
	ldr r0, _02266A84 ; =0x00000957
	strb r7, [r5, r0]
_02266A1C:
	ldr r0, _02266A84 ; =0x00000957
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02266A5C
	add r7, r5, #0
	add r7, #0xc
	add r6, r7, #0
_02266A2C:
	add r0, r7, #0
	bl sub_020182A4
	cmp r0, #1
	bne _02266A4E
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl ov49_02267A1C
	str r0, [sp, #4]
	cmp r0, #1
	bne _02266A4E
	add r0, r6, #0
	mov r1, #0
	bl sub_020182A0
_02266A4E:
	ldr r0, _02266A84 ; =0x00000957
	add r4, r4, #1
	ldrb r0, [r5, r0]
	add r7, #0x78
	add r6, #0x78
	cmp r4, r0
	blt _02266A2C
_02266A5C:
	ldr r0, _02266A7C ; =0x00000955
	ldrsb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r1, r0
	bne _02266A74
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02266A74
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266A74:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266A7C: .word 0x00000955
_02266A80: .word 0x00000954
_02266A84: .word 0x00000957
	thumb_func_end ov49_022669B0

	thumb_func_start ov49_02266A88
ov49_02266A88: ; 0x02266A88
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	ldr r0, _02266AAC ; =0x00000954
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov49_02267E18
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r1, r1, #1
	strh r1, [r4, #2]
	cmp r0, #2
	bne _02266AA8
	mov r0, #1
	pop {r4, pc}
_02266AA8:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_02266AAC: .word 0x00000954
	thumb_func_end ov49_02266A88

	thumb_func_start ov49_02266AB0
ov49_02266AB0: ; 0x02266AB0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #2
	add r6, r0, #0
	ldr r0, _02266AEC ; =0x00000954
	ldrsh r1, [r5, r1]
	add r0, r5, r0
	bl ov49_02267E18
	add r4, r0, #0
	mov r0, #2
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	strh r0, [r5, #2]
	cmp r4, #1
	bne _02266AD8
	add r0, r6, #0
	add r1, r5, #0
	bl ov49_02267D00
_02266AD8:
	add r0, r6, #0
	add r1, r5, #0
	bl ov49_02267D34
	cmp r4, #2
	bne _02266AE8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02266AE8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02266AEC: .word 0x00000954
	thumb_func_end ov49_02266AB0

	thumb_func_start ov49_02266AF0
ov49_02266AF0: ; 0x02266AF0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl ov49_02258F70
	cmp r0, #1
	bne _02266B04
	mov r0, #0
	pop {r4, r5, r6, pc}
_02266B04:
	mov r4, #0
_02266B06:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02265968
	cmp r0, #1
	bne _02266B1C
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov49_022659D0
_02266B1C:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02266B06
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_02266AF0

	thumb_func_start ov49_02266B28
ov49_02266B28: ; 0x02266B28
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl ov49_02258DAC
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _02266B44
	ldr r0, [r5, #8]
	bl ov49_0225CC44
_02266B44:
	ldr r0, [r4, #8]
	bl ov49_02258E34
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r5, #0xc]
	asr r3, r1, #3
	lsr r3, r3, #0x1c
	add r3, r1, r3
	lsl r1, r3, #0xc
	mov r3, #6
	ldrsh r2, [r2, r3]
	lsr r1, r1, #0x10
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	lsl r2, r3, #0xc
	lsr r2, r2, #0x10
	bl ov49_022589C4
	cmp r0, #0x2a
	bne _02266B84
	mov r1, #1
	b _02266B86
_02266B84:
	mov r1, #0
_02266B86:
	ldr r0, _02266C58 ; =0x00000965
	cmp r6, #1
	strb r1, [r4, r0]
	beq _02266B96
	cmp r6, #2
	beq _02266BB0
	cmp r6, #3
	b _02266BE2
_02266B96:
	ldr r3, _02266C5C ; =ov49_0226A74C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0226786C
	b _02266C2A
_02266BB0:
	ldr r3, _02266C5C ; =ov49_0226A74C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	ldr r3, _02266C60 ; =ov49_0226A750
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov49_02265980
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl ov49_0226786C
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0226786C
	b _02266C2A
_02266BE2:
	ldr r3, _02266C5C ; =ov49_0226A74C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov49_02265980
	ldr r3, _02266C60 ; =ov49_0226A750
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov49_02265980
	ldr r3, _02266C64 ; =ov49_0226A754
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02265980
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0226786C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov49_0226786C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	mov r3, #1
	bl ov49_0226786C
_02266C2A:
	ldr r0, _02266C68 ; =0x00000955
	mov r1, #0
	strb r6, [r4, r0]
	ldr r0, [r4, #8]
	bl ov49_02259130
	ldr r0, _02266C58 ; =0x00000965
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02266C4A
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02266C6C
	add sp, #8
	pop {r4, r5, r6, pc}
_02266C4A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02266D04
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02266C58: .word 0x00000965
_02266C5C: .word ov49_0226A74C
_02266C60: .word ov49_0226A750
_02266C64: .word ov49_0226A754
_02266C68: .word 0x00000955
	thumb_func_end ov49_02266B28

	thumb_func_start ov49_02266C6C
ov49_02266C6C: ; 0x02266C6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	ldr r0, [r5, #8]
	add r1, sp, #0x10
	bl ov49_02259154
	ldr r0, _02266CEC ; =0x00000955
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	ldr r0, _02266CF0 ; =ov49_0226A450
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _02266C9A
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02266CA8
_02266C9A:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02266CA8:
	ldr r6, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r7, [sp, #0x10]
	bl _ffix
	add r0, r6, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x6c
	str r0, [sp, #0xc]
	ldr r0, _02266CF4 ; =0x00000A04
	add r1, r7, #0
	add r0, r5, r0
	add r2, r7, #0
	add r3, r6, #0
	bl ov49_0226540C
	ldr r0, _02266CF8 ; =0x00000A2C
	mov r3, #2
	ldr r2, _02266CFC ; =0x0000071C
	add r0, r5, r0
	mov r1, #0
	lsl r3, r3, #0xe
	bl ov49_022655F4
	add r0, r5, #0
	bl ov49_0226747C
	ldr r0, _02266D00 ; =0x00000956
	mov r1, #0
	strh r1, [r5, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02266CEC: .word 0x00000955
_02266CF0: .word ov49_0226A450
_02266CF4: .word 0x00000A04
_02266CF8: .word 0x00000A2C
_02266CFC: .word 0x0000071C
_02266D00: .word 0x00000956
	thumb_func_end ov49_02266C6C

	thumb_func_start ov49_02266D04
ov49_02266D04: ; 0x02266D04
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl ov49_02259154
	mov r0, #2
	ldr r3, [sp, #0x14]
	lsl r0, r0, #0xc
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	add r0, r3, r0
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _02266D50 ; =0x00000A04
	add r2, r1, #0
	add r0, r4, r0
	bl ov49_0226540C
	ldr r0, _02266D54 ; =0x00000A2C
	mov r1, #0
	ldr r2, _02266D58 ; =0x0000071C
	add r0, r4, r0
	add r3, r1, #0
	bl ov49_022655F4
	add r0, r4, #0
	bl ov49_02267674
	ldr r0, _02266D5C ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	add sp, #0x1c
	pop {r3, r4, pc}
	.balign 4, 0
_02266D50: .word 0x00000A04
_02266D54: .word 0x00000A2C
_02266D58: .word 0x0000071C
_02266D5C: .word 0x00000956
	thumb_func_end ov49_02266D04

	thumb_func_start ov49_02266D60
ov49_02266D60: ; 0x02266D60
	push {r3, lr}
	ldr r2, _02266D78 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _02266D70
	bl ov49_02266D7C
	pop {r3, pc}
_02266D70:
	bl ov49_02266E78
	pop {r3, pc}
	nop
_02266D78: .word 0x00000965
	thumb_func_end ov49_02266D60

	thumb_func_start ov49_02266D7C
ov49_02266D7C: ; 0x02266D7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r1, _02266E64 ; =0x00000A04
	add r6, r0, #0
	add r0, r5, r1
	sub r1, #0xae
	ldrsh r1, [r5, r1]
	bl ov49_02265434
	str r0, [sp]
	ldr r0, _02266E68 ; =0x00000A2C
	add r0, r5, r0
	bl ov49_02265628
	ldr r0, _02266E6C ; =0x00000956
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl ov49_02259154
	ldr r0, _02266E64 ; =0x00000A04
	add r1, sp, #0xc
	add r0, r5, r0
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl ov49_022655E0
	ldr r0, _02266E68 ; =0x00000A2C
	add r1, sp, #8
	add r0, r5, r0
	bl ov49_02265660
	ldr r0, [sp]
	cmp r0, #0
	bne _02266DD0
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0xc]
_02266DD0:
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl ov49_02259148
	add r0, r5, #0
	bl ov49_0226747C
	ldr r0, _02266E70 ; =0x00000955
	mov r4, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _02266DFC
	ldr r7, _02266E70 ; =0x00000955
_02266DEA:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov49_0226789C
	ldrsb r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _02266DEA
_02266DFC:
	ldr r0, [r6, #4]
	ldr r7, [r5, #8]
	bl ov49_02258DAC
	cmp r7, r0
	bne _02266E5E
	ldr r0, _02266E74 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	mov r4, #4
	tst r1, r0
	beq _02266E16
	mov r4, #0
_02266E16:
	mov r1, #0x80
	tst r1, r0
	beq _02266E1E
	mov r4, #1
_02266E1E:
	mov r1, #0x10
	tst r1, r0
	beq _02266E26
	mov r4, #3
_02266E26:
	mov r1, #0x20
	tst r0, r1
	beq _02266E2E
	mov r4, #2
_02266E2E:
	cmp r4, #4
	beq _02266E5E
	add r0, r7, #0
	add r1, r4, #0
	bl ov49_02259160
	ldr r0, [r5, #8]
	bl ov49_02258E34
	add r1, sp, #4
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r5, #8]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	add r2, r4, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov49_02258E04
_02266E5E:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02266E64: .word 0x00000A04
_02266E68: .word 0x00000A2C
_02266E6C: .word 0x00000956
_02266E70: .word 0x00000955
_02266E74: .word gSystem
	thumb_func_end ov49_02266D7C

	thumb_func_start ov49_02266E78
ov49_02266E78: ; 0x02266E78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, _02266EE8 ; =0x00000A04
	add r6, r0, #0
	add r0, r5, r1
	sub r1, #0xae
	ldrsh r1, [r5, r1]
	bl ov49_02265434
	str r0, [sp]
	ldr r0, _02266EEC ; =0x00000A2C
	add r0, r5, r0
	bl ov49_02265628
	ldr r0, _02266EF0 ; =0x00000956
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl ov49_02259154
	ldr r0, _02266EE8 ; =0x00000A04
	add r1, sp, #4
	add r0, r5, r0
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov49_022655E0
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl ov49_02259148
	add r0, r5, #0
	bl ov49_02267674
	ldr r0, _02266EF4 ; =0x00000955
	mov r4, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _02266EE0
	ldr r7, _02266EF4 ; =0x00000955
_02266ECE:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov49_0226789C
	ldrsb r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _02266ECE
_02266EE0:
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266EE8: .word 0x00000A04
_02266EEC: .word 0x00000A2C
_02266EF0: .word 0x00000956
_02266EF4: .word 0x00000955
	thumb_func_end ov49_02266E78

	thumb_func_start ov49_02266EF8
ov49_02266EF8: ; 0x02266EF8
	push {r3, lr}
	ldr r2, _02266F10 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _02266F08
	bl ov49_02266F14
	pop {r3, pc}
_02266F08:
	bl ov49_02267074
	pop {r3, pc}
	nop
_02266F10: .word 0x00000965
	thumb_func_end ov49_02266EF8

	thumb_func_start ov49_02266F14
ov49_02266F14: ; 0x02266F14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, sp, #0x24
	bl ov49_02259154
	ldr r0, _0226705C ; =0x00000955
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	ldr r0, _02267060 ; =ov49_0226A450
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _02266F44
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02266F52
_02266F44:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02266F52:
	ldr r6, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	ldr r7, [sp, #0x24]
	bl _ffix
	sub r0, r6, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, _02267064 ; =0x00000A04
	add r1, r7, #0
	add r0, r5, r0
	add r2, r7, #0
	add r3, r6, #0
	bl ov49_0226540C
	ldr r1, _02267068 ; =0x00000956
	mov r4, #0
	strh r4, [r5, r1]
	sub r0, r1, #2
	strb r4, [r5, r0]
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _02267052
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
	add r0, r1, #0
	add r0, #0x36
	add r1, #0x12
	add r7, r5, r0
	add r6, r5, r1
_02266F9A:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x24
	add r2, sp, #0x28
	add r3, sp, #0x2c
	bl sub_020182B0
	mov r0, #0x96
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02266FBC
	cmp r0, #1
	beq _02266FD6
	cmp r0, #2
	beq _02266FF0
	b _02267008
_02266FBC:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x20]
	mov r0, #1
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #1
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0x12
	sub r0, r1, r0
	str r0, [sp, #0x18]
	b _02267008
_02266FD6:
	mov r0, #1
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x20]
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	b _02267008
_02266FF0:
	mov r0, #1
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x12
	sub r0, r1, r0
	str r0, [sp, #0x20]
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
_02267008:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r0, r7, #0
	bl ov49_0226540C
	mov r3, #6
	ldr r2, _0226706C ; =0x00000AAA
	add r0, r6, #0
	mov r1, #0
	lsl r3, r3, #0xc
	bl ov49_022655F4
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	bl ov49_0226786C
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r0, #0x78
	str r0, [sp, #0x14]
	ldr r0, _0226705C ; =0x00000955
	add r7, #0x28
	ldrsb r0, [r5, r0]
	add r6, #0xc
	cmp r4, r0
	blt _02266F9A
_02267052:
	ldr r0, _02267070 ; =0x00000964
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0226705C: .word 0x00000955
_02267060: .word ov49_0226A450
_02267064: .word 0x00000A04
_02267068: .word 0x00000956
_0226706C: .word 0x00000AAA
_02267070: .word 0x00000964
	thumb_func_end ov49_02266F14

	thumb_func_start ov49_02267074
ov49_02267074: ; 0x02267074
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl ov49_02259154
	mov r0, #2
	ldr r3, [sp, #0x14]
	lsl r0, r0, #0xc
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	sub r0, r3, r0
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _022670B0 ; =0x00000A04
	add r2, r1, #0
	add r0, r4, r0
	bl ov49_0226540C
	ldr r0, _022670B4 ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	sub r0, r0, #2
	strb r1, [r4, r0]
	add sp, #0x1c
	pop {r3, r4, pc}
	.balign 4, 0
_022670B0: .word 0x00000A04
_022670B4: .word 0x00000956
	thumb_func_end ov49_02267074

	thumb_func_start ov49_022670B8
ov49_022670B8: ; 0x022670B8
	push {r3, lr}
	ldr r2, _022670D0 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _022670C8
	bl ov49_022670D4
	pop {r3, pc}
_022670C8:
	bl ov49_02267328
	pop {r3, pc}
	nop
_022670D0: .word 0x00000965
	thumb_func_end ov49_022670B8

	thumb_func_start ov49_022670D4
ov49_022670D4: ; 0x022670D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	ldr r1, _02267300 ; =0x00000954
	add r6, r0, #0
	ldrsb r0, [r4, r1]
	cmp r0, #4
	bhi _0226710A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022670F0: ; jump table
	.short _022670FA - _022670F0 - 2 ; case 0
	.short _02267112 - _022670F0 - 2 ; case 1
	.short _02267128 - _022670F0 - 2 ; case 2
	.short _0226715E - _022670F0 - 2 ; case 3
	.short _022671B6 - _022670F0 - 2 ; case 4
_022670FA:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bge _0226710C
_0226710A:
	b _02267230
_0226710C:
	mov r0, #1
	strb r0, [r4, r1]
	b _02267230
_02267112:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov49_0225919C
	ldr r0, _02267304 ; =0x00000956
	mov r1, #0x10
	strh r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r4, r0]
	b _02267230
_02267128:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _02267230
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov49_0225919C
	ldr r0, _02267300 ; =0x00000954
	mov r1, #3
	strb r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov49_02258E60
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov49_02259160
	b _02267230
_0226715E:
	add r0, r1, #0
	add r1, r1, #2
	add r0, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov49_02265434
	add r5, r0, #0
	ldr r0, _02267304 ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	bl ov49_02259154
	ldr r0, _02267308 ; =0x00000A04
	add r1, sp, #0x30
	add r0, r4, r0
	add r2, sp, #0x34
	add r3, sp, #0x38
	bl ov49_022655E0
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	bl ov49_02259148
	cmp r5, #1
	bne _02267230
	ldr r0, _02267300 ; =0x00000954
	mov r1, #4
	strb r1, [r4, r0]
	add r1, r0, #2
	mov r2, #0
	strh r2, [r4, r1]
	ldr r1, [sp, #0x34]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r2, _0226730C ; =0x000005C2
	add r0, r6, #0
	add r1, r4, #0
	bl ov49_02265668
	b _02267230
_022671B6:
	add r0, r1, #2
	ldrsh r1, [r4, r0]
	ldr r0, _02267310 ; =0x00007FFF
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02267314 ; =FX_SinCosTable_
	ldrsh r2, [r0, r1]
	asr r0, r2, #0x1f
	lsr r1, r2, #0x11
	lsl r0, r0, #0xf
	orr r0, r1
	mov r1, #2
	lsl r3, r2, #0xf
	mov r2, #0
	lsl r1, r1, #0xa
	add r1, r3, r1
	adc r0, r2
	lsr r5, r1, #0xc
	lsl r0, r0, #0x14
	orr r5, r0
	ldr r0, [r4, #8]
	add r1, sp, #0x24
	bl ov49_02259154
	ldr r0, _02267318 ; =0x00000958
	add r1, sp, #0x24
	ldr r0, [r4, r0]
	add r0, r0, r5
	str r0, [sp, #0x28]
	ldr r0, [r4, #8]
	bl ov49_02259148
	ldr r0, _02267304 ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	cmp r1, #0xa
	ble _0226722E
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov49_02259130
	ldr r0, [r6, #4]
	ldr r4, [r4, #8]
	bl ov49_02258DAC
	cmp r4, r0
	bne _02267228
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov49_0225CC40
_02267228:
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226722E:
	strh r1, [r4, r0]
_02267230:
	ldr r1, _0226731C ; =0x00000964
	mov r5, #0
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0xf
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _022672F8
	add r0, r1, #0
	add r0, #0x28
	add r7, r4, r0
	add r0, r1, #4
	add r0, r4, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp]
_02267262:
	ldr r1, _0226731C ; =0x00000964
	add r0, r7, #0
	ldrb r1, [r4, r1]
	bl ov49_02265434
	cmp r0, #0
	bne _022672AA
	ldr r0, [sp, #0x10]
	bl ov49_02265628
	ldr r0, [sp, #0xc]
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl sub_020182B0
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl ov49_022655E0
	ldr r0, [sp, #4]
	add r1, sp, #0x14
	bl ov49_02265660
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	add r1, r1, r0
	ldr r0, [sp]
	ldr r3, [sp, #0x20]
	str r1, [sp, #0x18]
	bl sub_020182A8
	b _022672C4
_022672AA:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #4
	bl ov49_0226786C
	cmp r0, #1
	bne _022672C4
	ldr r2, _02267320 ; =0x000005A8
	add r0, r6, #0
	add r1, r4, #0
	bl ov49_02265668
_022672C4:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov49_0226789C
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r7, #0x28
	add r0, #0x78
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x78
	str r0, [sp]
	ldr r0, _02267324 ; =0x00000955
	ldrsb r0, [r4, r0]
	cmp r5, r0
	blt _02267262
_022672F8:
	mov r0, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02267300: .word 0x00000954
_02267304: .word 0x00000956
_02267308: .word 0x00000A04
_0226730C: .word 0x000005C2
_02267310: .word 0x00007FFF
_02267314: .word FX_SinCosTable_
_02267318: .word 0x00000958
_0226731C: .word 0x00000964
_02267320: .word 0x000005A8
_02267324: .word 0x00000955
	thumb_func_end ov49_022670D4

	thumb_func_start ov49_02267328
ov49_02267328: ; 0x02267328
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _02267464 ; =0x00000955
	add r4, r1, #0
	ldrsb r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	ble _0226734E
	ldr r7, _02267464 ; =0x00000955
_0226733C:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov49_0226789C
	ldrsb r0, [r4, r7]
	add r5, r5, #1
	cmp r5, r0
	blt _0226733C
_0226734E:
	ldr r1, _02267468 ; =0x00000954
	ldrsb r0, [r4, r1]
	cmp r0, #3
	bls _02267358
	b _0226745C
_02267358:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267364: ; jump table
	.short _0226736C - _02267364 - 2 ; case 0
	.short _0226739E - _02267364 - 2 ; case 1
	.short _022673B4 - _02267364 - 2 ; case 2
	.short _022673EA - _02267364 - 2 ; case 3
_0226736C:
	ldr r2, _0226746C ; =0x000005A8
	add r0, r6, #0
	add r1, r4, #0
	bl ov49_02265668
	ldr r0, _02267464 ; =0x00000955
	mov r5, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02267396
	ldr r7, _02267464 ; =0x00000955
_02267382:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #4
	bl ov49_0226786C
	ldrsb r0, [r4, r7]
	add r5, r5, #1
	cmp r5, r0
	blt _02267382
_02267396:
	ldr r0, _02267468 ; =0x00000954
	mov r1, #1
	strb r1, [r4, r0]
	b _0226745C
_0226739E:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov49_0225919C
	ldr r0, _02267470 ; =0x00000956
	mov r1, #8
	strh r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r4, r0]
	b _0226745C
_022673B4:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0226745C
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov49_0225919C
	ldr r0, _02267468 ; =0x00000954
	mov r1, #3
	strb r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov49_02258E60
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov49_02259160
	b _0226745C
_022673EA:
	add r0, r1, #0
	add r1, r1, #2
	add r0, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov49_02265434
	add r5, r0, #0
	ldr r0, _02267470 ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov49_02259154
	ldr r0, _02267474 ; =0x00000A04
	add r1, sp, #0
	add r0, r4, r0
	add r2, sp, #4
	add r3, sp, #8
	bl ov49_022655E0
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov49_02259148
	cmp r5, #1
	bne _0226745C
	ldr r0, _02267470 ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	ldr r1, [sp, #4]
	add r0, r0, #2
	str r1, [r4, r0]
	ldr r2, _02267478 ; =0x000005C2
	add r0, r6, #0
	add r1, r4, #0
	bl ov49_02265668
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov49_02259130
	ldr r0, [r6, #4]
	ldr r4, [r4, #8]
	bl ov49_02258DAC
	cmp r4, r0
	bne _02267456
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov49_0225CC40
_02267456:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226745C:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02267464: .word 0x00000955
_02267468: .word 0x00000954
_0226746C: .word 0x000005A8
_02267470: .word 0x00000956
_02267474: .word 0x00000A04
_02267478: .word 0x000005C2
	thumb_func_end ov49_02267328

	thumb_func_start ov49_0226747C
ov49_0226747C: ; 0x0226747C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl ov49_02259154
	ldr r0, _02267670 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0226749A
	cmp r0, #2
	beq _022674EA
	cmp r0, #3
	b _02267586
_0226749A:
	mov r0, #0xf
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0xc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_020182A8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_022674EA:
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0xc
	add r3, r4, r3
	bl sub_020182A8
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0x84
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_020182A8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02267586:
	mov r0, #0xf
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0xc
	add r3, r4, r3
	bl sub_020182A8
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0x84
	add r3, r4, r3
	bl sub_020182A8
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0xfc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_020182A8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02267670: .word 0x00000955
	thumb_func_end ov49_0226747C

	thumb_func_start ov49_02267674
ov49_02267674: ; 0x02267674
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl ov49_02259154
	ldr r0, _02267868 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _02267692
	cmp r0, #2
	beq _022676E2
	cmp r0, #3
	b _0226777E
_02267692:
	mov r0, #3
	lsl r0, r0, #0x10
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0xc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_020182A8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_022676E2:
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0xc
	sub r3, r4, r3
	bl sub_020182A8
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0x84
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_020182A8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226777E:
	mov r0, #3
	lsl r0, r0, #0x10
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0xc
	sub r3, r4, r3
	bl sub_020182A8
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0x84
	sub r3, r4, r3
	bl sub_020182A8
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	bl _ffix
	add r4, r0, #0
	add r0, r6, #0
	bl _ffix
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0xfc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_020182A8
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02267868: .word 0x00000955
	thumb_func_end ov49_02267674

	thumb_func_start ov49_0226786C
ov49_0226786C: ; 0x0226786C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r6, #0x96
	lsl r6, r6, #4
	add r5, r1, r6
	add r4, r3, #0
	ldrb r3, [r5, r2]
	cmp r4, r3
	beq _02267896
	strb r4, [r5, r2]
	mov r3, #0
	add r5, r1, r2
	sub r6, r6, #4
	strb r3, [r5, r6]
	lsl r4, r4, #0xd
	str r4, [sp]
	bl ov49_02265BE8
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02267896:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov49_0226786C

	thumb_func_start ov49_0226789C
ov49_0226789C: ; 0x0226789C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r3, #0x96
	add r7, r1, #0
	add r5, r2, #0
	add r4, r7, r5
	lsl r3, r3, #4
	ldrb r6, [r4, r3]
	sub r3, r3, #4
	add r4, r7, r3
	ldrb r3, [r4, r5]
	str r0, [sp, #4]
	cmp r3, #0
	bne _022678FC
	mov r3, #0
	bl ov49_02265C40
	lsl r1, r6, #0xd
	str r0, [sp, #8]
	cmp r0, r1
	bne _022678D0
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	b _022678E8
_022678D0:
	cmp r6, #4
	beq _022678D8
	str r1, [sp, #8]
	b _022678E8
_022678D8:
	add r1, r7, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r5
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
_022678E8:
	ldr r0, [sp, #8]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r5, #0
	mov r3, #0
	bl ov49_02265BE8
	mov r0, #8
	strb r0, [r4, r5]
_022678FC:
	ldrb r0, [r4, r5]
	sub r0, r0, #1
	strb r0, [r4, r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0226789C

	thumb_func_start ov49_02267908
ov49_02267908: ; 0x02267908
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r1, [sp, #0x14]
	ldr r0, [r0, #8]
	add r1, sp, #0x50
	str r2, [sp, #0x18]
	bl ov49_02259154
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bls _022679E6
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
_0226792A:
	ldr r1, [sp, #0x20]
	add r1, #0xd
	cmp r1, #0xf
	bls _02267934
	mov r1, #0xf
_02267934:
	ldr r0, _02267A04 ; =ov49_0226A4D8
	ldr r7, _02267A08 ; =ov49_0226A508
	str r0, [sp, #0x34]
	lsl r0, r1, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r1, _02267A0C ; =0x00000968
	str r0, [sp, #0x28]
	add r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x30]
_02267950:
	ldr r0, [sp, #0x1c]
	ldr r6, _02267A10 ; =ov49_0226A70C
	add r5, r4, r0
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r5, #0
	add r3, r6, r3
	bl ov49_02265980
	ldr r1, [sp, #0x34]
	add r0, sp, #0x50
	add r2, sp, #0x44
	bl VEC_Add
	add r0, sp, #0x44
	add r1, r7, #0
	add r2, sp, #0x38
	bl VEC_Add
	mov r0, #0x78
	mul r0, r5
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r0, r1, r0
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_020182A8
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r2, r0, r5
	ldr r0, _02267A14 ; =0x00000958
	strb r1, [r2, r0]
	ldr r0, [sp, #0x3c]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x28
	mul r1, r0
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	add r0, r0, r1
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x48]
	bl ov49_0226540C
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r0, #0xc
	add r7, #0xc
	str r0, [sp, #0x34]
	cmp r4, #4
	blt _02267950
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x20]
	cmp r1, r0
	blo _0226792A
_022679E6:
	ldr r2, _02267A18 ; =0x00000956
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r3, r2, #1
	strb r1, [r0, r2]
	ldr r1, [sp, #0x14]
	mov r0, #0
	strb r0, [r1, r3]
	sub r3, r2, #2
	strb r0, [r1, r3]
	add r2, r2, #1
	strb r0, [r1, r2]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_02267A04: .word ov49_0226A4D8
_02267A08: .word ov49_0226A508
_02267A0C: .word 0x00000968
_02267A10: .word ov49_0226A70C
_02267A14: .word 0x00000958
_02267A18: .word 0x00000956
	thumb_func_end ov49_02267908

	thumb_func_start ov49_02267A1C
ov49_02267A1C: ; 0x02267A1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	ldr r2, _02267A7C ; =0x00000958
	add r5, r1, #0
	add r1, r5, r2
	add r7, r0, #0
	ldrsb r0, [r1, r4]
	add r6, r4, #0
	add r2, #0x10
	add r0, r0, #1
	strb r0, [r1, r4]
	mov r0, #0x28
	mul r6, r0
	add r0, r5, r2
	ldrsb r1, [r1, r4]
	add r0, r0, r6
	bl ov49_02265434
	str r0, [sp]
	ldr r0, _02267A80 ; =0x00000968
	add r1, sp, #4
	add r0, r5, r0
	add r0, r0, r6
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov49_022655E0
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r4
	add r0, r1, r0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_020182A8
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov49_02265B14
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02267A7C: .word 0x00000958
_02267A80: .word 0x00000968
	thumb_func_end ov49_02267A1C

	thumb_func_start ov49_02267A84
ov49_02267A84: ; 0x02267A84
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r7, r1, #0
	mov r6, #0
	str r2, [sp, #4]
	add r0, r2, #0
	beq _02267ADE
	add r5, r7, #0
	ldr r4, _02267AE8 ; =ov49_0226A70C
	add r5, #0xc
_02267A9A:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov49_02265980
	ldr r0, [r7, #8]
	add r1, sp, #8
	bl ov49_02259154
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r3, r1, r0
	ldr r1, [sp, #8]
	add r0, r5, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_020182A8
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x78
	cmp r6, r0
	blo _02267A9A
_02267ADE:
	ldr r1, _02267AEC ; =0x00000954
	ldr r0, [sp, #4]
	strb r0, [r7, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02267AE8: .word ov49_0226A70C
_02267AEC: .word 0x00000954
	thumb_func_end ov49_02267A84

	thumb_func_start ov49_02267AF0
ov49_02267AF0: ; 0x02267AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #2
	ldrsh r1, [r5, r0]
	mov r0, #0xc
	add r6, r2, #0
	mul r0, r1
	mov r1, #0x30
	bl _s32_div_f
	add r4, r0, #0
	ldr r0, _02267C14 ; =0x00000954
	ldr r1, [r5, r0]
	cmp r4, r1
	beq _02267BF4
	str r4, [r5, r0]
	cmp r4, #0
	beq _02267B42
	mov r0, #0x30
	add r2, r6, #0
	mul r2, r0
	ldr r0, _02267C18 ; =ov49_0226A678
	lsl r1, r4, #2
	add r0, r0, r2
	add r2, r1, r0
	ldrh r0, [r1, r0]
	add r1, sp, #8
	strh r0, [r1, #4]
	ldrh r0, [r2, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	mov r1, #0x78
	add r0, #0xc
	mul r1, r2
	add r0, r0, r1
	mov r1, #0
	bl sub_020182A0
_02267B42:
	mov r0, #0x30
	add r2, r6, #0
	mul r2, r0
	ldr r0, _02267C1C ; =ov49_0226A67C
	lsl r1, r4, #2
	add r0, r0, r2
	add r2, r1, r0
	ldrh r1, [r1, r0]
	add r0, sp, #8
	strh r1, [r0]
	ldrh r4, [r2, #2]
	strh r4, [r0, #2]
	cmp r4, #0
	beq _02267BE2
	beq _02267B74
	lsl r7, r4, #0xc
	add r0, r7, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02267B84
_02267B74:
	lsl r7, r4, #0xc
	add r0, r7, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02267B84:
	add r1, sp, #8
	ldrh r6, [r1]
	bl _ffix
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov49_02265BE8
	cmp r4, #0
	beq _02267BB0
	add r0, r7, #0
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02267BBE
_02267BB0:
	add r0, r7, #0
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02267BBE:
	bl _ffix
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov49_02265BE8
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r6
	add r0, r1, r0
	mov r1, #1
	bl sub_020182A0
	b _02267BF4
_02267BE2:
	ldrh r1, [r0]
	add r2, r5, #0
	mov r0, #0x78
	mul r0, r1
	add r2, #0xc
	add r0, r2, r0
	mov r1, #0
	bl sub_020182A0
_02267BF4:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	bge _02267C00
	add r0, r0, #1
	strh r0, [r5, #2]
_02267C00:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	blt _02267C0E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02267C0E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02267C14: .word 0x00000954
_02267C18: .word ov49_0226A678
_02267C1C: .word ov49_0226A67C
	thumb_func_end ov49_02267AF0

	thumb_func_start ov49_02267C20
ov49_02267C20: ; 0x02267C20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r7, r1, #0
	mov r4, #0
	str r2, [sp, #4]
	add r0, r2, #0
	beq _02267C74
	add r5, r7, #0
	add r5, #0xc
_02267C34:
	add r3, r4, #6
	lsl r6, r3, #2
	ldr r3, _02267C84 ; =ov49_0226A70C
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r3, r6
	bl ov49_02265980
	ldr r0, [r7, #8]
	add r1, sp, #8
	bl ov49_02259154
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	str r2, [sp, #0xc]
	bl sub_020182A8
	add r0, r5, #0
	mov r1, #0
	bl sub_020182A0
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r5, #0x78
	cmp r4, r0
	blo _02267C34
_02267C74:
	ldr r0, _02267C88 ; =0x00000954
	mov r1, #0xff
	strh r1, [r7, r0]
	add r1, r0, #2
	ldr r0, [sp, #4]
	strh r0, [r7, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02267C84: .word ov49_0226A70C
_02267C88: .word 0x00000954
	thumb_func_end ov49_02267C20

	thumb_func_start ov49_02267C8C
ov49_02267C8C: ; 0x02267C8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [r1, #8]
	str r1, [sp, #4]
	add r1, sp, #8
	bl ov49_02259154
	mov r0, #0xa
	ldr r7, [sp, #4]
	mov r4, #0
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r5, r4, #0
	add r7, #0xc
_02267CC0:
	add r3, r4, #0
	add r3, #0x25
	lsl r6, r3, #2
	ldr r3, _02267CFC ; =ov49_0226A70C
	add r2, r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, #0x10
	add r3, r3, r6
	bl ov49_02265980
	add r1, r4, #0
	add r1, #0x10
	mov r0, #0x78
	mul r0, r1
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, r0
	add r1, r1, r5
	bl sub_020182A8
	mov r0, #6
	lsl r0, r0, #0xe
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #2
	blt _02267CC0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02267CFC: .word ov49_0226A70C
	thumb_func_end ov49_02267C8C

	thumb_func_start ov49_02267D00
ov49_02267D00: ; 0x02267D00
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02267D30 ; =0x00000D0C
	mov r2, #1
	strh r2, [r1, r0]
	add r4, r1, #0
	mov r5, #0
	add r0, r0, #2
	strh r5, [r1, r0]
	add r4, #0xc
	add r7, r2, #0
	mov r6, #0x78
_02267D16:
	add r0, r5, #0
	add r0, #0x10
	add r1, r0, #0
	mul r1, r6
	add r0, r4, r1
	add r1, r7, #0
	bl sub_020182A0
	add r5, r5, #1
	cmp r5, #2
	blt _02267D16
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02267D30: .word 0x00000D0C
	thumb_func_end ov49_02267D00

	thumb_func_start ov49_02267D34
ov49_02267D34: ; 0x02267D34
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02267D90 ; =0x00000D0C
	add r7, r0, #0
	ldrh r0, [r5, r1]
	cmp r0, #0
	beq _02267D8E
	add r0, r1, #2
	ldrh r0, [r5, r0]
	cmp r0, #0xd
	bhs _02267D56
	add r0, r1, #2
	ldrh r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r5, r0]
	b _02267D5A
_02267D56:
	mov r0, #0
	strh r0, [r5, r1]
_02267D5A:
	add r6, r5, #0
	mov r4, #0
	add r6, #0xc
_02267D60:
	ldr r0, _02267D94 ; =0x00000D0E
	ldrh r0, [r5, r0]
	cmp r0, #0xd
	bhs _02267D78
	add r2, r4, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, #0x10
	mov r3, #0
	bl ov49_02265B14
	b _02267D88
_02267D78:
	add r1, r4, #0
	add r1, #0x10
	mov r0, #0x78
	mul r0, r1
	add r0, r6, r0
	mov r1, #0
	bl sub_020182A0
_02267D88:
	add r4, r4, #1
	cmp r4, #2
	blt _02267D60
_02267D8E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02267D90: .word 0x00000D0C
_02267D94: .word 0x00000D0E
	thumb_func_end ov49_02267D34

	thumb_func_start ov49_02267D98
ov49_02267D98: ; 0x02267D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	mov r7, #2
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	mov r6, #1
	str r0, [sp, #0x34]
	mov r0, #0x3b
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r4, [sp, #0x34]
	strh r2, [r5, r1]
	add r0, r0, #6
	strh r3, [r5, r0]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r4, #0xc
	str r0, [sp, #0xc]
_02267DC8:
	ldr r1, [sp, #0x10]
	mov r0, #0x78
	mul r0, r1
	add r0, r4, r0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #8]
	mov r1, #0x78
	mul r1, r2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r2, #0x78
	mov r3, #0x78
	mul r2, r6
	mul r3, r7
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov49_02267EBC
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r5, #0xec
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02267DC8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02267D98

	thumb_func_start ov49_02267E18
ov49_02267E18: ; 0x02267E18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xed
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	str r1, [sp]
	cmp r0, #0
	ble _02267E86
	ldr r4, [sp, #8]
	add r6, sp, #0x10
_02267E34:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, r4
	ldrh r0, [r0, r4]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldr r0, [sp]
	cmp r1, r0
	bne _02267E72
	ldrb r7, [r6, #2]
	cmp r7, #4
	blo _02267E56
	bl GF_AssertFail
_02267E56:
	ldrb r0, [r6, #3]
	str r0, [sp, #4]
	cmp r0, #4
	bls _02267E62
	bl GF_AssertFail
_02267E62:
	mov r0, #0xec
	mul r0, r7
	ldr r1, [sp, #4]
	add r0, r5, r0
	bl ov49_02267EF8
	mov r0, #1
	str r0, [sp, #8]
_02267E72:
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xed
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _02267E34
_02267E86:
	mov r7, #1
	mov r6, #0
	add r4, r5, #0
_02267E8C:
	add r0, r4, #0
	bl ov49_02267F40
	cmp r0, #0
	bne _02267E98
	mov r7, #0
_02267E98:
	add r6, r6, #1
	add r4, #0xec
	cmp r6, #4
	blt _02267E8C
	ldr r0, _02267EB8 ; =0x000003B6
	ldrh r1, [r5, r0]
	ldr r0, [sp]
	cmp r1, r0
	bhi _02267EB2
	cmp r7, #1
	bne _02267EB2
	mov r0, #2
	str r0, [sp, #8]
_02267EB2:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02267EB8: .word 0x000003B6
	thumb_func_end ov49_02267E18

	thumb_func_start ov49_02267EBC
ov49_02267EBC: ; 0x02267EBC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #3
	blo _02267ED0
	bl GF_AssertFail
_02267ED0:
	add r0, r5, #0
	add r0, #0xd8
	str r4, [r0]
	add r0, r5, #0
	add r0, #0xdc
	str r6, [r0]
	add r0, r5, #0
	add r0, #0xe0
	str r7, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	add r0, #0xe4
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x1c]
	add r0, #0xe8
	str r1, [r0]
	ldr r0, [sp, #0x20]
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02267EBC

	thumb_func_start ov49_02267EF8
ov49_02267EF8: ; 0x02267EF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r4, _02267F38 ; =0x00000000
	beq _02267F18
	add r5, r7, #0
_02267F04:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0]
	mov r1, #1
	bl sub_020182A0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _02267F04
_02267F18:
	mov r0, #0
	strh r0, [r7]
	mov r0, #1
	strb r0, [r7, #6]
	strh r6, [r7, #4]
	ldrh r2, [r7, #2]
	add r1, r7, #0
	add r1, #0xe8
	lsl r3, r2, #2
	ldr r2, _02267F3C ; =ov49_0226A4CC
	ldr r1, [r1]
	ldr r2, [r2, r3]
	add r0, r7, #0
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02267F38: .word 0x00000000
_02267F3C: .word ov49_0226A4CC
	thumb_func_end ov49_02267EF8

	thumb_func_start ov49_02267F40
ov49_02267F40: ; 0x02267F40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r1, [r5, #6]
	cmp r1, #0
	bne _02267F4E
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02267F4E:
	ldrh r1, [r5, #2]
	lsl r2, r1, #2
	ldr r1, _02267F90 ; =ov49_0226A484
	ldr r1, [r1, r2]
	blx r1
	mov r6, #0
	str r0, [sp]
	ldrsh r0, [r5, r6]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	bne _02267F8C
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _02267F88
	add r4, r5, #0
	add r7, r6, #0
_02267F72:
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	add r1, r7, #0
	bl sub_020182A0
	ldrh r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _02267F72
_02267F88:
	mov r0, #0
	strb r0, [r5, #6]
_02267F8C:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02267F90: .word ov49_0226A484
	thumb_func_end ov49_02267F40


    .rodata

ov49_0226A450: ; 0x0226A450
	.byte 0x30, 0x54, 0x80, 0x00

ov49_0226A454: ; 0x0226A454
	.byte 0x00, 0x00, 0x00, 0x02, 0x18, 0x00, 0x02, 0x02

ov49_0226A45C: ; 0x0226A45C
	.byte 0x00, 0x00, 0x00, 0x02
	.byte 0x18, 0x00, 0x02, 0x02

ov49_0226A464: ; 0x0226A464
	.byte 0x00, 0x00, 0x00, 0x02, 0x18, 0x00, 0x02, 0x02

ov49_0226A46C: ; 0x0226A46C
	.byte 0x00, 0x00, 0x00, 0x03
	.byte 0x18, 0x00, 0x02, 0x03

ov49_0226A474: ; 0x0226A474
	.byte 0x00, 0x00, 0x00, 0x04, 0x14, 0x00, 0x02, 0x04

ov49_0226A47C: ; 0x0226A47C
	.byte 0x00, 0x00, 0x00, 0x02
	.byte 0x18, 0x00, 0x01, 0x02

ov49_0226A484: ; 0x0226A484
	.word ov49_022680B4
	.word ov49_02268230
	.word ov49_02268334
	.byte 0x02, 0x00, 0x38, 0x00, 0x0E, 0x00, 0x38, 0x00, 0x08, 0x00, 0x3C, 0x00

ov49_0226A49C: ; 0x0226A49C
	.byte 0x00, 0x00, 0x00, 0x03
	.byte 0x10, 0x00, 0x02, 0x03, 0x28, 0x00, 0x00, 0x03, 0x02, 0x00, 0x2C, 0x00, 0x0E, 0x00, 0x2C, 0x00
	.byte 0x08, 0x00, 0x30, 0x00

ov49_0226A4B4: ; 0x0226A4B4
	.byte 0x00, 0x00, 0x00, 0x04, 0x10, 0x00, 0x02, 0x04, 0x20, 0x00, 0x00, 0x04

ov49_0226A4C0: ; 0x0226A4C0
	.byte 0x00, 0x00, 0x00, 0x04, 0x10, 0x00, 0x02, 0x04, 0x23, 0x00, 0x00, 0x04

ov49_0226A4CC: ; 0x0226A4CC
	.word ov49_02267F94
	.word ov49_0226813C
	.word ov49_022682D4

ov49_0226A4D8: ; 0x0226A4D8
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x80, 0xFF, 0xFF
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0xE0, 0xFE, 0xFF, 0x00, 0xE0, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x80, 0xFF, 0xFF

ov49_0226A508: ; 0x0226A508
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xFF, 0xFF, 0x00, 0x80, 0xFF, 0xFF, 0x00, 0x80, 0xFF, 0xFF
	.byte 0x00, 0x80, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00

ov49_0226A538: ; 0x0226A538
	.word ov49_02266A88
	.word ov49_02266A88
	.word ov49_02266A88
	.word ov49_02266A88
	.word ov49_02266A88
	.word ov49_02266A88
	.word ov49_02266AB0
	.word ov49_02266AB0
	.word ov49_02266AB0
	.word ov49_02266678
	.word ov49_02266678
	.word ov49_02266678
	.word ov49_02266748
	.word ov49_02266754
	.word ov49_02266760
	.word ov49_0226676C
	.word ov49_0226676C
	.word ov49_0226676C
	.word ov49_02266820
	.word ov49_02266820
	.word ov49_02266820
	.word ov49_022669B0
	.word ov49_022669B0
	.word ov49_022669B0
	.word ov49_02266978
	.word ov49_02266978
	.word ov49_02266978

ov49_0226A5A4: ; 0x0226A5A4
	.word ov49_0226639C
	.word ov49_022663EC
	.word ov49_0226643C
	.word ov49_0226648C
	.word ov49_022664DC
	.word ov49_0226652C
	.word ov49_0226657C
	.word ov49_022665D0
	.word ov49_02266624
	.word ov49_02265C68
	.word ov49_02265C74
	.word ov49_02265C80
	.word ov49_02265CB0
	.word ov49_02265CB0
	.word ov49_02265CB0
	.word ov49_02265C8C
	.word ov49_02265C98
	.word ov49_02265CA4
	.word ov49_02265D10
	.word ov49_02265E54
	.word ov49_02266088
	.word ov49_02266378
	.word ov49_02266384
	.word ov49_02266390
	.word ov49_02266354
	.word ov49_02266360
	.word ov49_0226636C

ov49_0226A610: ; 0x0226A610
	.byte 0x9C, 0x05, 0x00, 0x00, 0x9D, 0x05, 0x00, 0x00, 0x9E, 0x05, 0x00, 0x00, 0xA2, 0x05, 0x00, 0x00
	.byte 0xA3, 0x05, 0x00, 0x00, 0xA4, 0x05, 0x00, 0x00, 0x9F, 0x05, 0x00, 0x00, 0xA0, 0x05, 0x00, 0x00
	.byte 0xA1, 0x05, 0x00, 0x00, 0xAA, 0x05, 0x00, 0x00, 0xAB, 0x05, 0x00, 0x00, 0xAC, 0x05, 0x00, 0x00
	.byte 0xB0, 0x05, 0x00, 0x00, 0xB1, 0x05, 0x00, 0x00, 0xB2, 0x05, 0x00, 0x00, 0xA5, 0x05, 0x00, 0x00
	.byte 0xA6, 0x05, 0x00, 0x00, 0xA7, 0x05, 0x00, 0x00, 0xB6, 0x05, 0x00, 0x00, 0xB7, 0x05, 0x00, 0x00
	.byte 0xB8, 0x05, 0x00, 0x00, 0xB9, 0x05, 0x00, 0x00, 0xBA, 0x05, 0x00, 0x00, 0xBB, 0x05, 0x00, 0x00
	.byte 0xA9, 0x05, 0x00, 0x00, 0xA9, 0x05, 0x00, 0x00

ov49_0226A678: ; 0x0226A678
	.byte 0xA9, 0x05, 0x00, 0x00

ov49_0226A67C: ; 0x0226A67C
	.byte 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x01, 0x00

ov49_0226A70C: ; 0x0226A70C
	.byte 0x00, 0x00, 0x00, 0x11
	.byte 0x00, 0x01, 0x00, 0x11, 0x00, 0x02, 0x00, 0x11, 0x01, 0x03, 0x01, 0x02, 0x01, 0x04, 0x01, 0x02
	.byte 0x01, 0x05, 0x01, 0x02, 0x01, 0x06, 0x03, 0x11, 0x01, 0x07, 0x03, 0x11, 0x01, 0x08, 0x03, 0x11

ov49_0226A730: ; 0x0226A730
	.byte 0x05, 0x0B, 0x06, 0x11

ov49_0226A734: ; 0x0226A734
	.byte 0x03, 0x09, 0x04, 0x11

ov49_0226A738: ; 0x0226A738
	.byte 0x04, 0x0A, 0x05, 0x11

ov49_0226A73C: ; 0x0226A73C
	.byte 0x06, 0x0C, 0x07, 0x11
	.byte 0x07, 0x0D, 0x08, 0x11, 0x08, 0x0E, 0x09, 0x11, 0x09, 0x0F, 0x0A, 0x11

ov49_0226A74C: ; 0x0226A74C
	.byte 0x0A, 0x10, 0x0B, 0x11

ov49_0226A750: ; 0x0226A750
	.byte 0x0B, 0x11, 0x0C, 0x11

ov49_0226A754: ; 0x0226A754
	.byte 0x0C, 0x12, 0x0D, 0x11, 0x02, 0x13, 0x11, 0x11, 0x02, 0x14, 0x11, 0x11
	.byte 0x02, 0x15, 0x11, 0x11, 0x02, 0x16, 0x11, 0x11, 0x02, 0x17, 0x11, 0x11, 0x02, 0x18, 0x11, 0x11
	.byte 0x02, 0x19, 0x11, 0x11, 0x02, 0x1A, 0x11, 0x11, 0x02, 0x1B, 0x11, 0x11, 0x02, 0x1C, 0x11, 0x11
	.byte 0x02, 0x1D, 0x11, 0x11, 0x02, 0x1E, 0x11, 0x11, 0x02, 0x1F, 0x11, 0x11, 0x02, 0x20, 0x11, 0x11
	.byte 0x02, 0x21, 0x11, 0x11, 0x02, 0x22, 0x11, 0x11, 0x02, 0x23, 0x11, 0x11, 0x02, 0x24, 0x11, 0x11
	.byte 0x0D, 0x25, 0x0E, 0x11, 0x0E, 0x26, 0x0F, 0x11

ov49_0226A7A8: ; 0x0226A7A8
	.byte 0x13, 0x14, 0x13, 0x14, 0x13, 0x14, 0x13, 0x14
	.byte 0x13, 0x14, 0x13, 0x14, 0x13, 0x14, 0x13, 0x14

ov49_0226A7B8: ; 0x0226A7B8
	.byte 0x13, 0x14, 0x15, 0x13, 0x1C, 0x1D, 0x1B, 0x19
	.byte 0x19, 0x1D, 0x14, 0x13, 0x1D, 0x1B, 0x17, 0x13

ov49_0226A7C8: ; 0x0226A7C8
	.byte 0x13, 0x14, 0x1F, 0x23, 0x20, 0x22, 0x1B, 0x1E
	.byte 0x24, 0x1D, 0x18, 0x21, 0x1E, 0x15, 0x22, 0x1F

