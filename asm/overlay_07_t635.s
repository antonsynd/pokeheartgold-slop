	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02232730
	.extern ov07_0221FEE4

	.text

	.text
	thumb_func_start ov07_02232730
ov07_02232730: ; 0x02232730
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #3
	bls _02232744
	b _022329AC
_02232744:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02232750: ; jump table
	.short _02232758 - _02232750 - 2 ; case 0
	.short _022327F6 - _02232750 - 2 ; case 1
	.short _02232886 - _02232750 - 2 ; case 2
	.short _02232916 - _02232750 - 2 ; case 3
_02232758:
	ldr r1, [r4]
	mov r0, #0x5f
	bl NARC_New
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x14]
	add r0, #0xa0
	mov r5, #0
	add r6, #0x10
	str r0, [sp, #0x14]
_02232774:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl CapsuleGetSealI
	add r7, r0, #0
	beq _022327E0
	bl SealOnCapsuleGetID
	cmp r0, #0
	beq _022327E0
	cmp r0, #0x51
	bge _022327E0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02091084
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022327AE
	bl GF_AssertFail
_022327AE:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r2, [sp, #0x10]
	mov r3, #0
	bl ov07_0221FEE4
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022327DA
	bne _022327E0
	bl GF_AssertFail
	b _022327E0
_022327DA:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
_022327E0:
	add r5, r5, #1
	cmp r5, #2
	blt _02232774
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_022327F6:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x18]
	add r0, #0xa0
	mov r5, #2
	add r6, #0x10
	str r0, [sp, #0x18]
_02232804:
	ldr r0, [sp, #0x18]
	add r1, r5, #0
	bl CapsuleGetSealI
	add r7, r0, #0
	beq _02232870
	bl SealOnCapsuleGetID
	cmp r0, #0
	beq _02232870
	cmp r0, #0x51
	bge _02232870
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02091084
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223283E
	bl GF_AssertFail
_0223283E:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r2, [sp, #4]
	mov r3, #0
	bl ov07_0221FEE4
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223286A
	bne _02232870
	bl GF_AssertFail
	b _02232870
_0223286A:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
_02232870:
	add r5, r5, #1
	cmp r5, #4
	blt _02232804
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02232886:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0xa0
	mov r5, #4
	add r6, #0x10
	str r0, [sp, #0x1c]
_02232894:
	ldr r0, [sp, #0x1c]
	add r1, r5, #0
	bl CapsuleGetSealI
	add r7, r0, #0
	beq _02232900
	bl SealOnCapsuleGetID
	cmp r0, #0
	beq _02232900
	cmp r0, #0x51
	bge _02232900
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02091084
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022328CE
	bl GF_AssertFail
_022328CE:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r2, [sp, #8]
	mov r3, #0
	bl ov07_0221FEE4
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022328FA
	bne _02232900
	bl GF_AssertFail
	b _02232900
_022328FA:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
_02232900:
	add r5, r5, #1
	cmp r5, #6
	blt _02232894
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0]
	add r4, #0x90
	add r0, r0, #1
	add sp, #0x24
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02232916:
	add r0, r4, #0
	add r6, r4, #0
	str r0, [sp, #0x20]
	add r0, #0xa0
	mov r5, #6
	add r6, #0x10
	str r0, [sp, #0x20]
_02232924:
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	bl CapsuleGetSealI
	add r7, r0, #0
	beq _02232990
	bl SealOnCapsuleGetID
	cmp r0, #0
	beq _02232990
	cmp r0, #0x51
	bge _02232990
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02091084
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	str r7, [r0, #0x38]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223295E
	bl GF_AssertFail
_0223295E:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r2, [sp, #0xc]
	mov r3, #0
	bl ov07_0221FEE4
	ldr r1, [r4, #0x10]
	lsl r1, r1, #2
	add r1, r4, r1
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0223298A
	bne _02232990
	bl GF_AssertFail
	b _02232990
_0223298A:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
_02232990:
	add r5, r5, #1
	cmp r5, #8
	blt _02232924
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0x90
	add r4, #0x8c
	str r1, [r0]
	ldr r0, [r4]
	bl NARC_Delete
	ldr r0, [sp]
	bl SysTask_Destroy
_022329AC:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov07_02232730

