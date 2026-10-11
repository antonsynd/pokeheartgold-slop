	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02258A80
	.public ov48_02258B7C
	.public ov48_02258BF4
	.public ov48_02258C6C
	.public ov48_02259A68
	.public ov48_0225B1EC

	.text

	thumb_func_start ov48_02258A80
ov48_02258A80: ; 0x02258A80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0x62
	add r1, r2, #0
	str r2, [sp, #0x10]
	bl NARC_New
	mov r2, #0
	str r2, [r5]
	str r2, [sp]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r3, [sp, #0x10]
	mov r1, #0x12
	str r0, [sp, #0x24]
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	mov r1, #6
	bl _u32_div_f
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	mov r6, #1
	add r4, r0, #6
	cmp r7, #1
	ble _02258AEE
_02258ABC:
	ldrh r0, [r4]
	cmp r0, #2
	beq _02258AE6
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #2
	str r0, [sp, #8]
	mov r3, #4
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r5]
	add r0, r5, #0
	bl ov48_02258B7C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_02258AE6:
	add r6, r6, #1
	add r4, r4, #6
	cmp r6, r7
	blt _02258ABC
_02258AEE:
	ldr r0, [sp, #0x20]
	bl Heap_Free
	mov r7, #1
	bl LocationGmmDatCountGet
	str r0, [sp, #0x18]
	cmp r0, #1
	ble _02258B72
_02258B00:
	add r0, r7, #0
	bl LocationGmmDatGetEarthPlaceDatId
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x10]
	mov r2, #0
	bl GfGfxLoader_LoadFromOpenNarc_GetSizeOut
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	mov r6, #1
	lsr r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r4, r0, #4
	ldr r0, [sp, #0x14]
	cmp r0, #1
	ble _02258B64
_02258B2E:
	add r0, r7, #0
	bl LocationGmmDatGetCountryMsgNo
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r2, #0
	str r0, [sp, #8]
	mov r3, #2
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r5]
	add r0, r5, #0
	bl ov48_02258B7C
	ldr r0, [r5]
	add r6, r6, #1
	add r0, r0, #1
	str r0, [r5]
	ldr r0, [sp, #0x14]
	add r4, r4, #4
	cmp r6, r0
	blt _02258B2E
_02258B64:
	ldr r0, [sp, #0x1c]
	bl Heap_Free
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	cmp r7, r0
	blt _02258B00
_02258B72:
	ldr r0, [sp, #0x24]
	bl NARC_Delete
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov48_02258A80

	thumb_func_start ov48_02258B7C
ov48_02258B7C: ; 0x02258B7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r5, _02258BF0 ; =ov48_0225B1EC
	add r7, r2, #0
	add r6, r3, #0
	add r4, r0, #0
	mov ip, r1
	add r3, sp, #0xc
	mov r2, #4
_02258B8E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02258B8E
	ldr r0, [r5]
	mov r1, #0x30
	str r0, [r3]
	mov r0, ip
	add r5, r0, #0
	mul r5, r1
	add r0, r4, r5
	strh r7, [r0, #4]
	strh r6, [r0, #6]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, sp, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl ov48_02258C6C
	add r3, r4, r5
	add r6, sp, #0xc
	add r3, #8
	mov r2, #4
_02258BC0:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02258BC0
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _02258BE0
	add r2, sp, #0x38
	ldrh r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	bl ov48_02259A68
	add r1, r4, r5
	strh r0, [r1, #0x2c]
_02258BE0:
	add r0, sp, #0x38
	ldrh r2, [r0, #0x10]
	add r1, r4, r5
	strh r2, [r1, #0x2e]
	ldrh r0, [r0, #0x14]
	strh r0, [r1, #0x30]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02258BF0: .word ov48_0225B1EC
	thumb_func_end ov48_02258B7C

	thumb_func_start ov48_02258BF4
ov48_02258BF4: ; 0x02258BF4
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, [r4, #4]
	ldr r3, _02258C68 ; =FX_SinCosTable_
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #4
	lsl r2, r1, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r5, r0, #0
	bl MTX_RotY33_
	ldr r0, [r4]
	ldr r3, _02258C68 ; =FX_SinCosTable_
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotX33_
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl MTX_Concat33
	ldr r0, [r4, #8]
	ldr r3, _02258C68 ; =FX_SinCosTable_
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotZ33_
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl MTX_Concat33
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02258C68: .word FX_SinCosTable_
	thumb_func_end ov48_02258BF4

	thumb_func_start ov48_02258C6C
ov48_02258C6C: ; 0x02258C6C
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, [r4]
	ldr r3, _02258CE0 ; =FX_SinCosTable_
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #4
	lsl r2, r1, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r5, r0, #0
	bl MTX_RotY33_
	ldr r0, [r4, #4]
	ldr r3, _02258CE0 ; =FX_SinCosTable_
	neg r0, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotX33_
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl MTX_Concat33
	ldr r0, [r4, #8]
	ldr r3, _02258CE0 ; =FX_SinCosTable_
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #1
	add r1, r2, #1
	lsl r1, r1, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl MTX_RotZ33_
	add r0, r5, #0
	add r1, sp, #0
	add r2, r5, #0
	bl MTX_Concat33
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0
_02258CE0: .word FX_SinCosTable_
	thumb_func_end ov48_02258C6C

