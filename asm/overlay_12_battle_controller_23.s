	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_02263138
	.extern ov12_02262240

	.text

	.text
	thumb_func_start ov12_02263138
ov12_02263138: ; 0x02263138
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	str r2, [sp, #0xc]
	bl BattleBuffer_Clear
	add r6, sp, #0x10
	mov r1, #0x11
	add r0, sp, #0x10
	strb r1, [r0]
	mov r0, #0
	ldr r4, [sp, #8]
	mov ip, r0
	ldr r1, _022632AC ; =0x00002DCC
	add r0, r4, #0
	add r7, r0, r1
	ldr r0, _022632B0 ; =0x0000312C
	add r5, r6, #0
_02263162:
	ldr r2, [sp, #8]
	mov r1, ip
	add r2, r2, r1
	ldr r1, _022632B4 ; =0x0000219C
	mov r3, #0
	ldrb r1, [r2, r1]
	strb r1, [r6, #4]
_02263170:
	add r1, r4, r3
	ldrb r2, [r1, r0]
	add r1, r5, r3
	add r3, r3, #1
	strb r2, [r1, #8]
	cmp r3, #6
	blt _02263170
	ldr r1, [r7]
	add r4, r4, #6
	lsl r1, r1, #0xa
	lsr r2, r1, #0x1d
	add r1, r6, #0
	add r1, #0x20
	strb r2, [r1]
	mov r1, ip
	add r1, r1, #1
	add r6, r6, #1
	add r5, r5, #6
	add r7, #0xc0
	mov ip, r1
	cmp r1, #4
	blt _02263162
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleType
	cmp r0, #0x4a
	bne _0226324E
	mov r0, #1
	bl MaskOfFlagNo
	ldr r2, _022632B8 ; =0x00003108
	ldr r1, [sp, #8]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _022631D4
	mov r0, #3
	bl MaskOfFlagNo
	ldr r2, _022632B8 ; =0x00003108
	ldr r1, [sp, #8]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _022631D4
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	b _02263298
_022631D4:
	mov r0, #1
	bl MaskOfFlagNo
	ldr r2, _022632B8 ; =0x00003108
	ldr r1, [sp, #8]
	add r3, sp, #0x10
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _0226321A
	mov r0, #0
	mov r2, #0xba
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #6
	ldr r4, [r1, r2]
	ldr r1, _022632BC ; =0x200400C0
	tst r1, r4
	beq _02263200
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _02263298
_02263200:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _02263216
	mov r0, #1
	strb r0, [r3, #3]
	b _02263298
_02263216:
	strb r0, [r3, #3]
	b _02263298
_0226321A:
	mov r0, #0
	mov r2, #3
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #0xc
	ldr r4, [r1, r2]
	ldr r1, _022632BC ; =0x200400C0
	tst r1, r4
	beq _02263234
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _02263298
_02263234:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _0226324A
	mov r0, #1
	strb r0, [r3, #3]
	b _02263298
_0226324A:
	strb r0, [r3, #3]
	b _02263298
_0226324E:
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleType
	cmp r0, #0
	bne _0226328E
	mov r2, #0xba
	mov r0, #0
	add r3, sp, #0x10
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #6
	ldr r4, [r1, r2]
	ldr r1, _022632BC ; =0x200400C0
	tst r1, r4
	beq _02263274
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _02263298
_02263274:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _0226328A
	mov r0, #1
	strb r0, [r3, #3]
	b _02263298
_0226328A:
	strb r0, [r3, #3]
	b _02263298
_0226328E:
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
_02263298:
	mov r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x10
	bl ov12_02262240
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022632AC: .word 0x00002DCC
_022632B0: .word 0x0000312C
_022632B4: .word 0x0000219C
_022632B8: .word 0x00003108
_022632BC: .word 0x200400C0
	thumb_func_end ov12_02263138

