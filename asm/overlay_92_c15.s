	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225CB2C
	.public ov92_0225CC6C
	.public ov92_0225CDF4
	.extern ov92_0225C5C4
	.extern ov92_0225D1FC
	.extern ov92_0225D344
	.extern ov92_0225D868
	.extern ov92_0225D88C
	.extern ov92_0225D8C4
	.extern ov92_0225D8E4
	.extern ov92_0225DA40
	.extern ov92_0225E008
	.extern ov92_0225E070
	.extern ov92_0225E100
	.extern ov92_0225E1A8
	.extern ov92_0225E360
	.extern ov92_0225EB70
	.extern ov92_0225FC2C
	.extern ov92_02260428
	.extern ov92_02260628
	.extern ov92_0226077C
	.extern ov92_02260A38
	.extern ov92_0226156C
	.extern ov92_02261B18
	.extern ov92_022630E8
	.extern ov92_02263878
	.extern ov92_02263884
	.extern ov92_02263A94

	.text

	.text
	thumb_func_start ov92_0225CB2C
ov92_0225CB2C: ; 0x0225CB2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _0225CBC6
	cmp r6, #0
	bne _0225CBC6
	ldr r3, _0225CC48 ; =0x00001FD4
	mov r0, #0
	mov r2, #0xc3
	str r0, [r5, r3]
	add r1, r3, #4
	lsl r2, r2, #2
	str r0, [r5, r1]
	ldr r1, [r5, r2]
	cmp r1, #0
	beq _0225CB82
	mov r0, #0x45
	lsl r0, r0, #2
	mov r1, #0xfe
	add r0, r5, r0
	lsl r1, r1, #0x16
	bl ov92_02260628
	ldr r4, _0225CC4C ; =ov92_02263884
	add r3, sp, #0x18
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	mov r1, #0x4d
	str r0, [r3]
	add r0, r2, #0
	ldr r2, _0225CC50 ; =0x00001FC8
	lsl r1, r1, #4
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0225CB82:
	add r1, r2, #4
	str r0, [r5, r1]
	add r2, #8
	str r0, [r5, r2]
	add r1, r3, #4
	ldr r2, [r5, r1]
	ldr r1, [r5, r3]
	ldr r3, _0225CC54 ; =0x3FF0A3D7
	str r2, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260428
	ldr r0, _0225CC58 ; =0x00001FD8
	ldr r2, [r5, r0]
	sub r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, _0225CC5C ; =0x3E6147AE
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r5, r0
	add r3, r1, #0
	bl ov92_02260428
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0225CBC6:
	ldr r0, _0225CC60 ; =0x00001FCC
	mov r1, #0x28
	ldr r0, [r5, r0]
	asr r7, r0, #0xc
	mov r0, #0x64
	sub r0, r0, r7
	bl _s32_div_f
	bl _fflt
	ldr r0, _0225CC48 ; =0x00001FD4
	cmp r7, #0x5f
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0225CBEA
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
_0225CBEA:
	ldr r3, _0225CC58 ; =0x00001FD8
	add r1, r4, #0
	ldr r0, [r5, r3]
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0x1e
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r3, [r5, r3]
	add r0, r5, r0
	add r2, r6, #0
	bl ov92_02260428
	ldr r3, _0225CC64 ; =ov92_02263878
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #0x4d
	str r0, [r2]
	ldr r2, _0225CC50 ; =0x00001FC8
	lsl r1, r1, #4
	add r0, r7, #0
	add r1, r5, r1
	add r2, r5, r2
	bl MTX_MultVec43
	ldr r0, _0225CC68 ; =0x0000058A
	bl IsSEPlaying
	cmp r0, #0
	bne _0225CC3A
	ldr r0, _0225CC68 ; =0x0000058A
	bl PlaySE
_0225CC3A:
	ldr r0, _0225CC48 ; =0x00001FD4
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0225CC48: .word 0x00001FD4
_0225CC4C: .word ov92_02263884
_0225CC50: .word 0x00001FC8
_0225CC54: .word 0x3FF0A3D7
_0225CC58: .word 0x00001FD8
_0225CC5C: .word 0x3E6147AE
_0225CC60: .word 0x00001FCC
_0225CC64: .word ov92_02263878
_0225CC68: .word 0x0000058A
	thumb_func_end ov92_0225CB2C

	thumb_func_start ov92_0225CC6C
ov92_0225CC6C: ; 0x0225CC6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xcc
	ldr r3, _0225CDEC ; =ov92_02263A94
	add r5, r0, #0
	add r2, sp, #0xc
	mov r1, #0x60
_0225CC78:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0225CC78
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl ManagedSprite_GetAnimationFrame
	add r7, r0, #0
	ldr r1, [r5, #0xc]
	mov r0, #0xc
	mul r0, r1
	add r0, r7, r0
	lsl r1, r0, #2
	add r0, sp, #0xc
	ldrsh r4, [r0, r1]
	add r0, sp, #0xc
	add r0, #2
	ldrsh r6, [r0, r1]
	cmp r4, #0
	bne _0225CCB8
	cmp r6, #0
	bne _0225CCB8
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov92_0225CB2C
	b _0225CCF0
_0225CCB8:
	add r1, r4, #0
	add r2, r6, #0
	add r0, r5, #0
	add r1, #0x80
	add r2, #0x80
	bl ov92_0225CB2C
	cmp r4, #0
	beq _0225CCDE
	add r4, #0x58
	add r6, #0x80
	lsl r1, r4, #0x10
	lsl r2, r6, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov92_02260A38
	b _0225CCF0
_0225CCDE:
	add r4, #0x80
	add r6, #0x80
	lsl r1, r4, #0x10
	lsl r2, r6, #0x10
	add r0, r5, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov92_02260A38
_0225CCF0:
	cmp r7, #0
	bne _0225CD00
	ldr r0, [r5, #8]
	cmp r0, r7
	beq _0225CD00
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
_0225CD00:
	str r7, [r5, #8]
	ldr r0, [r5, #0xc]
	cmp r0, #2
	bne _0225CD76
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	bl ManagedSprite_GetActiveAnim
	cmp r0, #2
	beq _0225CD76
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #0x80
	mov r2, #0x64
	bl ManagedSprite_SetPositionXY
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	mov r1, #2
	bl ManagedSprite_SetAnimNoRestart
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov92_022630E8
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225CDF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225CDF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
_0225CD76:
	ldr r0, [r5, #0xc]
	cmp r0, #3
	bne _0225CDDC
	cmp r7, #0xb
	bne _0225CDDC
	mov r1, #0
	str r1, [r5, #8]
	add r0, r5, #0
	str r1, [r5, #0xc]
	add r0, #0xf0
	ldr r0, [r0]
	bl ManagedSprite_SetDrawFlag
	mov r0, #0xa9
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov92_022630E8
	mov r0, #0xad
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov92_022630E8
	mov r3, #5
	mov r1, #0
	ldr r0, _0225CDF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	mov r3, #4
	mvn r3, r3
	mov r1, #0
	ldr r0, _0225CDF0 ; =0x3F4CCCCD
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	str r1, [sp, #8]
	bl ov92_02260428
	add sp, #0xcc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225CDDC:
	add r5, #0xf0
	ldr r0, [r5]
	bl ManagedSprite_TickTwoFrames
	mov r0, #0
	add sp, #0xcc
	pop {r4, r5, r6, r7, pc}
	nop
_0225CDEC: .word ov92_02263A94
_0225CDF0: .word 0x3F4CCCCD
	thumb_func_end ov92_0225CC6C

	thumb_func_start ov92_0225CDF4
ov92_0225CDF4: ; 0x0225CDF4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl ov92_0225D8E4
	cmp r0, #0
	beq _0225CE18
	cmp r0, #1
	beq _0225CE10
	cmp r0, #2
	beq _0225CE14
	b _0225CE18
_0225CE10:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225CE14:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225CE18:
	ldr r0, [r7]
	cmp r0, #0x14
	bls _0225CE20
	b _0225D1B8
_0225CE20:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225CE2C: ; jump table
	.short _0225CE56 - _0225CE2C - 2 ; case 0
	.short _0225CE74 - _0225CE2C - 2 ; case 1
	.short _0225CE8C - _0225CE2C - 2 ; case 2
	.short _0225CEBE - _0225CE2C - 2 ; case 3
	.short _0225CEDC - _0225CE2C - 2 ; case 4
	.short _0225CEEE - _0225CE2C - 2 ; case 5
	.short _0225CF0E - _0225CE2C - 2 ; case 6
	.short _0225CF44 - _0225CE2C - 2 ; case 7
	.short _0225CF52 - _0225CE2C - 2 ; case 8
	.short _0225CF6A - _0225CE2C - 2 ; case 9
	.short _0225CF92 - _0225CE2C - 2 ; case 10
	.short _0225CFE6 - _0225CE2C - 2 ; case 11
	.short _0225D00E - _0225CE2C - 2 ; case 12
	.short _0225D026 - _0225CE2C - 2 ; case 13
	.short _0225D068 - _0225CE2C - 2 ; case 14
	.short _0225D096 - _0225CE2C - 2 ; case 15
	.short _0225D0AA - _0225CE2C - 2 ; case 16
	.short _0225D0C6 - _0225CE2C - 2 ; case 17
	.short _0225D12A - _0225CE2C - 2 ; case 18
	.short _0225D194 - _0225CE2C - 2 ; case 19
	.short _0225D1B8 - _0225CE2C - 2 ; case 20
_0225CE56:
	add r0, r4, #0
	add r0, #0x8c
	mov r1, #0x71
	bl ov90_02258920
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CE74:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl ov90_022589BC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CE8C:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl ov90_022589CC
	strb r0, [r4, #0x14]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl ov90_02258938
	add r0, r4, #0
	mov r1, #0
	add r0, #0x9c
	str r1, [r0]
	add r0, r4, #0
	bl ov92_0225C5C4
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CEBE:
	mov r0, #0x1b
	bl ov92_0225D868
	add r5, r0, #0
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov92_0225E1A8
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CEDC:
	bl IsPaletteFadeFinished
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #5
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CEEE:
	ldr r0, [r4, #4]
	bl ov92_0225E070
	ldr r0, [r4, #4]
	bl ov92_0226156C
	ldr r0, [r4, #4]
	bl ov92_02261B18
	add r0, r4, #0
	mov r1, #1
	mov r2, #6
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF0E:
	ldr r0, [r4, #4]
	bl ov92_0225CC6C
	add r5, r0, #0
	beq _0225CF36
	add r0, r4, #0
	bl ov92_0225D8C4
	cmp r0, #1
	bne _0225CF36
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, r4, #0
	str r0, [r4, #0x18]
	mov r0, #0x16
	add r1, #0x14
	mov r2, #8
	bl sub_02037030
_0225CF36:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #7
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF44:
	ldr r1, [r4, #8]
	add r0, r4, #0
	mov r2, #8
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF52:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ov90_02258C8C
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF6A:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ov90_02258CE0
	add r5, r0, #0
	beq _0225CF84
	ldr r0, [r4, #4]
	bl ov92_0225E360
	ldr r0, [r4, #4]
	bl ov92_0225E100
_0225CF84:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xa
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CF92:
	ldr r5, [r4, #0xc]
	cmp r5, #0
	beq _0225CFA8
	ldr r1, [r4, #4]
	ldr r0, _0225D1E4 ; =0x00002AE4
	ldr r1, [r1, r0]
	mov r0, #0x4b
	lsl r0, r0, #4
	cmp r1, r0
	bge _0225CFA8
	mov r5, #0
_0225CFA8:
	cmp r5, #0
	bne _0225CFD8
	add r0, r4, #0
	bl ov92_0225D8C4
	cmp r0, #1
	bne _0225CFD2
	ldr r0, [r4]
	bl ov92_0225EB70
	cmp r0, #0
	bne _0225CFD2
	ldr r0, _0225D1E8 ; =0x00000589
	mov r1, #0
	bl StopSE
	mov r1, #0
	mov r0, #0x17
	add r2, r1, #0
	bl sub_02037030
_0225CFD2:
	ldr r0, [r4, #4]
	bl ov92_0225FC2C
_0225CFD8:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xb
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225CFE6:
	ldr r0, _0225D1EC ; =0x0000058B
	mov r1, #0
	bl StopSE
	ldr r0, _0225D1E8 ; =0x00000589
	mov r1, #0
	bl StopSE
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ov90_02258CB0
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xc
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D00E:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0]
	bl ov90_02258CE0
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0xd
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D026:
	ldr r1, [r4, #4]
	ldr r0, _0225D1F0 ; =0x00002AF0
	ldr r0, [r1, r0]
	mov r1, #0xa
	bl _s32_div_f
	mov r1, #0x64
	mul r1, r0
	ldr r0, _0225D1F4 ; =0x000186A0
	str r1, [r4, #0x1c]
	cmp r1, r0
	blo _0225D040
	str r0, [r4, #0x1c]
_0225D040:
	ldr r1, [r4, #4]
	ldr r0, _0225D1F8 ; =0x00002B94
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0225D04E
	mov r0, #1
	str r0, [r4, #0x1c]
_0225D04E:
	add r1, r4, #0
	mov r0, #0x19
	add r1, #0x1c
	mov r2, #8
	bl sub_02037030
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xe
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D068:
	mov r1, #0
	add r0, r1, #0
	add r3, r1, #0
	add r5, r4, #0
_0225D070:
	ldr r2, [r5, #0x24]
	cmp r2, #0
	beq _0225D078
	add r0, r0, #1
_0225D078:
	add r3, r3, #1
	add r5, #8
	cmp r3, #4
	blt _0225D070
	ldr r2, [r4, #4]
	ldr r2, [r2, #4]
	cmp r0, r2
	bne _0225D08A
	mov r1, #1
_0225D08A:
	add r0, r4, #0
	mov r2, #0xf
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D096:
	mov r0, #0x1a
	bl ov92_0225D868
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x10
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D0AA:
	bl IsPaletteFadeFinished
	add r5, r0, #0
	beq _0225D0B8
	add r0, r4, #0
	bl ov92_0225D1FC
_0225D0B8:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x11
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D0C6:
	mov r6, #0
	add r5, r4, #0
_0225D0CA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov92_0226077C
	cmp r0, #0xff
	beq _0225D0F2
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r2, [r5, #0x24]
	add r1, #0xa0
	str r2, [r1]
	add r1, r4, r0
	add r1, #0xa0
	ldr r1, [r1]
	cmp r1, #1
	bhi _0225D0F2
	add r1, r4, r0
	add r1, #0xa0
	mov r0, #0
	str r0, [r1]
_0225D0F2:
	add r6, r6, #1
	add r5, #8
	cmp r6, #4
	blt _0225D0CA
	add r1, r4, #0
	add r1, #0x94
	ldrb r1, [r1]
	add r0, r4, #0
	add r0, #0xa0
	bl ov90_02258AA8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x8c
	add r1, #0xa0
	mov r2, #0x71
	bl ov90_022589EC
	add r1, r4, #0
	add r1, #0xb8
	str r0, [r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D12A:
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov90_02258AA0
	add r5, r0, #0
	beq _0225D186
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov90_02258AA4
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl ov90_02258A04
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	cmp r6, #0
	beq _0225D186
	add r0, r4, #0
	mov r1, #1
	add r0, #0xcc
	str r1, [r0]
	add r0, r4, #0
	bl ov92_0225D344
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	add r3, r7, #0
	bl ov92_0225D88C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0225D1CA
	bl ov00_021E6A4C
	b _0225D1CA
_0225D186:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x13
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D194:
	mov r0, #0x1b
	bl sub_02037AC0
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0225D1AA
	bl ov00_021E6A4C
_0225D1AA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	add r3, r7, #0
	bl ov92_0225D88C
	b _0225D1CA
_0225D1B8:
	mov r0, #0x1b
	bl sub_02037B38
	cmp r0, #1
	bne _0225D1C6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225D1C6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225D1CA:
	ldr r0, [r7]
	cmp r0, #3
	blt _0225D1E0
	cmp r0, #0x10
	bge _0225D1E0
	ldr r0, [r4, #4]
	bl ov92_0225E008
	add r0, r4, #0
	bl ov92_0225DA40
_0225D1E0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225D1E4: .word 0x00002AE4
_0225D1E8: .word 0x00000589
_0225D1EC: .word 0x0000058B
_0225D1F0: .word 0x00002AF0
_0225D1F4: .word 0x000186A0
_0225D1F8: .word 0x00002B94
	thumb_func_end ov92_0225CDF4

