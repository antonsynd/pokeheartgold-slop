	.include "macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225A878
	.extern ov89_0225A958
	.extern ov89_0225A9B4
	.extern ov89_0225AA24

	.text

	.text
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

