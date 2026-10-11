	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225A7BC
	.public ov89_0225A878
	.extern ov89_0225A958
	.extern ov89_0225A9B4
	.extern ov89_0225AA24
	.extern ov89_0225AC68

	.text

	.text
	thumb_func_start ov89_0225A7BC
ov89_0225A7BC: ; 0x0225A7BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #8]
	mov r1, #0x91
	add r7, r0, #0
	mov r0, #0x7d
	lsl r1, r1, #2
	add r5, r2, #0
	str r3, [sp, #0xc]
	bl Heap_Alloc
	mov r2, #0x91
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	mov r2, #9
	lsl r2, r2, #6
	ldr r1, [r4, r2]
	ldr r0, _0225A874 ; =0x00FFFFFF
	add r6, r5, #0
	and r1, r0
	lsl r0, r0, #0x18
	orr r0, r1
	str r0, [r4, r2]
	ldmia r6!, {r0, r1}
	add r3, r4, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	sub r2, #0x53
	str r0, [r3]
	ldrh r0, [r4, #2]
	cmp r0, r2
	bls _0225A80A
	bl GF_AssertFail
	mov r0, #0x84
	strh r0, [r4, #2]
_0225A80A:
	ldr r0, [sp, #0x34]
	str r4, [sp]
	str r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x30]
	add r1, #0xc
	bl ov89_0225A878
	cmp r0, #0
	bne _0225A828
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225A828:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x1c
	add r1, #0xc
	bl sub_020181B0
	add r0, sp, #0x10
	str r0, [sp]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #0xa]
	add r0, r7, #0
	add r3, sp, #0x14
	bl ov89_0225AC68
	add r0, r4, #0
	mov r3, #1
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, #0x1c
	lsl r3, r3, #0x10
	bl sub_020182A8
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r0, #0x1c
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020182C4
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0
	bl sub_020182A0
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A874: .word 0x00FFFFFF
	thumb_func_end ov89_0225A7BC

	thumb_func_start ov89_0225A878
ov89_0225A878: ; 0x0225A878
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r2, #0
	add r7, r0, #0
	add r5, r1, #0
	add r6, r3, #0
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x1d
	mov r3, #0x7d
	str r2, [sp]
	bl GfGfxLoader_LoadFromOpenNarc
	str r0, [r5]
	cmp r0, #0
	bne _0225A89C
	bl GF_AssertFail
_0225A89C:
	ldr r0, [r5]
	bl NNS_G3dGetMdlSet
	str r0, [r5, #4]
	cmp r0, #0
	beq _0225A8C8
	add r1, r0, #0
	add r1, #8
	beq _0225A8BC
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _0225A8BC
	ldrh r2, [r0, #0xe]
	add r1, r1, r2
	add r1, r1, #4
	b _0225A8BE
_0225A8BC:
	mov r1, #0
_0225A8BE:
	cmp r1, #0
	beq _0225A8C8
	ldr r1, [r1]
	add r0, r0, r1
	b _0225A8CA
_0225A8C8:
	mov r0, #0
_0225A8CA:
	str r0, [r5, #8]
	ldr r0, [r5]
	bl NNS_G3dGetTex
	str r0, [r5, #0xc]
	cmp r0, #0
	beq _0225A94A
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r1, [sp]
	add r1, r4, #0
	add r2, r6, #0
	bl ov89_0225AA24
	ldr r0, [r5, #0xc]
	bl ov89_0225A9B4
	add r4, r0, #0
	beq _0225A8FC
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	bl ov89_0225A958
	cmp r0, #0
	bne _0225A942
_0225A8FC:
	cmp r4, #1
	bne _0225A926
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	add r2, sp, #4
	bl NNS_G3dTexReleaseTexKey
	ldr r1, _0225A950 ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [sp, #8]
	ldr r1, [r1]
	blx r1
	ldr r1, _0225A950 ; =NNS_GfdDefaultFuncFreeTexVram
	ldr r0, [sp, #4]
	ldr r1, [r1]
	blx r1
	ldr r0, [r5, #0xc]
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _0225A954 ; =NNS_GfdDefaultFuncFreePlttVram
	ldr r1, [r1]
	blx r1
_0225A926:
	ldr r0, [r5]
	cmp r0, #0
	beq _0225A930
	bl Heap_Free
_0225A930:
	mov r1, #0x10
	mov r0, #0
_0225A934:
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _0225A934
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0225A942:
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	bl GF3dRender_BindModelSet
_0225A94A:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A950: .word NNS_GfdDefaultFuncFreeTexVram
_0225A954: .word NNS_GfdDefaultFuncFreePlttVram
	thumb_func_end ov89_0225A878

