	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF64
	.public ov40_0222BF80
	.public ov40_0222C03C
	.public ov40_0222C15C
	.public ov40_0222C23C
	.public ov40_0222C360
	.public ov40_0222C39C
	.public ov40_0222C434
	.public ov40_0222D294
	.public ov40_0222DD94
	.public ov40_0222DD9C
	.public ov40_0222DE40
	.public ov40_0222DFE8

	.text

	thumb_func_start ov40_0222C03C
ov40_0222C03C: ; 0x0222C03C
	push {r3, r4, r5, lr}
	ldr r3, _0222C154 ; =0x000006E4
	add r4, r0, #0
	ldr r1, _0222C158 ; =0x00000818
	ldr r5, [r4, r3]
	mov r3, #0x24
	ldr r2, [r4, r1]
	mul r3, r5
	add r2, r2, r3
	ldr r2, [r2, #0x10]
	cmp r2, #0x13
	bhi _0222C150
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222C060: ; jump table
	.short _0222C150 - _0222C060 - 2 ; case 0
	.short _0222C150 - _0222C060 - 2 ; case 1
	.short _0222C088 - _0222C060 - 2 ; case 2
	.short _0222C150 - _0222C060 - 2 ; case 3
	.short _0222C09E - _0222C060 - 2 ; case 4
	.short _0222C0AA - _0222C060 - 2 ; case 5
	.short _0222C150 - _0222C060 - 2 ; case 6
	.short _0222C146 - _0222C060 - 2 ; case 7
	.short _0222C0B6 - _0222C060 - 2 ; case 8
	.short _0222C0C2 - _0222C060 - 2 ; case 9
	.short _0222C0CE - _0222C060 - 2 ; case 10
	.short _0222C0DA - _0222C060 - 2 ; case 11
	.short _0222C0E6 - _0222C060 - 2 ; case 12
	.short _0222C0F2 - _0222C060 - 2 ; case 13
	.short _0222C0FE - _0222C060 - 2 ; case 14
	.short _0222C10A - _0222C060 - 2 ; case 15
	.short _0222C116 - _0222C060 - 2 ; case 16
	.short _0222C122 - _0222C060 - 2 ; case 17
	.short _0222C12E - _0222C060 - 2 ; case 18
	.short _0222C13A - _0222C060 - 2 ; case 19
_0222C088:
	add r1, #0x50
	ldr r0, [r4, r1]
	mov r1, #0
	add r2, r1, #0
	bl sub_02087A84
	add r0, r4, #0
	mov r1, #2
	bl ov40_0222BF80
	pop {r3, r4, r5, pc}
_0222C09E:
	ldr r3, [r4, #0x10]
	mov r1, #2
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C0AA:
	ldr r3, [r4, #0x10]
	mov r1, #3
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C0B6:
	ldr r3, [r4, #0x10]
	mov r1, #4
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C0C2:
	ldr r3, [r4, #0x10]
	mov r1, #5
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C0CE:
	ldr r3, [r4, #0x10]
	mov r1, #6
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C0DA:
	ldr r3, [r4, #0x10]
	mov r1, #7
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C0E6:
	ldr r3, [r4, #0x10]
	mov r1, #8
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C0F2:
	ldr r3, [r4, #0x10]
	mov r1, #9
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C0FE:
	ldr r3, [r4, #0x10]
	mov r1, #0xa
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C10A:
	ldr r3, [r4, #0x10]
	mov r1, #0xb
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C116:
	ldr r3, [r4, #0x10]
	mov r1, #0xc
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C122:
	ldr r3, [r4, #0x10]
	mov r1, #0xd
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C12E:
	ldr r3, [r4, #0x10]
	mov r1, #0xe
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C13A:
	ldr r3, [r4, #0x10]
	mov r1, #0xf
	mov r2, #1
	bl ov40_0222BF64
	pop {r3, r4, r5, pc}
_0222C146:
	ldr r3, [r4, #0x10]
	mov r1, #0x11
	mov r2, #1
	bl ov40_0222BF64
_0222C150:
	pop {r3, r4, r5, pc}
	nop
_0222C154: .word 0x000006E4
_0222C158: .word 0x00000818
	thumb_func_end ov40_0222C03C

	thumb_func_start ov40_0222C15C
ov40_0222C15C: ; 0x0222C15C
	push {r4, r5, r6, lr}
	ldr r3, _0222C218 ; =0x000006E4
	add r5, r0, #0
	ldr r1, _0222C21C ; =0x00000818
	ldr r4, [r5, r3]
	mov r3, #0x24
	ldr r2, [r5, r1]
	mul r3, r4
	add r2, r2, r3
	ldr r4, [r2, #0x18]
	ldr r2, [r5]
	mov r6, #1
	cmp r2, #6
	bhi _0222C192
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222C184: ; jump table
	.short _0222C192 - _0222C184 - 2 ; case 0
	.short _0222C192 - _0222C184 - 2 ; case 1
	.short _0222C1EA - _0222C184 - 2 ; case 2
	.short _0222C200 - _0222C184 - 2 ; case 3
	.short _0222C200 - _0222C184 - 2 ; case 4
	.short _0222C1AE - _0222C184 - 2 ; case 5
	.short _0222C1D2 - _0222C184 - 2 ; case 6
_0222C192:
	cmp r4, #3
	bhi _0222C200
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0222C220 ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222C200
	ldr r1, _0222C224 ; =0x0000010D
	add r0, r5, #0
	bl ov40_0222DD9C
	mov r6, #0
	b _0222C200
_0222C1AE:
	cmp r4, #0
	bne _0222C200
	add r1, #0x18
	ldr r0, [r5, r1]
	bl Save_FashionData_Get
	add r1, r4, #0
	bl sub_0202B9B8
	bl sub_0202BC10
	add r6, r0, #0
	bne _0222C200
	ldr r1, _0222C228 ; =0x00000122
	add r0, r5, #0
	bl ov40_0222DD9C
	b _0222C200
_0222C1D2:
	cmp r4, #0x64
	bne _0222C200
	bl ov40_0222DD94
	cmp r0, #0
	beq _0222C200
	ldr r1, _0222C22C ; =0x00000111
	add r0, r5, #0
	bl ov40_0222DD9C
	mov r6, #0
	b _0222C200
_0222C1EA:
	ldr r2, _0222C230 ; =0x0000270F
	cmp r4, r2
	bne _0222C200
	add r1, #0x64
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _0222C200
	mov r1, #0x81
	bl ov40_0222DD9C
	mov r6, #0
_0222C200:
	cmp r6, #0
	bne _0222C20C
	ldr r0, _0222C234 ; =0x0000057C
	bl PlaySE
	b _0222C212
_0222C20C:
	ldr r0, _0222C238 ; =0x0000057B
	bl PlaySE
_0222C212:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0222C218: .word 0x000006E4
_0222C21C: .word 0x00000818
_0222C220: .word 0x0000087C
_0222C224: .word 0x0000010D
_0222C228: .word 0x00000122
_0222C22C: .word 0x00000111
_0222C230: .word 0x0000270F
_0222C234: .word 0x0000057C
_0222C238: .word 0x0000057B
	thumb_func_end ov40_0222C15C

	thumb_func_start ov40_0222C23C
ov40_0222C23C: ; 0x0222C23C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _0222C33C
	ldr r0, _0222C340 ; =0x000006E4
	str r5, [r4, r0]
	add r0, r4, #0
	bl ov40_0222C15C
	cmp r0, #0
	beq _0222C33C
	cmp r5, #4
	bhi _0222C33C
	mov r0, #0x28
	mul r0, r5
	add r1, r4, r0
	ldr r0, _0222C344 ; =0x000005FC
	add r2, sp, #0
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl ov40_0222D294
	mov r0, #0x6f
	lsl r0, r0, #4
	add r3, sp, #0
	mov r1, #2
	ldrsh r1, [r3, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	bl sub_02087948
	mov r0, #0x6f
	lsl r0, r0, #4
	add r3, sp, #0
	mov r1, #2
	ldrsh r1, [r3, r1]
	mov r2, #0
	ldrsh r2, [r3, r2]
	add r1, #0x10
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	bl sub_020878B8
	ldr r2, _0222C340 ; =0x000006E4
	ldr r1, _0222C348 ; =0x00000818
	ldr r0, [r4, r2]
	ldr r6, [r4, r1]
	mov r3, #0x24
	add r5, r0, #0
	mul r5, r3
	add r0, r6, r5
	ldr r5, [r0, #0x18]
	add r0, r1, #0
	add r0, #0x54
	str r5, [r4, r0]
	ldr r5, [r4, r1]
	ldr r1, [r4, r2]
	add r0, r4, #0
	add r2, r1, #0
	mul r2, r3
	add r1, r5, r2
	ldr r1, [r1, #0x14]
	bl ov40_0222BF80
	ldr r1, _0222C340 ; =0x000006E4
	ldr r0, _0222C348 ; =0x00000818
	ldr r2, [r4, r1]
	mov r1, #0x24
	ldr r3, [r4, r0]
	mul r1, r2
	add r1, r3, r1
	ldr r1, [r1, #0x14]
	cmp r1, #2
	bne _0222C2EE
	add r0, #0x50
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A84
	b _0222C300
_0222C2EE:
	add r0, r4, #0
	bl ov40_0222C434
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
_0222C300:
	ldr r1, _0222C34C ; =0x0000086C
	ldr r0, _0222C350 ; =0x000003E7
	ldr r2, [r4, r1]
	cmp r2, r0
	bne _0222C316
	add r0, r4, #0
	mov r1, #0xc1
	bl ov40_0222DFE8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222C316:
	ldr r0, _0222C354 ; =0x0000270F
	cmp r2, r0
	bne _0222C328
	ldr r1, _0222C358 ; =0x0000012D
	add r0, r4, #0
	bl ov40_0222DFE8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222C328:
	add r1, #0x30
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0222C33C
	add r0, r4, #0
	bl ov40_0222DE40
	ldr r0, _0222C35C ; =0x0000089C
	mov r1, #0
	str r1, [r4, r0]
_0222C33C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222C340: .word 0x000006E4
_0222C344: .word 0x000005FC
_0222C348: .word 0x00000818
_0222C34C: .word 0x0000086C
_0222C350: .word 0x000003E7
_0222C354: .word 0x0000270F
_0222C358: .word 0x0000012D
_0222C35C: .word 0x0000089C
	thumb_func_end ov40_0222C23C

	thumb_func_start ov40_0222C360
ov40_0222C360: ; 0x0222C360
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r2, r4, #0
	ldr r0, _0222C394 ; =0x0000060C
	mov r1, #0
	add r2, #0x30
	add r3, r4, #0
_0222C370:
	add r1, r1, #1
	str r2, [r3, r0]
	add r2, r2, #4
	add r3, #0x28
	cmp r1, #5
	blt _0222C370
	mov r0, #0x6d
	str r0, [sp]
	add r0, r4, #0
	ldr r2, _0222C398 ; =ov40_0222C23C
	add r0, #0x30
	mov r1, #5
	add r3, r4, #0
	bl TouchHitboxController_Create
	str r0, [r4, #0x2c]
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_0222C394: .word 0x0000060C
_0222C398: .word ov40_0222C23C
	thumb_func_end ov40_0222C360

	thumb_func_start ov40_0222C39C
ov40_0222C39C: ; 0x0222C39C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0222C428 ; =0x00000818
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0222C424
	mov r4, #0
	ldr r5, [sp]
	str r4, [sp, #4]
	add r6, r4, #0
	add r7, sp, #8
_0222C3B4:
	ldr r1, [sp]
	ldr r0, _0222C428 ; =0x00000818
	ldr r0, [r1, r0]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _0222C3DA
	ldr r0, _0222C42C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0]
	ldr r0, _0222C42C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #1]
	ldr r0, _0222C42C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #2]
	ldr r0, _0222C42C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #3]
	b _0222C416
_0222C3DA:
	ldr r0, _0222C430 ; =0x000005FC
	add r1, sp, #8
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #8
	bl ManagedSprite_GetPositionXY
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _0222C42C ; =0x0000060C
	ldr r0, [r5, r0]
	sub r1, #0x10
	strb r1, [r0]
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _0222C42C ; =0x0000060C
	ldr r0, [r5, r0]
	add r1, #0x10
	strb r1, [r0, #1]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _0222C42C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r1, [r0, #2]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _0222C42C ; =0x0000060C
	ldr r0, [r5, r0]
	add r1, #0xa0
	strb r1, [r0, #3]
_0222C416:
	ldr r0, [sp, #4]
	add r4, #0x24
	add r0, r0, #1
	add r5, #0x28
	str r0, [sp, #4]
	cmp r0, #5
	blt _0222C3B4
_0222C424:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0222C428: .word 0x00000818
_0222C42C: .word 0x0000060C
_0222C430: .word 0x000005FC
	thumb_func_end ov40_0222C39C

	thumb_func_start ov40_0222C434
ov40_0222C434: ; 0x0222C434
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r7, _0222C46C ; =0x0000060C
	add r5, r0, #0
	add r4, r6, #0
_0222C43E:
	ldr r0, _0222C470 ; =0x000005FC
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	bl ManagedSprite_GetPositionXY
	ldr r0, _0222C46C ; =0x0000060C
	add r6, r6, #1
	ldr r0, [r5, r0]
	strb r4, [r0]
	ldr r0, _0222C46C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r4, [r0, #1]
	ldr r0, _0222C46C ; =0x0000060C
	ldr r0, [r5, r0]
	strb r4, [r0, #2]
	ldr r0, [r5, r7]
	add r5, #0x28
	strb r4, [r0, #3]
	cmp r6, #5
	blt _0222C43E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222C46C: .word 0x0000060C
_0222C470: .word 0x000005FC
	thumb_func_end ov40_0222C434

