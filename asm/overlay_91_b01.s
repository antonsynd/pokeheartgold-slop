	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225C58C
	.extern ov91_0225CB58
	.extern ov91_0225CB64
	.extern ov91_0225CB98
	.extern ov91_0225CC4C
	.extern ov91_0225CCA8
	.extern ov91_0225CCC4
	.extern ov91_0225CCEC
	.extern ov91_0225CCF4
	.extern ov91_0225CD5C
	.extern ov91_0225CD64
	.extern ov91_0225CD6C
	.extern ov91_0225CDAC
	.extern ov91_0225CDC4
	.extern ov91_0225CDF4
	.extern ov91_0225CE80
	.extern ov91_0225CEB4
	.extern ov91_0225D078
	.extern ov91_0225D1DC
	.extern ov91_0225D37C
	.extern ov91_0225D3C4
	.extern ov91_02261B2C

	.text

	.text
	thumb_func_start ov91_0225C58C
ov91_0225C58C: ; 0x0225C58C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r6, #0
	bl OverlayManager_GetArgs
	add r6, r0, #0
	add r0, r4, #0
	add r0, #8
	bl ov90_02258B54
	cmp r0, #1
	bne _0225C60A
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0225C5BE
	cmp r0, #1
	beq _0225C5D8
	cmp r0, #2
	beq _0225C5EC
	b _0225C5FA
_0225C5BE:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _0225C5CA
	bl sub_0200FB70
_0225C5CA:
	mov r0, #0
	bl sub_0200FC20
	ldr r0, [r4, #0x78]
	add r0, r0, #1
	str r0, [r4, #0x78]
	b _0225C604
_0225C5D8:
	add r0, r4, #0
	add r0, #8
	bl ov90_02258B98
	cmp r0, #1
	bne _0225C604
	ldr r0, [r4, #0x78]
	add r0, r0, #1
	str r0, [r4, #0x78]
	b _0225C604
_0225C5EC:
	add r0, r4, #0
	add r1, r6, #0
	bl ov91_0225CC4C
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225C5FA:
	bl GF_AssertFail
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225C604:
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_0225C60A:
	ldr r0, [r5]
	cmp r0, #0xf
	bhi _0225C67E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225C61C: ; jump table
	.short _0225C63C - _0225C61C - 2 ; case 0
	.short _0225C650 - _0225C61C - 2 ; case 1
	.short _0225C674 - _0225C61C - 2 ; case 2
	.short _0225C77E - _0225C61C - 2 ; case 3
	.short _0225C7A8 - _0225C61C - 2 ; case 4
	.short _0225C7E0 - _0225C61C - 2 ; case 5
	.short _0225C7F6 - _0225C61C - 2 ; case 6
	.short _0225C80A - _0225C61C - 2 ; case 7
	.short _0225C88C - _0225C61C - 2 ; case 8
	.short _0225C8CE - _0225C61C - 2 ; case 9
	.short _0225C8E6 - _0225C61C - 2 ; case 10
	.short _0225C8FA - _0225C61C - 2 ; case 11
	.short _0225C922 - _0225C61C - 2 ; case 12
	.short _0225C94C - _0225C61C - 2 ; case 13
	.short _0225C99C - _0225C61C - 2 ; case 14
	.short _0225C9BE - _0225C61C - 2 ; case 15
_0225C63C:
	add r0, r4, #0
	add r0, #8
	mov r1, #0x6a
	bl ov90_02258914
	str r0, [r4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C650:
	ldr r0, [r4]
	bl ov90_022589BC
	cmp r0, #1
	bne _0225C67E
	ldr r0, [r4]
	bl ov90_022589CC
	str r0, [r4, #0x70]
	ldr r0, [r4]
	bl ov90_02258938
	mov r0, #0
	str r0, [r4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C674:
	ldr r0, _0225C940 ; =gSystem
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	beq _0225C680
_0225C67E:
	b _0225C9E6
_0225C680:
	ldr r0, _0225C944 ; =ov91_0225CB58
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r2, #0
	str r2, [r4, #0x38]
	str r2, [r4, #0x3c]
	add r0, r4, #0
	add r1, r4, #0
	str r2, [r4, #0x40]
	add r0, #0x84
	strb r2, [r0]
	add r1, #0x84
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	mov r0, #0x20
	mov r1, #0x6a
	bl GF_CreateVramTransferManager
	add r0, r4, #0
	bl ov91_02261B2C
	add r0, r4, #0
	mov r1, #1
	add r0, #0x80
	str r1, [r0]
	bl sub_020347A0
	str r0, [r4, #0x74]
	cmp r0, #1
	bhi _0225C6C8
	bl GF_AssertFail
_0225C6C8:
	bl sub_0203769C
	add r1, r4, #0
	add r1, #0x44
	strh r0, [r1]
	add r1, r4, #0
	add r1, #0x44
	add r0, r4, #0
	ldrh r1, [r1]
	add r0, #8
	bl ov90_0225886C
	add r1, r4, #0
	add r1, #0x46
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _0225C706
	mov r1, #0x4b
	add r3, r4, #0
	ldr r2, [r4, #0x74]
	mov r0, #0x6a
	lsl r1, r1, #4
	add r3, #0x48
	bl ov91_0225CCC4
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #0x7c]
_0225C706:
	add r0, r4, #0
	add r0, #0x48
	str r0, [sp]
	add r3, r4, #0
	add r3, #0x46
	mov r1, #0x4b
	ldrh r3, [r3]
	ldr r2, [r4, #0x74]
	mov r0, #0x6a
	lsl r1, r1, #4
	bl ov91_0225CDF4
	str r0, [r4, #0x34]
	bl sub_0203A880
	add r6, #0x38
	ldrb r0, [r6]
	cmp r0, #0
	beq _0225C732
	mov r0, #0x6a
	bl ov00_021E69A8
_0225C732:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0225C742
	cmp r0, #1
	beq _0225C74C
	cmp r0, #2
	beq _0225C758
	b _0225C764
_0225C742:
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	b _0225C768
_0225C74C:
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #9]
	b _0225C768
_0225C758:
	mov r1, #1
	add r0, sp, #0xc
	strb r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #9]
	b _0225C768
_0225C764:
	bl GF_AssertFail
_0225C768:
	ldr r0, [r4, #0x34]
	add r1, sp, #0x14
	bl ov91_0225D3C4
	mov r0, #1
	bl sub_02037AC0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C77E:
	mov r0, #1
	bl sub_02037B38
	cmp r0, #0
	beq _0225C7CE
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6a
	mov r1, #0x1b
	str r0, [sp, #8]
	ldr r3, _0225C948 ; =0x0000FFFF
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C7A8:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov91_0225CEB4
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225C7CE
	add r4, #0x44
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225C7D8
	mov r1, #0
	mov r0, #0x16
	add r2, r1, #0
	bl sub_02037030
	cmp r0, #0
	bne _0225C7D0
_0225C7CE:
	b _0225C9E6
_0225C7D0:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C7D8:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C7E0:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov91_0225CEB4
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0225C8DC
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C7F6:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov91_0225CEB4
	cmp r0, #0
	bne _0225C8DC
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C80A:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _0225C82E
	ldr r0, [r4, #0x34]
	bl ov91_0225D37C
	str r0, [sp, #0x10]
	mov r0, #0x19
	add r1, sp, #0x10
	mov r2, #4
	bl sub_02037030
	cmp r0, #0
	beq _0225C8DC
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C82E:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _0225C878
	ldr r0, [r4, #0x30]
	bl ov91_0225CCF4
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	bl ov91_0225CD5C
	cmp r0, #0
	beq _0225C868
	ldr r0, [r4, #0x30]
	bl ov91_0225CD6C
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1b
	add r2, sp, #0xc
	mov r3, #4
	bl ov91_0225CCA8
	cmp r0, #1
	bne _0225C868
	ldr r0, [r4, #0x30]
	bl ov91_0225CD64
_0225C868:
	cmp r5, #0
	bne _0225C878
	mov r2, #0
	add r0, r4, #0
	mov r1, #0x17
	add r3, r2, #0
	bl ov91_0225CCA8
_0225C878:
	ldr r0, [r4, #0x34]
	bl ov91_0225D1DC
	add r0, r4, #0
	bl ov91_0225CB64
	add r0, r4, #0
	bl ov91_0225CB98
	b _0225C9E6
_0225C88C:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov91_0225D078
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _0225C8C6
	ldr r0, [r4, #0x30]
	bl ov91_0225CDAC
	cmp r0, #1
	bne _0225C8DC
	ldr r0, [r4, #0x30]
	add r1, sp, #0x18
	bl ov91_0225CDC4
	mov r0, #0x1a
	add r1, sp, #0x18
	mov r2, #0x10
	bl sub_02037030
	cmp r0, #0
	beq _0225C8DC
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C8C6:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C8CE:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov91_0225D078
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _0225C8DE
_0225C8DC:
	b _0225C9E6
_0225C8DE:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C8E6:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov91_0225D078
	cmp r0, #0
	bne _0225C9E6
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C8FA:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6a
	mov r1, #0x1a
	str r0, [sp, #8]
	ldr r3, _0225C948 ; =0x0000FFFF
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov91_0225D078
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C922:
	ldr r0, [r4, #0x34]
	mov r1, #1
	bl ov91_0225D078
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225C9E6
	mov r0, #3
	bl sub_02037AC0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
	.balign 4, 0
_0225C940: .word gSystem
_0225C944: .word ov91_0225CB58
_0225C948: .word 0x0000FFFF
_0225C94C:
	mov r0, #3
	bl sub_02037B38
	cmp r0, #0
	bne _0225C95C
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_0225C95C:
	add r6, #0x38
	ldrb r0, [r6]
	cmp r0, #0
	beq _0225C968
	bl ov00_021E6A4C
_0225C968:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #0
	bne _0225C97C
	ldr r0, [r4, #0x30]
	bl ov91_0225CCEC
	mov r0, #0
	str r0, [r4, #0x30]
_0225C97C:
	ldr r0, [r4, #0x34]
	bl ov91_0225CE80
	mov r0, #0
	str r0, [r4, #0x34]
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GF_DestroyVramTransferManager
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C99C:
	ldrb r1, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x18
	bl ov90_02258AA8
	add r0, r4, #0
	add r1, r4, #0
	add r0, #8
	add r1, #0x18
	mov r2, #0x6a
	bl ov90_022589E0
	str r0, [r4, #4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0225C9E6
_0225C9BE:
	ldr r0, [r4, #4]
	bl ov90_02258AA0
	cmp r0, #1
	bne _0225C9E6
	ldr r0, [r4, #4]
	bl ov90_02258AA4
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov90_02258A04
	mov r0, #0
	str r0, [r4, #4]
	cmp r6, #0
	bne _0225C9E4
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225C9E4:
	str r0, [r5]
_0225C9E6:
	mov r0, #0
	add sp, #0x28
	pop {r4, r5, r6, pc}
	thumb_func_end ov91_0225C58C

