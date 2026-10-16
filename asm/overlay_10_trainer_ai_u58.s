	.include "macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221D7CC
	.public ov10_0221D8F8
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221F084
	.extern ov10_0222B080
	.extern ov10_0222B098

	.text

	.text
	thumb_func_start ov10_0221D7CC
ov10_0221D7CC: ; 0x0221D7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r1, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r6, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r6, #0
	bl ov10_0221EEF0
	str r0, [sp, #0x1c]
	cmp r4, #1
	bne _0221D7FE
	ldr r0, _0221D8D4 ; =0x00000355
	ldrb r1, [r6, r0]
	add r0, #0x17
	add r1, r6, r1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x18]
	b _0221D802
_0221D7FE:
	mov r0, #0x64
	str r0, [sp, #0x18]
_0221D802:
	ldr r2, _0221D8D8 ; =0x00000356
	ldr r1, _0221D8DC ; =ov10_0222B098
	ldrh r3, [r6, r2]
	add r2, #0x88
	mov r0, #0
	lsl r7, r3, #4
	add r3, r6, r7
	ldrh r3, [r3, r2]
	ldr r2, _0221D8E0 ; =0x0000FFFF
_0221D814:
	ldrh r4, [r1]
	cmp r3, r4
	beq _0221D824
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _0221D814
_0221D824:
	ldr r2, _0221D8E4 ; =ov10_0222B080
	ldr r4, _0221D8E0 ; =0x0000FFFF
	mov r1, #0
_0221D82A:
	ldrh r5, [r2]
	cmp r3, r5
	beq _0221D83A
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _0221D82A
_0221D83A:
	lsl r2, r1, #1
	ldr r1, _0221D8E4 ; =ov10_0222B080
	ldrh r1, [r1, r2]
	ldr r2, _0221D8E0 ; =0x0000FFFF
	cmp r1, r2
	bne _0221D85A
	ldr r1, _0221D8E8 ; =0x000003E1
	add r3, r6, r7
	ldrb r1, [r3, r1]
	cmp r1, #1
	bls _0221D8D0
	lsl r1, r0, #1
	ldr r0, _0221D8DC ; =ov10_0222B098
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _0221D8D0
_0221D85A:
	ldr r7, _0221D8EC ; =0x000003CF
	mov r4, #0
	add r5, sp, #0x20
_0221D860:
	ldrb r1, [r6, r7]
	add r2, r4, #0
	add r0, r6, #0
	add r2, #0xa
	mov r3, #0
	bl BattleMon_Get
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _0221D860
	ldr r0, _0221D8EC ; =0x000003CF
	ldrb r4, [r6, r0]
	add r0, r6, #0
	add r1, r4, #0
	bl GetBattlerAbility
	add r1, sp, #0x20
	str r1, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc0
	mul r0, r4
	ldr r3, _0221D8F0 ; =0x00002DCC
	add r4, r6, r0
	ldr r0, [r4, r3]
	ldr r2, _0221D8D8 ; =0x00000356
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	sub r3, #0x14
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r2, [r6, r2]
	ldrh r3, [r4, r3]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl ov10_0221F084
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r2, [r6, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r6, r1
	ldr r1, _0221D8F4 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, r0
	bhi _0221D8D0
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl ov10_0221EF24
_0221D8D0:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221D8D4: .word 0x00000355
_0221D8D8: .word 0x00000356
_0221D8DC: .word ov10_0222B098
_0221D8E0: .word 0x0000FFFF
_0221D8E4: .word ov10_0222B080
_0221D8E8: .word 0x000003E1
_0221D8EC: .word 0x000003CF
_0221D8F0: .word 0x00002DCC
_0221D8F4: .word 0x00002D8C
	thumb_func_end ov10_0221D7CC

	thumb_func_start ov10_0221D8F8
ov10_0221D8F8: ; 0x0221D8F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r1, #0
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r6, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r6, #0
	bl ov10_0221EEF0
	str r0, [sp, #0x1c]
	cmp r4, #1
	bne _0221D92A
	ldr r0, _0221DA00 ; =0x00000355
	ldrb r1, [r6, r0]
	add r0, #0x17
	add r1, r6, r1
	ldrb r0, [r1, r0]
	str r0, [sp, #0x18]
	b _0221D92E
_0221D92A:
	mov r0, #0x64
	str r0, [sp, #0x18]
_0221D92E:
	ldr r2, _0221DA04 ; =0x00000356
	ldr r1, _0221DA08 ; =ov10_0222B098
	ldrh r3, [r6, r2]
	add r2, #0x88
	mov r0, #0
	lsl r7, r3, #4
	add r3, r6, r7
	ldrh r3, [r3, r2]
	ldr r2, _0221DA0C ; =0x0000FFFF
_0221D940:
	ldrh r4, [r1]
	cmp r3, r4
	beq _0221D950
	add r1, r1, #2
	ldrh r4, [r1]
	add r0, r0, #1
	cmp r4, r2
	bne _0221D940
_0221D950:
	ldr r2, _0221DA10 ; =ov10_0222B080
	ldr r4, _0221DA0C ; =0x0000FFFF
	mov r1, #0
_0221D956:
	ldrh r5, [r2]
	cmp r3, r5
	beq _0221D966
	add r2, r2, #2
	ldrh r5, [r2]
	add r1, r1, #1
	cmp r5, r4
	bne _0221D956
_0221D966:
	lsl r2, r1, #1
	ldr r1, _0221DA10 ; =ov10_0222B080
	ldrh r1, [r1, r2]
	ldr r2, _0221DA0C ; =0x0000FFFF
	cmp r1, r2
	bne _0221D986
	ldr r1, _0221DA14 ; =0x000003E1
	add r3, r6, r7
	ldrb r1, [r3, r1]
	cmp r1, #1
	bls _0221D9FC
	lsl r1, r0, #1
	ldr r0, _0221DA08 ; =ov10_0222B098
	ldrh r0, [r0, r1]
	cmp r0, r2
	bne _0221D9FC
_0221D986:
	ldr r7, _0221DA18 ; =0x000003CF
	mov r4, #0
	add r5, sp, #0x20
_0221D98C:
	ldrb r1, [r6, r7]
	add r2, r4, #0
	add r0, r6, #0
	add r2, #0xa
	mov r3, #0
	bl BattleMon_Get
	strb r0, [r5]
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #6
	blt _0221D98C
	ldr r0, _0221DA18 ; =0x000003CF
	ldrb r4, [r6, r0]
	add r0, r6, #0
	add r1, r4, #0
	bl GetBattlerAbility
	add r1, sp, #0x20
	str r1, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xc0
	mul r0, r4
	ldr r3, _0221DA1C ; =0x00002DCC
	add r4, r6, r0
	ldr r0, [r4, r3]
	ldr r2, _0221DA04 ; =0x00000356
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	sub r3, #0x14
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r2, [r6, r2]
	ldrh r3, [r4, r3]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl ov10_0221F084
	mov r1, #0x3d
	lsl r1, r1, #4
	ldrb r2, [r6, r1]
	mov r1, #0xc0
	mul r1, r2
	add r2, r6, r1
	ldr r1, _0221DA20 ; =0x00002D8C
	ldr r1, [r2, r1]
	cmp r1, r0
	bls _0221D9FC
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	bl ov10_0221EF24
_0221D9FC:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221DA00: .word 0x00000355
_0221DA04: .word 0x00000356
_0221DA08: .word ov10_0222B098
_0221DA0C: .word 0x0000FFFF
_0221DA10: .word ov10_0222B080
_0221DA14: .word 0x000003E1
_0221DA18: .word 0x000003CF
_0221DA1C: .word 0x00002DCC
_0221DA20: .word 0x00002D8C
	thumb_func_end ov10_0221D8F8

