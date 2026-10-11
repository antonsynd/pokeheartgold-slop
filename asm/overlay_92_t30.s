	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225DA40
	.extern ov92_0225D970
	.extern ov92_02263B68

	.text

	.text
	thumb_func_start ov92_0225DA40
ov92_0225DA40: ; 0x0225DA40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl Thunk_G3X_Reset
	bl Camera_PushLookAtToNNSGlb
	ldr r4, _0225DD04 ; =ov92_02263B68
	add r3, sp, #0x18
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	add r1, r2, #0
	str r0, [r3]
	add r0, r2, #0
	bl VEC_Normalize
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r0, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl NNS_G3dGlbLightVector
	ldr r1, _0225DD08 ; =0x00007FFF
	mov r0, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _0225DD08 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _0225DD08 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	mov r7, #0
	add r4, r7, #0
_0225DA9C:
	mov r0, #0xb5
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	add r6, r0, r4
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r1, #0x1b
	mov r2, #0x1e
	lsl r1, r1, #4
	lsl r2, r2, #4
	add r0, r6, #0
	add r1, r6, r1
	add r2, r6, r2
	bl ov92_0225D970
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x12
	add r1, sp, #0x14
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r5, #4]
	ldr r0, _0225DD0C ; =0x00000BD8
	add r0, r1, r0
	mov r1, #1
	add r0, r0, r4
	lsl r1, r1, #0xc
	bl sub_02018124
	mov r0, #0x83
	lsl r0, r0, #2
	add r7, r7, #1
	add r4, r4, r0
	cmp r7, #8
	blt _0225DA9C
	ldr r1, [r5, #4]
	sub r0, #0xfc
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225DB00
	cmp r0, #1
	beq _0225DB40
	cmp r0, #2
	beq _0225DB74
	b _0225DBA8
_0225DB00:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #1
	bl sub_020182A0
	ldr r1, [r5, #4]
	ldr r0, _0225DD10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	ldr r1, [r5, #4]
	ldr r0, _0225DD14 ; =0x00000738
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	mov r0, #0xea
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r2, r1, r0
	ldr r0, _0225DD18 ; =0x00000514
	ldr r1, [r1, r0]
	mov r0, #0x14
	mul r0, r1
	mov r1, #1
	add r0, r2, r0
	lsl r1, r1, #0xc
	bl sub_02018124
	b _0225DBA8
_0225DB40:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	ldr r1, [r5, #4]
	ldr r0, _0225DD10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #1
	bl sub_020182A0
	ldr r1, [r5, #4]
	ldr r0, _0225DD14 ; =0x00000738
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	ldr r1, [r5, #4]
	ldr r0, _0225DD1C ; =0x000005B4
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_0201815C
	b _0225DBA8
_0225DB74:
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	ldr r1, [r5, #4]
	ldr r0, _0225DD10 ; =0x0000052C
	add r0, r1, r0
	mov r1, #0
	bl sub_020182A0
	ldr r1, [r5, #4]
	ldr r0, _0225DD14 ; =0x00000738
	add r0, r1, r0
	mov r1, #1
	bl sub_020182A0
	mov r0, #0x1f
	ldr r1, [r5, #4]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_0201815C
_0225DBA8:
	mov r0, #0x32
	ldr r1, [r5, #4]
	lsl r0, r0, #4
	add r4, r1, r0
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	add r0, #0xfc
	add r6, r1, #0
	mov r1, #0
	mul r6, r0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, r6
	add r2, r4, r2
	bl ov92_0225D970
	mov r2, #1
	str r2, [sp, #0x10]
	mov r0, #0x12
	add r1, sp, #0x10
	bl NNS_G3dGeBufferOP_N
	mov r0, #0x45
	ldr r1, [r5, #4]
	lsl r0, r0, #2
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov92_0225D970
	mov r2, #1
	str r2, [sp, #0xc]
	mov r0, #0x12
	add r1, sp, #0xc
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r5, #4]
	ldr r0, _0225DD20 ; =0x00000944
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov92_0225D970
	mov r2, #1
	str r2, [sp, #8]
	mov r0, #0x12
	add r1, sp, #8
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r5, #4]
	ldr r0, _0225DD24 ; =0x00001FAC
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225DCA6
	ldr r0, _0225DD28 ; =0x00001DBC
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov92_0225D970
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0x12
	add r1, sp, #4
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r5, #4]
	ldr r0, _0225DD2C ; =0x00001FA8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225DCA6
	ldr r0, _0225DD30 ; =0x00001E44
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_0201815C
	add r4, r0, #0
	ldr r1, [r5, #4]
	ldr r0, _0225DD34 ; =0x00001E58
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_0201815C
	cmp r4, #0
	beq _0225DCA6
	cmp r0, #0
	beq _0225DCA6
	ldr r1, [r5, #4]
	ldr r0, _0225DD2C ; =0x00001FA8
	mov r2, #0
	str r2, [r1, r0]
_0225DCA6:
	ldr r1, [r5, #4]
	ldr r0, _0225DD38 ; =0x00001DA0
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225DCF0
	ldr r0, _0225DD3C ; =0x00001BB0
	add r4, r1, r0
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	mov r2, #0x1b
	lsl r2, r2, #4
	add r1, r4, r2
	add r2, #0x30
	add r0, r4, #0
	add r2, r4, r2
	bl ov92_0225D970
	mov r2, #1
	str r2, [sp]
	mov r0, #0x12
	add r1, sp, #0
	bl NNS_G3dGeBufferOP_N
	ldr r1, [r5, #4]
	ldr r0, _0225DD40 ; =0x00001D9C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225DCF0
	ldr r0, _0225DD44 ; =0x00001C4C
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	bl sub_02018124
_0225DCF0:
	mov r0, #0
	mov r1, #1
	bl RequestSwap3DBuffers
	ldr r0, [r5, #0x54]
	bl SpriteSystem_DrawSprites
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0225DD04: .word ov92_02263B68
_0225DD08: .word 0x00007FFF
_0225DD0C: .word 0x00000BD8
_0225DD10: .word 0x0000052C
_0225DD14: .word 0x00000738
_0225DD18: .word 0x00000514
_0225DD1C: .word 0x000005B4
_0225DD20: .word 0x00000944
_0225DD24: .word 0x00001FAC
_0225DD28: .word 0x00001DBC
_0225DD2C: .word 0x00001FA8
_0225DD30: .word 0x00001E44
_0225DD34: .word 0x00001E58
_0225DD38: .word 0x00001DA0
_0225DD3C: .word 0x00001BB0
_0225DD40: .word 0x00001D9C
_0225DD44: .word 0x00001C4C
	thumb_func_end ov92_0225DA40

