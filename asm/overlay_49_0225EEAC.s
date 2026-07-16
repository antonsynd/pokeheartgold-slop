	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_0225EEAC
ov49_0225EEAC: ; 0x0225EEAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0xbf
	add r4, r0, #0
	add r0, r6, #0
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0xbf
	mov r1, #0
	lsl r2, r2, #2
	add r7, r0, #0
	bl memset
	str r6, [r7]
	add r5, r7, #0
	str r4, [r7, #4]
	mov r4, #0
	add r5, #8
_0225EED2:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov49_0225F068
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x14
	blt _0225EED2
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r7, r0
	mov r1, #0
	add r2, r6, #0
	bl ov49_0225F068
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225EEAC

	thumb_func_start ov49_0225EEF8
ov49_0225EEF8: ; 0x0225EEF8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r4, #0
	add r5, #8
_0225EF02:
	add r0, r5, #0
	bl ov49_0225F074
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #0x14
	blt _0225EF02
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r6, r0
	bl ov49_0225F074
	add r0, r6, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225EEF8

	thumb_func_start ov49_0225EF24
ov49_0225EF24: ; 0x0225EF24
	ldr r3, _0225EF2C ; =ov49_0225F018
	mov r1, #0
	bx r3
	nop
_0225EF2C: .word ov49_0225F018
	thumb_func_end ov49_0225EF24

	thumb_func_start ov49_0225EF30
ov49_0225EF30: ; 0x0225EF30
	ldr r3, _0225EF38 ; =ov49_0225F018
	mov r1, #1
	bx r3
	nop
_0225EF38: .word ov49_0225F018
	thumb_func_end ov49_0225EF30

	thumb_func_start ov49_0225EF3C
ov49_0225EF3C: ; 0x0225EF3C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov49_0225EF3C

	thumb_func_start ov49_0225EF40
ov49_0225EF40: ; 0x0225EF40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	beq _0225EF50
	bl GF_AssertFail
_0225EF50:
	ldrh r0, [r5]
	add r1, r4, #0
	bl Heap_Alloc
	mov r1, #0
	add r2, r4, #0
	str r0, [r5, #8]
	bl memset
	ldr r0, [r5, #8]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225EF40

	thumb_func_start ov49_0225EF68
ov49_0225EF68: ; 0x0225EF68
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0225EF76
	bl GF_AssertFail
_0225EF76:
	ldr r0, [r4, #8]
	bl Heap_Free
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225EF68

	thumb_func_start ov49_0225EF84
ov49_0225EF84: ; 0x0225EF84
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov49_0225EF84

	thumb_func_start ov49_0225EF88
ov49_0225EF88: ; 0x0225EF88
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov49_0225EF88

	thumb_func_start ov49_0225EF8C
ov49_0225EF8C: ; 0x0225EF8C
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov49_0225EF8C

	thumb_func_start ov49_0225EF90
ov49_0225EF90: ; 0x0225EF90
	ldr r1, [r0, #0x10]
	add r1, r1, #1
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov49_0225EF90

	thumb_func_start ov49_0225EF98
ov49_0225EF98: ; 0x0225EF98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0225EFAA
	bl GF_AssertFail
_0225EFAA:
	cmp r4, #0x14
	blo _0225EFB2
	bl GF_AssertFail
_0225EFB2:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_0225F0D8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225EF98

	thumb_func_start ov49_0225EFC4
ov49_0225EFC4: ; 0x0225EFC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0225EFD6
	bl GF_AssertFail
_0225EFD6:
	cmp r4, #0x14
	blo _0225EFDE
	bl GF_AssertFail
_0225EFDE:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_0225F110
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225EFC4

	thumb_func_start ov49_0225EFF0
ov49_0225EFF0: ; 0x0225EFF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _0225F000
	bl GF_AssertFail
_0225F000:
	cmp r4, #0x14
	blo _0225F008
	bl GF_AssertFail
_0225F008:
	mov r0, #0x24
	add r5, #8
	mul r0, r4
	add r0, r5, r0
	add r1, r6, #0
	bl ov49_0225F10C
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225EFF0

	thumb_func_start ov49_0225F018
ov49_0225F018: ; 0x0225F018
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0xb6
	lsl r0, r0, #2
	add r0, r7, r0
	str r1, [sp]
	bl ov49_0225F180
	cmp r0, #1
	bne _0225F03E
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r2, [sp]
	add r0, r7, r0
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225F098
	pop {r3, r4, r5, r6, r7, pc}
_0225F03E:
	add r6, r7, #0
	add r6, #8
	mov r4, #0
	add r5, r6, #0
_0225F046:
	add r0, r6, #0
	bl ov49_0225F180
	cmp r0, #1
	bne _0225F05C
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r3, r4, #0
	bl ov49_0225F098
_0225F05C:
	add r4, r4, #1
	add r6, #0x24
	add r5, #0x24
	cmp r4, #0x14
	blt _0225F046
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225F018

	thumb_func_start ov49_0225F068
ov49_0225F068: ; 0x0225F068
	strh r2, [r0]
	mov r2, #1
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225F068

	thumb_func_start ov49_0225F074
ov49_0225F074: ; 0x0225F074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0225F082
	bl Heap_Free
_0225F082:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0225F08C
	bl Heap_Free
_0225F08C:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x24
	bl memset
	pop {r4, pc}
	thumb_func_end ov49_0225F074

	thumb_func_start ov49_0225F098
ov49_0225F098: ; 0x0225F098
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #2]
	add r6, r1, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0225F0D6
	cmp r2, #0
	beq _0225F0B0
	cmp r2, #1
	beq _0225F0B6
	b _0225F0BC
_0225F0B0:
	ldr r0, [r5, #4]
	ldr r4, [r0]
	b _0225F0C0
_0225F0B6:
	ldr r0, [r5, #4]
	ldr r4, [r0, #4]
	b _0225F0C0
_0225F0BC:
	bl GF_AssertFail
_0225F0C0:
	cmp r4, #0
	beq _0225F0D6
	ldr r1, [r6, #4]
	add r0, r5, #0
	add r2, r7, #0
	blx r4
	cmp r0, #1
	bne _0225F0D6
	add r0, r5, #0
	bl ov49_0225F148
_0225F0D6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225F098

	thumb_func_start ov49_0225F0D8
ov49_0225F0D8: ; 0x0225F0D8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov49_0225F170
	cmp r0, #1
	beq _0225F0EE
	bl GF_AssertFail
_0225F0EE:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0225F0F8
	bl GF_AssertFail
_0225F0F8:
	mov r3, #0
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	str r3, [sp]
	bl ov49_0225F190
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225F0D8

	thumb_func_start ov49_0225F10C
ov49_0225F10C: ; 0x0225F10C
	strb r1, [r0, #2]
	bx lr
	thumb_func_end ov49_0225F10C

	thumb_func_start ov49_0225F110
ov49_0225F110: ; 0x0225F110
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov49_0225F170
	cmp r0, #1
	beq _0225F126
	bl GF_AssertFail
_0225F126:
	add r2, r5, #0
	add r3, r5, #4
	add r2, #0x14
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r3, #0
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	str r3, [sp]
	bl ov49_0225F190
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225F110

	thumb_func_start ov49_0225F148
ov49_0225F148: ; 0x0225F148
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0225F156
	bl GF_AssertFail
_0225F156:
	add r3, r4, #0
	add r3, #0x14
	add r2, r4, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r4, #0x14
	add r0, r4, #0
	bl ov49_0225F19C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225F148

	thumb_func_start ov49_0225F170
ov49_0225F170: ; 0x0225F170
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0225F17A
	mov r0, #1
	bx lr
_0225F17A:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225F170

	thumb_func_start ov49_0225F180
ov49_0225F180: ; 0x0225F180
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0225F18A
	mov r0, #1
	bx lr
_0225F18A:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225F180

	thumb_func_start ov49_0225F190
ov49_0225F190: ; 0x0225F190
	str r1, [r0]
	ldr r1, [sp]
	str r3, [r0, #0xc]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov49_0225F190

	thumb_func_start ov49_0225F19C
ov49_0225F19C: ; 0x0225F19C
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #0xc]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov49_0225F19C

	thumb_func_start ov49_0225F1A8
ov49_0225F1A8: ; 0x0225F1A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov49_02259FEC
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225A010
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225A02C
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_02259FE8
	mov r1, #1
	bl ov45_0222A5E8
	ldrh r0, [r4, #6]
	cmp r0, #4
	blo _0225F1D8
	bl GF_AssertFail
_0225F1D8:
	ldrh r2, [r4, #6]
	ldr r3, _0225F1EC ; =ov49_02269BE0
	add r0, r7, #0
	lsl r2, r2, #3
	add r2, r3, r2
	add r1, r6, #0
	mov r3, #0
	bl ov49_0225EF98
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225F1EC: .word ov49_02269BE0
	thumb_func_end ov49_0225F1A8

	thumb_func_start ov49_0225F1F0
ov49_0225F1F0: ; 0x0225F1F0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl ov49_0225A02C
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_0225A010
	ldr r7, _0225F220 ; =ov49_02269B78
	add r6, r0, #0
	mov r4, #0
_0225F206:
	cmp r5, r4
	beq _0225F216
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0
	bl ov49_0225EF98
_0225F216:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0225F206
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225F220: .word ov49_02269B78
	thumb_func_end ov49_0225F1F0

	thumb_func_start ov49_0225F224
ov49_0225F224: ; 0x0225F224
	cmp r0, #3
	bhi _0225F24A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F234: ; jump table
	.short _0225F23C - _0225F234 - 2 ; case 0
	.short _0225F240 - _0225F234 - 2 ; case 1
	.short _0225F244 - _0225F234 - 2 ; case 2
	.short _0225F248 - _0225F234 - 2 ; case 3
_0225F23C:
	mov r1, #0x40
	b _0225F24A
_0225F240:
	mov r1, #0x80
	b _0225F24A
_0225F244:
	mov r1, #0x20
	b _0225F24A
_0225F248:
	mov r1, #0x10
_0225F24A:
	ldr r0, _0225F25C ; =gSystem
	ldr r0, [r0, #0x44]
	tst r0, r1
	beq _0225F256
	mov r0, #1
	bx lr
_0225F256:
	mov r0, #0
	bx lr
	nop
_0225F25C: .word gSystem
	thumb_func_end ov49_0225F224

	thumb_func_start ov49_0225F260
ov49_0225F260: ; 0x0225F260
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	add r7, r0, #0
	str r2, [sp, #4]
	add r4, r3, #0
	ldr r5, [sp, #0x28]
	bl ov49_0225EF84
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov49_0225A010
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	mov r2, #0
	cmp r0, #3
	beq _0225F2F4
	add r6, r4, #0
	add r1, r2, #0
_0225F288:
	add r3, r1, #0
_0225F28A:
	ldrb r0, [r6, r3]
	cmp r0, #0xff
	beq _0225F2EA
	cmp r5, r0
	bne _0225F2E4
	mov r0, #0x18
	add r5, r2, #0
	mul r5, r0
	add r6, r4, r5
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0225F2AA
	cmp r0, #1
	beq _0225F2C2
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0225F2AA:
	add r0, r7, #0
	bl ov49_0225EF68
	add r2, r6, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, #0xc
	mov r3, #0
	bl ov49_0225EF98
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0225F2C2:
	ldr r7, [r6, #0x14]
	cmp r7, #0
	beq _0225F2D2
	ldrb r3, [r3, r6]
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	blx r7
_0225F2D2:
	add r2, r4, r5
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, #0xc
	mov r3, #0
	bl ov49_0225EFC4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0225F2E4:
	add r3, r3, #1
	cmp r3, #8
	blt _0225F28A
_0225F2EA:
	add r6, #0x18
	ldr r0, [r6, #8]
	add r2, r2, #1
	cmp r0, #3
	bne _0225F288
_0225F2F4:
	bl GF_AssertFail
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225F260

	thumb_func_start ov49_0225F2FC
ov49_0225F2FC: ; 0x0225F2FC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl ov49_02259FF0
	add r1, r4, #0
	bl ov49_02258C28
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225A008
	add r5, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	bl ov49_02259154
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl ov49_0225CC28
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_0225F2FC

	thumb_func_start ov49_0225F334
ov49_0225F334: ; 0x0225F334
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov49_02259FF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225A008
	str r0, [sp, #4]
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_02258C5C
	add r5, r0, #0
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0
	bl ov49_02258E7C
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl ov49_0225CC40
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225F334

	thumb_func_start ov49_0225F374
ov49_0225F374: ; 0x0225F374
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	str r0, [r4]
	strb r0, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	bl MTRandom
	mov r1, #3
	and r0, r1
	strb r0, [r4, #6]
	mov r0, #1
	strb r0, [r4, #7]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_0225F374

	thumb_func_start ov49_0225F394
ov49_0225F394: ; 0x0225F394
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0225F3A8
	cmp r0, #1
	beq _0225F3AE
	cmp r0, #2
	beq _0225F3C0
	b _0225F422
_0225F3A8:
	mov r0, #0
	str r0, [r4]
	b _0225F422
_0225F3AE:
	ldrb r0, [r4, #6]
	sub r0, r0, #1
	cmp r0, #0
	ble _0225F3BA
	strb r0, [r4, #6]
	b _0225F422
_0225F3BA:
	mov r0, #2
	strb r0, [r4, #5]
	b _0225F422
_0225F3C0:
	mov r0, #4
	ldrsb r1, [r4, r0]
	mov r3, #0
	add r1, r1, #1
	strb r1, [r4, #4]
	ldrsb r1, [r4, r0]
	ldr r0, _0225F428 ; =0x00007FFF
	add r2, r1, #0
	mul r2, r0
	asr r0, r2, #1
	lsr r0, r0, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0xe
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0225F42C ; =FX_SinCosTable_
	mov r2, #6
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4]
	mov r0, #4
	ldrsb r0, [r4, r0]
	cmp r0, #4
	blt _0225F422
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0225F420
	strb r3, [r4, #4]
	mov r0, #1
	strb r0, [r4, #5]
	bl MTRandom
	mov r1, #3
	and r0, r1
	strb r0, [r4, #6]
	b _0225F422
_0225F420:
	strb r3, [r4, #5]
_0225F422:
	ldr r0, [r4]
	pop {r4, pc}
	nop
_0225F428: .word 0x00007FFF
_0225F42C: .word FX_SinCosTable_
	thumb_func_end ov49_0225F394

	thumb_func_start ov49_0225F430
ov49_0225F430: ; 0x0225F430
	mov r1, #0
	strb r1, [r0, #7]
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225F430

	thumb_func_start ov49_0225F438
ov49_0225F438: ; 0x0225F438
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _0225F442
	mov r0, #1
	bx lr
_0225F442:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end ov49_0225F438

	thumb_func_start ov49_0225F448
ov49_0225F448: ; 0x0225F448
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	bl ov49_02259FF0
	add r1, r4, #0
	add r7, r0, #0
	bl ov49_02258D70
	str r0, [sp]
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _0225F47E
	cmp r0, #1
	beq _0225F4A2
	cmp r0, #2
	beq _0225F4B8
	b _0225F510
_0225F47E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225A56C
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225EF8C
	ldr r0, [sp, #4]
	bl ov45_0222A53C
	cmp r4, r0
	bne _0225F510
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A53C
	b _0225F510
_0225F4A2:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225A5AC
	cmp r0, #1
	bne _0225F510
	add r0, r6, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _0225F510
_0225F4B8:
	ldr r0, [sp, #4]
	bl ov45_0222A53C
	cmp r4, r0
	bne _0225F4CE
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	b _0225F504
_0225F4CE:
	add r0, r5, #0
	bl ov49_0225A4F0
	cmp r0, #1
	bne _0225F4EE
	add r0, r5, #0
	bl ov49_0225A4E0
	cmp r4, r0
	beq _0225F4F8
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #2
	bl ov49_02258EEC
	b _0225F4F8
_0225F4EE:
	ldr r1, [sp]
	add r0, r7, #0
	mov r2, #2
	bl ov49_02258EEC
_0225F4F8:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov49_0225A04C
_0225F504:
	add r0, r5, #0
	bl ov49_0225A54C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225F510:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225F448

	thumb_func_start ov49_0225F518
ov49_0225F518: ; 0x0225F518
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov49_02259FE8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov49_02259FF0
	str r0, [sp, #8]
	bl ov49_02258DAC
	add r7, r0, #0
	add r0, r6, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0x16
	bhi _0225F602
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F556: ; jump table
	.short _0225F584 - _0225F556 - 2 ; case 0
	.short _0225F5C4 - _0225F556 - 2 ; case 1
	.short _0225F5FA - _0225F556 - 2 ; case 2
	.short _0225F614 - _0225F556 - 2 ; case 3
	.short _0225F62E - _0225F556 - 2 ; case 4
	.short _0225F648 - _0225F556 - 2 ; case 5
	.short _0225F662 - _0225F556 - 2 ; case 6
	.short _0225F67C - _0225F556 - 2 ; case 7
	.short _0225F692 - _0225F556 - 2 ; case 8
	.short _0225F6B2 - _0225F556 - 2 ; case 9
	.short _0225F6E4 - _0225F556 - 2 ; case 10
	.short _0225F758 - _0225F556 - 2 ; case 11
	.short _0225F79E - _0225F556 - 2 ; case 12
	.short _0225F7D0 - _0225F556 - 2 ; case 13
	.short _0225F9FA - _0225F556 - 2 ; case 14
	.short _0225F844 - _0225F556 - 2 ; case 15
	.short _0225F88A - _0225F556 - 2 ; case 16
	.short _0225F8E2 - _0225F556 - 2 ; case 17
	.short _0225F902 - _0225F556 - 2 ; case 18
	.short _0225F950 - _0225F556 - 2 ; case 19
	.short _0225F97A - _0225F556 - 2 ; case 20
	.short _0225F9AE - _0225F556 - 2 ; case 21
	.short _0225F9C2 - _0225F556 - 2 ; case 22
_0225F584:
	add r0, r6, #0
	mov r1, #0x2c
	bl ov49_0225EF40
	add r1, r5, #0
	add r4, r0, #0
	bl ov49_022614CC
	ldr r0, [sp, #4]
	bl ov45_0222A4D0
	ldr r0, [sp, #4]
	bl ov45_0222B1B4
	strh r0, [r4, #2]
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	bl ov45_0222A72C
	ldr r1, [sp]
	add r0, r5, #0
	bl ov49_0225F2FC
	add r1, r0, #0
	ldr r0, [sp, #8]
	mov r2, #4
	bl ov49_02258EEC
	add r0, r6, #0
	bl ov49_0225EF90
	b _0225F9FA
_0225F5C4:
	add r0, r5, #0
	bl ov49_0225A030
	cmp r0, #0
	bne _0225F602
	add r0, r7, #0
	bl ov49_02258F38
	cmp r0, #1
	bne _0225F602
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #0
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225A008
	add r1, r7, #0
	bl ov49_0225CC40
	mov r0, #0x10
	str r0, [r4, #4]
	add r0, r6, #0
	bl ov49_0225EF90
	b _0225F9FA
_0225F5FA:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	beq _0225F604
_0225F602:
	b _0225F9FA
_0225F604:
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A018
	add r0, r6, #0
	bl ov49_0225EF90
	b _0225F9FA
_0225F614:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov49_02258E7C
	mov r0, #4
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0225F9FA
_0225F62E:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #0
	bl ov49_02258E7C
	mov r0, #5
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0225F9FA
_0225F648:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #1
	mov r3, #3
	bl ov49_02258E7C
	mov r0, #6
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0225F9FA
_0225F662:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #2
	mov r3, #3
	bl ov49_02258E7C
	mov r0, #8
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0225F9FA
_0225F67C:
	add r0, r7, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _0225F766
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _0225F9FA
_0225F692:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x10
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F6B2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #5
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r4, #8
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0225A174
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A1F4
	add r0, r6, #0
	mov r1, #0xa
	bl ov49_0225EF8C
	b _0225F9FA
_0225F6E4:
	add r0, r5, #0
	mov r7, #0
	bl ov49_0225A1D4
	add r2, r0, #0
	beq _0225F704
	sub r0, r7, #2
	cmp r2, r0
	beq _0225F6FE
	add r0, r0, #1
	cmp r2, r0
	beq _0225F718
	b _0225F70C
_0225F6FE:
	ldr r0, _0225FA00 ; =0x000005DC
	bl PlaySE
_0225F704:
	mov r0, #0
	strh r0, [r4, #0x28]
	mov r7, #1
	b _0225F718
_0225F70C:
	add r0, r5, #0
	mov r1, #0
	strh r2, [r4, #0x28]
	mov r7, #1
	bl ov49_0225A40C
_0225F718:
	cmp r7, #1
	bne _0225F766
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0225F74E
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A264
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	b _0225F9FA
_0225F74E:
	add r0, r6, #0
	mov r1, #0x11
	bl ov49_0225EF8C
	b _0225F9FA
_0225F758:
	add r0, r5, #0
	bl ov49_0225A2C4
	cmp r0, #0
	beq _0225F768
	cmp r0, #1
	beq _0225F78E
_0225F766:
	b _0225F9FA
_0225F768:
	add r0, r5, #0
	bl ov49_0225A2F8
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov45_0222A770
	add r0, r5, #0
	bl ov49_0225A490
	ldr r0, _0225FA04 ; =0x000005E5
	bl PlaySE
	b _0225F9FA
_0225F78E:
	add r0, r5, #0
	bl ov49_0225A2F8
	add r0, r6, #0
	mov r1, #9
	bl ov49_0225EF8C
	b _0225F9FA
_0225F79E:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xa
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r4, #8
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov49_0225A174
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A1F4
	add r0, r6, #0
	mov r1, #0xd
	bl ov49_0225EF8C
	b _0225F9FA
_0225F7D0:
	add r0, r5, #0
	mov r7, #0
	bl ov49_0225A1D4
	add r2, r0, #0
	beq _0225F7F0
	sub r0, r7, #2
	cmp r2, r0
	beq _0225F7EA
	add r0, r0, #1
	cmp r2, r0
	beq _0225F804
	b _0225F7F8
_0225F7EA:
	ldr r0, _0225FA00 ; =0x000005DC
	bl PlaySE
_0225F7F0:
	mov r0, #0
	strh r0, [r4, #0x2a]
	mov r7, #1
	b _0225F804
_0225F7F8:
	add r0, r5, #0
	mov r1, #0
	strh r2, [r4, #0x2a]
	mov r7, #1
	bl ov49_0225A40C
_0225F804:
	cmp r7, #1
	bne _0225F852
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0225F83A
	add r0, r5, #0
	mov r1, #1
	mov r2, #8
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A264
	add r0, r6, #0
	mov r1, #0xf
	bl ov49_0225EF8C
	b _0225F9FA
_0225F83A:
	add r0, r6, #0
	mov r1, #0x13
	bl ov49_0225EF8C
	b _0225F9FA
_0225F844:
	add r0, r5, #0
	bl ov49_0225A2C4
	cmp r0, #0
	beq _0225F854
	cmp r0, #1
	beq _0225F87A
_0225F852:
	b _0225F9FA
_0225F854:
	add r0, r5, #0
	bl ov49_0225A2F8
	add r0, r6, #0
	mov r1, #0x14
	bl ov49_0225EF8C
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov45_0222A770
	add r0, r5, #0
	bl ov49_0225A490
	ldr r0, _0225FA04 ; =0x000005E5
	bl PlaySE
	b _0225F9FA
_0225F87A:
	add r0, r5, #0
	bl ov49_0225A2F8
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	b _0225F9FA
_0225F88A:
	ldr r0, _0225FA08 ; =0x000005BF
	bl PlaySE
	add r0, r5, #0
	bl ov49_0225A530
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrh r1, [r4, #2]
	add r0, r5, #0
	mov r2, #1
	bl ov49_0225A39C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov45_0222AB28
	cmp r0, #0
	bne _0225F8C2
	mov r1, #1
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A30C
	b _0225F8CC
_0225F8C2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x7c
	bl ov49_0225A30C
_0225F8CC:
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x12
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F8E2:
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x16
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F902:
	ldr r0, _0225FA08 ; =0x000005BF
	bl IsSEPlaying
	cmp r0, #0
	bne _0225F9FA
	ldr r0, _0225FA0C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0225F9FA
	ldr r0, _0225FA00 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #9
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl ov45_0222A770
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A428
	b _0225F9FA
_0225F950:
	ldrh r2, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A40C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xc
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x11
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F97A:
	ldrh r2, [r4, #0x28]
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A40C
	ldrh r2, [r4, #0x2a]
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A40C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xb
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x11
	strh r0, [r4]
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	b _0225F9FA
_0225F9AE:
	add r0, r5, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _0225F9FA
	ldrh r1, [r4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _0225F9FA
_0225F9C2:
	ldr r0, [sp, #8]
	add r1, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02261540
	add r0, r6, #0
	bl ov49_0225EF68
	add r0, r5, #0
	bl ov49_0225A010
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225A02C
	add r1, r0, #0
	ldr r2, _0225FA10 ; =ov49_02269B38
	add r0, r4, #0
	mov r3, #0
	bl ov49_0225EF98
_0225F9FA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FA00: .word 0x000005DC
_0225FA04: .word 0x000005E5
_0225FA08: .word 0x000005BF
_0225FA0C: .word gSystem
_0225FA10: .word ov49_02269B38
	thumb_func_end ov49_0225F518

	thumb_func_start ov49_0225FA14
ov49_0225FA14: ; 0x0225FA14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov49_02259FE8
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov49_02259FEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #0xc]
	bl ov49_02258DAC
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #5
	bls _0225FA48
	b _0225FB52
_0225FA48:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FA54: ; jump table
	.short _0225FA60 - _0225FA54 - 2 ; case 0
	.short _0225FA8C - _0225FA54 - 2 ; case 1
	.short _0225FAC2 - _0225FA54 - 2 ; case 2
	.short _0225FAF2 - _0225FA54 - 2 ; case 3
	.short _0225FB16 - _0225FA54 - 2 ; case 4
	.short _0225FB2E - _0225FA54 - 2 ; case 5
_0225FA60:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov49_0225F334
	bl ov45_0222D844
	cmp r0, #0
	bne _0225FA7C
	bl ov45_0222EB94
_0225FA7C:
	ldr r0, [sp, #8]
	mov r1, #0
	bl ov45_0222A520
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FB52
_0225FA8C:
	bl ov45_0222D844
	cmp r0, #0
	bne _0225FA9C
	bl ov45_0222EBC4
	cmp r0, #0
	beq _0225FB52
_0225FA9C:
	add r0, r4, #0
	bl ov49_02259FEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_0225A030
	cmp r0, #0
	bne _0225FB52
	add r0, r5, #0
	bl ov49_0225EF90
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov49_02258EAC
	b _0225FB52
_0225FAC2:
	add r0, r7, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _0225FB52
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A018
	ldr r0, [sp, #8]
	bl ov45_0222A4B8
	cmp r0, #1
	bne _0225FAE8
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FB52
_0225FAE8:
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _0225FB52
_0225FAF2:
	ldrh r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x15
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FB52
_0225FB16:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _0225FB52
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FB52
_0225FB2E:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A010
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_0225A02C
	add r1, r0, #0
	ldr r2, _0225FB58 ; =ov49_02269B38
	add r0, r5, #0
	mov r3, #0
	bl ov49_0225EF98
_0225FB52:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FB58: .word ov49_02269B38
	thumb_func_end ov49_0225FA14

	thumb_func_start ov49_0225FB5C
ov49_0225FB5C: ; 0x0225FB5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov49_0225A010
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #0xc]
	bl ov49_02258DAC
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl ov49_02259FEC
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #5
	bls _0225FB98
	b _0225FC9A
_0225FB98:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FBA4: ; jump table
	.short _0225FBB0 - _0225FBA4 - 2 ; case 0
	.short _0225FBE2 - _0225FBA4 - 2 ; case 1
	.short _0225FC08 - _0225FBA4 - 2 ; case 2
	.short _0225FC3A - _0225FBA4 - 2 ; case 3
	.short _0225FC5E - _0225FBA4 - 2 ; case 4
	.short _0225FC76 - _0225FBA4 - 2 ; case 5
_0225FBB0:
	mov r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov49_0225F334
	add r0, r5, #0
	bl ov49_0225EF90
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, _0225FCA0 ; =ov49_02269B68
	mov r3, #0
	bl ov49_0225EFC4
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl ov45_0222A4C8
	ldr r0, [sp, #0x10]
	bl ov45_0222A4D0
	b _0225FC9A
_0225FBE2:
	add r0, r4, #0
	bl ov49_02259FEC
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_0225A030
	cmp r0, #0
	bne _0225FC9A
	add r0, r5, #0
	bl ov49_0225EF90
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov49_02258EAC
	b _0225FC9A
_0225FC08:
	add r0, r7, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _0225FC9A
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A018
	ldr r0, [sp, #0x10]
	bl ov45_0222A424
	cmp r0, #1
	bne _0225FC30
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _0225FC9A
_0225FC30:
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _0225FC9A
_0225FC3A:
	ldrh r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FC9A
_0225FC5E:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _0225FC9A
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FC9A
_0225FC76:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A010
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_0225A02C
	add r1, r0, #0
	ldr r2, _0225FCA4 ; =ov49_02269B38
	add r0, r5, #0
	mov r3, #0
	bl ov49_0225EF98
_0225FC9A:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FCA0: .word ov49_02269B68
_0225FCA4: .word ov49_02269B38
	thumb_func_end ov49_0225FB5C

	thumb_func_start ov49_0225FCA8
ov49_0225FCA8: ; 0x0225FCA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp, #4]
	bl ov49_02259FE8
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_02259FEC
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #0xc]
	bl ov49_02258DAC
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #5
	bhi _0225FDC2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FCE6: ; jump table
	.short _0225FCF2 - _0225FCE6 - 2 ; case 0
	.short _0225FD16 - _0225FCE6 - 2 ; case 1
	.short _0225FD3C - _0225FCE6 - 2 ; case 2
	.short _0225FD6C - _0225FCE6 - 2 ; case 3
	.short _0225FD86 - _0225FCE6 - 2 ; case 4
	.short _0225FD9E - _0225FCE6 - 2 ; case 5
_0225FCF2:
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #8]
	ldrh r2, [r2]
	ldrh r3, [r3, #2]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov49_0225F334
	add r0, r7, #0
	mov r1, #0
	bl ov45_0222A520
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FDC2
_0225FD16:
	add r0, r4, #0
	bl ov49_02259FEC
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_0225A030
	cmp r0, #0
	bne _0225FDC2
	add r0, r5, #0
	bl ov49_0225EF90
	ldrh r3, [r7, #4]
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #2
	bl ov49_02258EAC
	b _0225FDC2
_0225FD3C:
	add r0, r6, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _0225FDC2
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A018
	add r0, r7, #0
	bl ov45_0222A4B8
	cmp r0, #1
	bne _0225FD62
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FDC2
_0225FD62:
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _0225FDC2
_0225FD6C:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x5b
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FDC2
_0225FD86:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _0225FDC2
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_0225EF90
	b _0225FDC2
_0225FD9E:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A010
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_0225A02C
	add r1, r0, #0
	ldr r2, _0225FDC8 ; =ov49_02269B38
	add r0, r5, #0
	mov r3, #0
	bl ov49_0225EF98
_0225FDC2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FDC8: .word ov49_02269B38
	thumb_func_end ov49_0225FCA8

	thumb_func_start ov49_0225FDCC
ov49_0225FDCC: ; 0x0225FDCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp, #4]
	add r5, r1, #0
	add r7, r2, #0
	bl ov49_0225EF84
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	bl ov49_0225EF88
	cmp r0, #0
	beq _0225FDEC
	cmp r0, #1
	beq _0225FDFC
	b _0226020A
_0225FDEC:
	ldr r0, [sp, #4]
	mov r1, #4
	bl ov49_0225EF40
	ldr r0, [sp, #4]
	bl ov49_0225EF90
	b _0226020A
_0225FDFC:
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A53C
	add r0, r5, #0
	bl ov49_0225A010
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl ov49_02259FF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225A000
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov49_02259FF8
	str r0, [sp, #0x20]
	add r0, r4, #0
	bl ov49_02258DB0
	add r6, r0, #0
	beq _0225FE7E
	ldr r0, [sp, #0x18]
	bl ov45_0222A330
	cmp r0, #0
	bne _0225FE6A
	ldr r0, [sp, #0x18]
	bl ov45_0222A3A0
	cmp r0, #1
	bne _0225FE6A
	ldr r0, [sp, #0x18]
	bl ov45_0222A2F8
	cmp r0, #0
	bne _0225FE6A
	add r0, r6, #0
	bl ov49_02258F3C
	cmp r0, #9
	beq _0225FE7E
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #9
	bl ov49_02258EEC
	b _0225FE7E
_0225FE6A:
	add r0, r6, #0
	bl ov49_02258F3C
	cmp r0, #0
	beq _0225FE7E
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl ov49_02258EEC
_0225FE7E:
	add r0, r4, #0
	bl ov49_02258DAC
	str r0, [sp, #0x28]
	mov r1, #5
	bl ov49_02258E60
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl ov49_02258E60
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	bl ov49_02258E34
	add r1, sp, #0x40
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	sub r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	ldr r1, [sp, #8]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl ov42_02228270
	add r2, sp, #0x40
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r1, [r2, r1]
	ldr r0, [sp, #0x1c]
	asr r3, r1, #3
	lsr r3, r3, #0x1c
	add r3, r1, r3
	lsl r1, r3, #0xc
	mov r3, #0xe
	ldrsh r2, [r2, r3]
	lsr r1, r1, #0x10
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	lsl r2, r3, #0xc
	lsr r2, r2, #0x10
	bl ov49_022589C4
	str r0, [sp, #0x24]
	add r0, sp, #0x40
	mov r1, #0xa
	ldrsh r2, [r0, r1]
	asr r1, r2, #3
	lsr r1, r1, #0x1c
	add r1, r2, r1
	asr r1, r1, #4
	str r1, [sp, #0x10]
	mov r1, #8
	ldrsh r1, [r0, r1]
	ldr r2, [sp, #0x10]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov49_022589C4
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_0225A4E0
	add r1, r0, #0
	cmp r1, r7
	beq _0225FF48
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A084
	cmp r0, #0
	beq _0225FF48
	add r0, r5, #0
	bl ov49_0225A4D0
_0225FF48:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0225FF94
	add r0, r5, #0
	bl ov49_0225A500
	cmp r0, #1
	bne _0225FF60
	ldr r0, [sp, #0x2c]
	sub r0, r0, #1
	cmp r0, #2
	bls _0225FF62
_0225FF60:
	b _0226020A
_0225FF62:
	add r0, r5, #0
	bl ov49_0225A4E0
	add r1, r0, #0
	cmp r1, r7
	beq _0225FF8C
	add r0, r4, #0
	bl ov49_02258D70
	add r6, r0, #0
	beq _0225FF8C
	bl ov49_02258F3C
	cmp r0, #0
	bne _0225FF8C
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	ldr r2, [r2]
	add r1, r6, #0
	bl ov49_02258EEC
_0225FF8C:
	add r0, r5, #0
	bl ov49_0225A4D0
	b _0226020A
_0225FF94:
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A53C
	ldr r0, [sp, #0x24]
	bl ov49_02258A30
	cmp r0, #1
	bne _0225FFDA
	ldr r0, [sp, #0x24]
	ldr r3, _02260210 ; =ov49_02269D20
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r7, #0
	bl ov49_0225F260
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov49_0225A03C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225FFDA:
	add r0, r5, #0
	bl ov49_0225A55C
	cmp r0, #1
	bne _02260008
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	ldr r0, [sp, #0x14]
	ldr r2, _02260214 ; =ov49_02269B80
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EFC4
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02260008:
	ldr r0, [sp, #0x18]
	bl ov45_0222B00C
	cmp r0, #0
	beq _02260036
	ldr r0, [sp, #0x14]
	ldr r2, _02260218 ; =ov49_02269B70
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EFC4
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02260036:
	ldr r0, _0226021C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _02260120
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov49_02258F40
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _022600A6
	mov r1, #5
	bl ov49_02258E60
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	mov r1, #4
	bl ov49_02258E60
	add r1, r0, #0
	cmp r1, #0xfe
	beq _022600A6
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A064
	ldr r1, [sp, #0x38]
	cmp r1, #0
	bne _022600A6
	cmp r0, #0
	bne _022600A6
	ldr r0, [sp, #0x14]
	ldr r2, _02260220 ; =ov49_02269B60
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EFC4
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	ldr r1, [sp, #0x34]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022600A6:
	add r0, r6, #0
	bl ov49_02258A90
	cmp r0, #1
	bne _022600E6
	ldr r0, [sp, #0x28]
	mov r1, #6
	bl ov49_02258E60
	cmp r0, #0
	bne _022600E6
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	ldr r0, [sp, #0x20]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl ov49_0225E58C
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A03C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022600E6:
	add r0, r6, #0
	bl ov49_02258A70
	cmp r0, #1
	bne _02260120
	ldr r0, [sp, #4]
	ldr r3, _02260224 ; =ov49_02269C90
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ov49_0225F260
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A03C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02260120:
	ldr r0, [sp, #8]
	bl ov49_0225F224
	cmp r0, #1
	bne _022601C0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0226016A
	add r0, r6, #0
	bl ov49_02258A50
	cmp r0, #1
	bne _0226016A
	ldr r0, [sp, #4]
	ldr r3, _02260228 ; =ov49_02269C60
	add r1, r5, #0
	add r2, r7, #0
	str r6, [sp]
	bl ov49_0225F260
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A03C
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A53C
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226016A:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov49_02258F40
	str r0, [sp, #0x3c]
	cmp r0, #0
	beq _022601C0
	mov r1, #4
	bl ov49_02258E60
	add r6, r0, #0
	cmp r6, #0xfe
	beq _022601C0
	add r0, r5, #0
	bl ov49_0225A4F0
	cmp r0, #0
	bne _022601C0
	lsl r1, r6, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov49_0225A084
	cmp r0, #0
	bne _022601C0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov49_0225A428
	ldr r0, [sp, #0x3c]
	bl ov49_02258F3C
	ldr r1, [sp, #0x30]
	mov r2, #0
	str r0, [r1]
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	bl ov49_02258EEC
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022601C0:
	ldr r0, _0226021C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	beq _0226020A
	add r0, r5, #0
	bl ov49_0225A4F0
	cmp r0, #0
	bne _022601EE
	ldr r0, [sp, #0x18]
	bl ov45_0222A53C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A428
	ldr r0, _0226022C ; =0x000005DC
	bl PlaySE
	b _02260204
_022601EE:
	add r0, r5, #0
	bl ov49_0225A4E0
	cmp r0, r7
	bne _02260204
	add r0, r5, #0
	bl ov49_0225A4D0
	ldr r0, _0226022C ; =0x000005DC
	bl PlaySE
_02260204:
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226020A:
	mov r0, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260210: .word ov49_02269D20
_02260214: .word ov49_02269B80
_02260218: .word ov49_02269B70
_0226021C: .word gSystem
_02260220: .word ov49_02269B60
_02260224: .word ov49_02269C90
_02260228: .word ov49_02269C60
_0226022C: .word 0x000005DC
	thumb_func_end ov49_0225FDCC

	thumb_func_start ov49_02260230
ov49_02260230: ; 0x02260230
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov49_02259FF0
	bl ov49_02258DAC
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	beq _02260250
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A53C
_02260250:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov49_02260230

	thumb_func_start ov49_02260254
ov49_02260254: ; 0x02260254
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	bl ov49_0225EF88
	cmp r0, #9
	bhi _022602FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260270: ; jump table
	.short _02260284 - _02260270 - 2 ; case 0
	.short _022602C6 - _02260270 - 2 ; case 1
	.short _022602D8 - _02260270 - 2 ; case 2
	.short _022602F2 - _02260270 - 2 ; case 3
	.short _02260306 - _02260270 - 2 ; case 4
	.short _02260314 - _02260270 - 2 ; case 5
	.short _02260350 - _02260270 - 2 ; case 6
	.short _02260384 - _02260270 - 2 ; case 7
	.short _022603B6 - _02260270 - 2 ; case 8
	.short _022603D6 - _02260270 - 2 ; case 9
_02260284:
	add r0, r4, #0
	bl ov49_02259FF0
	add r6, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #0
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #0xb
	bl ov45_0222A5E8
	ldr r0, _02260420 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x41
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _0226041A
_022602C6:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _022602FC
	add r0, r5, #0
	bl ov49_0225EF90
	b _0226041A
_022602D8:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x19
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _0226041A
_022602F2:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	beq _022602FE
_022602FC:
	b _0226041A
_022602FE:
	add r0, r5, #0
	bl ov49_0225EF90
	b _0226041A
_02260306:
	add r0, r4, #0
	bl ov49_0225A294
	add r0, r5, #0
	bl ov49_0225EF90
	b _0226041A
_02260314:
	add r0, r4, #0
	mov r6, #0
	bl ov49_0225A2C4
	cmp r0, #0
	beq _02260328
	cmp r0, #1
	beq _02260334
	cmp r0, #2
	b _0226033E
_02260328:
	add r0, r5, #0
	mov r1, #6
	bl ov49_0225EF8C
	mov r6, #1
	b _0226033E
_02260334:
	add r0, r5, #0
	mov r1, #8
	bl ov49_0225EF8C
	mov r6, #1
_0226033E:
	cmp r6, #1
	bne _0226041A
	add r0, r4, #0
	bl ov49_0225A2F8
	add r0, r4, #0
	bl ov49_0225A0EC
	b _0226041A
_02260350:
	add r0, r4, #0
	mov r1, #0
	bl ov49_0225A018
	add r0, r4, #0
	bl ov49_02259FF0
	add r6, r0, #0
	bl ov49_02258DAC
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_0225A008
	bl ov49_0225CC44
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #3
	bl ov49_02258EEC
	add r0, r5, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _0226041A
_02260384:
	add r0, r4, #0
	bl ov49_02259FF0
	bl ov49_02258DAC
	bl ov49_02258F38
	cmp r0, #1
	bne _0226041A
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A034
	add r0, r4, #0
	mov r1, #0
	bl ov49_0225A038
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #0xb
	bl ov45_0222A5E8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022603B6:
	add r0, r4, #0
	bl ov49_02259FF0
	add r4, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #2
	mov r3, #0
	bl ov49_02258EAC
	add r0, r5, #0
	bl ov49_0225EF90
	b _0226041A
_022603D6:
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #1
	bl ov45_0222A5E8
	add r0, r4, #0
	bl ov49_02259FF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_0225A010
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_02258DAC
	mov r1, #5
	add r6, r0, #0
	bl ov49_02258E60
	cmp r0, #0
	bne _0226041A
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov49_02258EEC
	ldr r2, _02260424 ; =ov49_02269B38
	add r0, r4, #0
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EF98
_0226041A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260420: .word 0x000005DD
_02260424: .word ov49_02269B38
	thumb_func_end ov49_02260254

	thumb_func_start ov49_02260428
ov49_02260428: ; 0x02260428
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp, #0x10]
	add r0, r4, #0
	bl ov49_02259FF0
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x28]
	bl ov49_02258D70
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_0225A040
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl ov49_0225EF84
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #8
	bls _02260466
	b _022607B8
_02260466:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260472: ; jump table
	.short _02260484 - _02260472 - 2 ; case 0
	.short _02260544 - _02260472 - 2 ; case 1
	.short _022605E2 - _02260472 - 2 ; case 2
	.short _022606B0 - _02260472 - 2 ; case 3
	.short _02260702 - _02260472 - 2 ; case 4
	.short _0226071A - _02260472 - 2 ; case 5
	.short _02260740 - _02260472 - 2 ; case 6
	.short _0226075A - _02260472 - 2 ; case 7
	.short _02260788 - _02260472 - 2 ; case 8
_02260484:
	add r0, r5, #0
	mov r1, #0xc
	bl ov49_0225EF40
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	bl ov49_02260C58
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _022604C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022604A8: ; jump table
	.short _022604B0 - _022604A8 - 2 ; case 0
	.short _022604B6 - _022604A8 - 2 ; case 1
	.short _022604BC - _022604A8 - 2 ; case 2
	.short _022604C2 - _022604A8 - 2 ; case 3
_022604B0:
	mov r0, #3
	str r0, [r4, #8]
	b _022604D0
_022604B6:
	mov r0, #4
	str r0, [r4, #8]
	b _022604D0
_022604BC:
	mov r0, #5
	str r0, [r4, #8]
	b _022604D0
_022604C2:
	mov r0, #6
	str r0, [r4, #8]
	b _022604D0
_022604C8:
	bl GF_AssertFail
	mov r0, #5
	str r0, [r4, #8]
_022604D0:
	ldr r0, [sp, #0x24]
	bl ov45_0222A330
	cmp r0, #1
	bne _022604EC
	mov r0, #0x16
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _022607B8
_022604EC:
	ldr r0, [sp, #0x24]
	bl ov45_0222A208
	cmp r0, #1
	bne _02260508
	mov r0, #0x48
	strh r0, [r4, #4]
	mov r0, #1
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _022607B8
_02260508:
	ldr r0, [sp, #0x20]
	bl ov49_02260C58
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl ov45_0222EBF0
	cmp r0, #0
	bne _0226052E
	mov r0, #0x14
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _022607B8
_0226052E:
	add r0, r6, #0
	bl ov45_0222EB38
	cmp r0, #0
	bne _0226053C
	bl GF_AssertFail
_0226053C:
	add r0, r5, #0
	bl ov49_0225EF90
	b _022607B8
_02260544:
	bl ov45_0222EB74
	cmp r0, #1
	bne _022605CA
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	add r1, sp, #0x40
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	add r0, r4, #0
	bl ov49_02259FE8
	add r7, r0, #0
	bl ov45_0222AB68
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [r6, #8]
	sub r0, r0, #5
	cmp r0, #1
	bhi _022605A4
	mov r5, #0
	add r4, r5, #0
_0226057E:
	add r0, r7, #0
	add r1, r4, #0
	bl ov45_0222AB78
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0226059C
	cmp r5, #4
	bhs _02260596
	add r1, sp, #0x40
	strb r0, [r1, r5]
_02260596:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0226059C:
	add r4, r4, #1
	cmp r4, #4
	blt _0226057E
	b _022605AA
_022605A4:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x38
	strb r0, [r1, #8]
_022605AA:
	add r3, sp, #0x38
	ldrb r0, [r3, #9]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	str r0, [sp, #4]
	ldrb r0, [r3, #0xb]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #8]
	ldr r1, [r6, #8]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	bl ov45_0222AC14
	b _022607B8
_022605CA:
	cmp r0, #2
	beq _022605D0
	b _022607B8
_022605D0:
	mov r0, #0x14
	strh r0, [r6, #4]
	mov r0, #0
	strh r0, [r6, #6]
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _022607B8
_022605E2:
	ldr r0, [sp, #0x20]
	bl ov49_02260CC0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	bl ov49_02260D28
	str r0, [sp, #0x30]
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A034
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov49_0225A038
	add r0, r4, #0
	bl ov49_02259FE8
	ldr r1, [sp, #0x30]
	bl ov45_0222A5E8
	ldr r0, [r6, #8]
	cmp r0, #6
	bhi _02260644
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260624: ; jump table
	.short _02260644 - _02260624 - 2 ; case 0
	.short _02260644 - _02260624 - 2 ; case 1
	.short _02260644 - _02260624 - 2 ; case 2
	.short _02260632 - _02260624 - 2 ; case 3
	.short _02260632 - _02260624 - 2 ; case 4
	.short _02260638 - _02260624 - 2 ; case 5
	.short _0226063E - _02260624 - 2 ; case 6
_02260632:
	mov r0, #5
	str r0, [sp, #0x18]
	b _02260648
_02260638:
	mov r0, #3
	str r0, [sp, #0x18]
	b _02260648
_0226063E:
	mov r0, #4
	str r0, [sp, #0x18]
	b _02260648
_02260644:
	bl GF_AssertFail
_02260648:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	bl ov45_0222B118
	add r0, r7, #0
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl ov49_02259FEC
	add r4, r0, #0
	add r0, r7, #0
	bl ov49_02258E34
	add r1, sp, #0x38
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #1
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strh r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r4, #2]
	ldr r0, [sp, #0x34]
	strh r0, [r4, #4]
	ldr r0, [r6, #8]
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov49_0225EF68
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022606B0:
	add r0, r7, #0
	mov r1, #6
	bl ov49_02258E60
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _022606EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022606CC: ; jump table
	.short _022606D4 - _022606CC - 2 ; case 0
	.short _022606DA - _022606CC - 2 ; case 1
	.short _022606E0 - _022606CC - 2 ; case 2
	.short _022606E6 - _022606CC - 2 ; case 3
_022606D4:
	mov r0, #6
	str r0, [sp, #0x14]
	b _022606F0
_022606DA:
	mov r0, #5
	str r0, [sp, #0x14]
	b _022606F0
_022606E0:
	mov r0, #8
	str r0, [sp, #0x14]
	b _022606F0
_022606E6:
	mov r0, #7
	str r0, [sp, #0x14]
	b _022606F0
_022606EC:
	bl GF_AssertFail
_022606F0:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225EF90
	b _022607B8
_02260702:
	add r0, r7, #0
	bl ov49_02258F38
	cmp r0, #1
	bne _022607B8
	mov r0, #8
	str r0, [r6]
	add r0, r5, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _022607B8
_0226071A:
	add r0, r7, #0
	mov r1, #6
	bl ov49_02258E60
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov42_022282A4
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	mov r2, #2
	bl ov49_02258EAC
	add r0, r5, #0
	bl ov49_0225EF90
	b _022607B8
_02260740:
	add r0, r7, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _022607B8
	mov r0, #8
	str r0, [r6]
	add r0, r5, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _022607B8
_0226075A:
	ldr r0, [r6]
	sub r0, r0, #1
	str r0, [r6]
	cmp r0, #0
	bgt _022607B8
	ldr r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	ldrh r1, [r6, #6]
	ldrh r2, [r6, #4]
	add r0, r4, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _022607B8
_02260788:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #0
	beq _022607B8
	add r0, r5, #0
	bl ov49_0225EF68
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	bl ov49_0225A010
	ldr r1, [sp, #0x10]
	ldr r2, _022607C0 ; =ov49_02269B38
	mov r3, #0
	bl ov49_0225EF98
_022607B8:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_022607C0: .word ov49_02269B38
	thumb_func_end ov49_02260428

	thumb_func_start ov49_022607C4
ov49_022607C4: ; 0x022607C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r6, r0, #0
	str r2, [sp]
	bl ov49_0225EF84
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_0225A010
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #0x18]
	bl ov49_02258DAC
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl ov49_02259FE8
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #7
	bls _022607FE
	b _02260A5A
_022607FE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226080A: ; jump table
	.short _0226081A - _0226080A - 2 ; case 0
	.short _0226088E - _0226080A - 2 ; case 1
	.short _022608A8 - _0226080A - 2 ; case 2
	.short _0226095E - _0226080A - 2 ; case 3
	.short _0226097E - _0226080A - 2 ; case 4
	.short _02260992 - _0226080A - 2 ; case 5
	.short _02260A16 - _0226080A - 2 ; case 6
	.short _02260A2E - _0226080A - 2 ; case 7
_0226081A:
	add r0, r6, #0
	mov r1, #4
	bl ov49_0225EF40
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ov49_02258EEC
	add r0, r6, #0
	bl ov49_0225EF90
	mov r0, #0
	strb r0, [r5]
	add r0, r4, #0
	bl ov49_0225A040
	cmp r0, #0x1e
	beq _0226084C
	cmp r0, #0x1f
	beq _02260858
	cmp r0, #0x20
	beq _02260864
	b _02260870
_0226084C:
	mov r0, #0
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #2
	strb r0, [r5, #3]
	b _02260874
_02260858:
	mov r0, #1
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #3
	strb r0, [r5, #3]
	b _02260874
_02260864:
	mov r0, #2
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #4
	strb r0, [r5, #3]
	b _02260874
_02260870:
	bl GF_AssertFail
_02260874:
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #0xc
	bl ov45_0222A5E8
	ldr r0, [sp, #0x14]
	ldr r1, [sp]
	ldr r2, _02260A60 ; =ov49_02269B88
	add r3, r5, #0
	bl ov49_0225EFC4
	b _02260A5A
_0226088E:
	ldrb r0, [r7]
	cmp r0, #8
	bne _0226089E
	add r0, r6, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02260A5A
_0226089E:
	add r0, r6, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _02260A5A
_022608A8:
	add r0, r4, #0
	bl ov49_0225A040
	cmp r0, #0x1e
	beq _022608BC
	cmp r0, #0x1f
	beq _022608C4
	cmp r0, #0x20
	beq _022608CC
	b _022608D2
_022608BC:
	mov r0, #0
	mov r5, #3
	str r0, [sp, #8]
	b _022608D2
_022608C4:
	mov r0, #1
	mov r5, #4
	str r0, [sp, #8]
	b _022608D2
_022608CC:
	mov r0, #2
	mov r5, #5
	str r0, [sp, #8]
_022608D2:
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A034
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov49_0225A038
	ldr r0, [sp, #0xc]
	bl IncrementGameStat119
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl ov45_0222B118
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl ov49_02259FEC
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl ov49_02258E34
	add r1, sp, #0x20
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #2
	strh r0, [r5, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	asr r2, r0, #3
	lsr r2, r2, #0x1c
	add r2, r0, r2
	asr r0, r2, #4
	strh r0, [r5]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r5, #2]
	ldr r0, [sp, #0x1c]
	strh r0, [r5, #4]
	ldrb r0, [r7, #2]
	strh r0, [r5, #8]
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #1
	bl ov45_0222A4C8
	add r0, r6, #0
	bl ov49_0225EF68
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226095E:
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	add r3, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #2
	bl ov49_02258EAC
	add r0, r6, #0
	bl ov49_0225EF90
	b _02260A5A
_0226097E:
	ldr r0, [sp, #0x10]
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _02260A5A
	add r0, r6, #0
	bl ov49_0225EF90
	b _02260A5A
_02260992:
	mov r0, #1
	str r0, [sp, #4]
	ldrb r0, [r7]
	cmp r0, #7
	bhi _022609E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022609A8: ; jump table
	.short _022609B8 - _022609A8 - 2 ; case 0
	.short _022609C6 - _022609A8 - 2 ; case 1
	.short _022609CA - _022609A8 - 2 ; case 2
	.short _022609D8 - _022609A8 - 2 ; case 3
	.short _022609DC - _022609A8 - 2 ; case 4
	.short _022609E8 - _022609A8 - 2 ; case 5
	.short _022609E0 - _022609A8 - 2 ; case 6
	.short _022609E4 - _022609A8 - 2 ; case 7
_022609B8:
	ldrb r1, [r7, #2]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	mov r5, #4
	b _022609EC
_022609C6:
	mov r5, #5
	b _022609EC
_022609CA:
	ldrb r1, [r7, #2]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	mov r5, #6
	b _022609EC
_022609D8:
	mov r5, #0x13
	b _022609EC
_022609DC:
	mov r5, #0x11
	b _022609EC
_022609E0:
	mov r5, #0x1d
	b _022609EC
_022609E4:
	mov r5, #7
	b _022609EC
_022609E8:
	mov r0, #0
	str r0, [sp, #4]
_022609EC:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02260A0C
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r6, #0
	bl ov49_0225EF90
	b _02260A5A
_02260A0C:
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _02260A5A
_02260A16:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _02260A5A
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r6, #0
	bl ov49_0225EF90
	b _02260A5A
_02260A2E:
	add r0, r6, #0
	bl ov49_0225EF68
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #1
	bl ov45_0222A5E8
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A010
	ldr r1, [sp]
	ldr r2, _02260A64 ; =ov49_02269B38
	mov r3, #0
	bl ov49_0225EF98
_02260A5A:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260A60: .word ov49_02269B88
_02260A64: .word ov49_02269B38
	thumb_func_end ov49_022607C4

	thumb_func_start ov49_02260A68
ov49_02260A68: ; 0x02260A68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp]
	bl ov49_0225EF84
	str r0, [sp, #8]
	add r0, r4, #0
	bl ov49_0225A010
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #0xc]
	bl ov49_02258DAC
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #6
	bls _02260AA0
	b _02260C4A
_02260AA0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260AAC: ; jump table
	.short _02260ABA - _02260AAC - 2 ; case 0
	.short _02260B1E - _02260AAC - 2 ; case 1
	.short _02260BB4 - _02260AAC - 2 ; case 2
	.short _02260BD4 - _02260AAC - 2 ; case 3
	.short _02260BE8 - _02260AAC - 2 ; case 4
	.short _02260C04 - _02260AAC - 2 ; case 5
	.short _02260C1C - _02260AAC - 2 ; case 6
_02260ABA:
	add r0, r5, #0
	mov r1, #0xc
	bl ov49_0225EF40
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #0xd
	bl ov45_0222A5E8
	add r0, r7, #0
	bl ov45_0222A330
	cmp r0, #1
	bne _02260AE8
	mov r0, #0x7a
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02260C4E
_02260AE8:
	add r0, r7, #0
	bl ov45_0222A3A0
	cmp r0, #1
	bne _02260AF8
	mov r0, #0xa
	strh r0, [r6, #2]
	b _02260B14
_02260AF8:
	add r0, r7, #0
	bl ov45_0222A2E0
	cmp r0, #1
	bne _02260B10
	mov r0, #0x62
	strh r0, [r6]
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02260C4E
_02260B10:
	mov r0, #9
	strh r0, [r6, #2]
_02260B14:
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02260C4E
_02260B1E:
	ldr r0, [sp, #8]
	ldrh r0, [r0, #2]
	cmp r0, #9
	bne _02260B2C
	mov r0, #9
	str r0, [sp, #4]
	b _02260B36
_02260B2C:
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r7, #0
	bl ov45_0222A310
_02260B36:
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A034
	ldr r1, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov49_0225A038
	mov r1, #0x17
	add r2, r1, #0
	add r0, r7, #0
	sub r2, #0x18
	bl ov45_0222A704
	add r0, r6, #0
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_02259FEC
	add r4, r0, #0
	add r0, r6, #0
	bl ov49_02258E34
	add r1, sp, #0x10
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #3
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strh r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r4, #2]
	strh r7, [r4, #4]
	mov r0, #0
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov49_0225EF68
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02260BB4:
	add r0, r6, #0
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #2
	bl ov49_02258EAC
	add r0, r5, #0
	bl ov49_0225EF90
	b _02260C4E
_02260BD4:
	add r0, r6, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _02260C4E
	add r0, r5, #0
	bl ov49_0225EF90
	b _02260C4E
_02260BE8:
	ldr r2, [sp, #8]
	add r0, r4, #0
	ldrh r2, [r2]
	mov r1, #1
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _02260C4E
_02260C04:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _02260C4E
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_0225EF90
	b _02260C4E
_02260C1C:
	add r0, r5, #0
	bl ov49_0225EF68
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #1
	bl ov45_0222A5E8
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A010
	ldr r1, [sp]
	ldr r2, _02260C54 ; =ov49_02269B38
	mov r3, #0
	bl ov49_0225EF98
	b _02260C4E
_02260C4A:
	bl GF_AssertFail
_02260C4E:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260C54: .word ov49_02269B38
	thumb_func_end ov49_02260A68

	thumb_func_start ov49_02260C58
ov49_02260C58: ; 0x02260C58
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02260CB6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260C6A: ; jump table
	.short _02260CB6 - _02260C6A - 2 ; case 0
	.short _02260CB6 - _02260C6A - 2 ; case 1
	.short _02260CB6 - _02260C6A - 2 ; case 2
	.short _02260CB6 - _02260C6A - 2 ; case 3
	.short _02260CB6 - _02260C6A - 2 ; case 4
	.short _02260CB6 - _02260C6A - 2 ; case 5
	.short _02260CAE - _02260C6A - 2 ; case 6
	.short _02260CAE - _02260C6A - 2 ; case 7
	.short _02260CAE - _02260C6A - 2 ; case 8
	.short _02260CAE - _02260C6A - 2 ; case 9
	.short _02260CAE - _02260C6A - 2 ; case 10
	.short _02260CAE - _02260C6A - 2 ; case 11
	.short _02260CAE - _02260C6A - 2 ; case 12
	.short _02260CAE - _02260C6A - 2 ; case 13
	.short _02260CB2 - _02260C6A - 2 ; case 14
	.short _02260CB2 - _02260C6A - 2 ; case 15
	.short _02260CB2 - _02260C6A - 2 ; case 16
	.short _02260CB2 - _02260C6A - 2 ; case 17
	.short _02260CB2 - _02260C6A - 2 ; case 18
	.short _02260CB2 - _02260C6A - 2 ; case 19
	.short _02260CB2 - _02260C6A - 2 ; case 20
	.short _02260CB2 - _02260C6A - 2 ; case 21
	.short _02260CA6 - _02260C6A - 2 ; case 22
	.short _02260CA6 - _02260C6A - 2 ; case 23
	.short _02260CA6 - _02260C6A - 2 ; case 24
	.short _02260CA6 - _02260C6A - 2 ; case 25
	.short _02260CAA - _02260C6A - 2 ; case 26
	.short _02260CAA - _02260C6A - 2 ; case 27
	.short _02260CAA - _02260C6A - 2 ; case 28
	.short _02260CAA - _02260C6A - 2 ; case 29
_02260CA6:
	mov r0, #2
	pop {r3, pc}
_02260CAA:
	mov r0, #3
	pop {r3, pc}
_02260CAE:
	mov r0, #0
	pop {r3, pc}
_02260CB2:
	mov r0, #1
	pop {r3, pc}
_02260CB6:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_02260C58

	thumb_func_start ov49_02260CC0
ov49_02260CC0: ; 0x02260CC0
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02260D1E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260CD2: ; jump table
	.short _02260D1E - _02260CD2 - 2 ; case 0
	.short _02260D1E - _02260CD2 - 2 ; case 1
	.short _02260D1E - _02260CD2 - 2 ; case 2
	.short _02260D1E - _02260CD2 - 2 ; case 3
	.short _02260D1E - _02260CD2 - 2 ; case 4
	.short _02260D1E - _02260CD2 - 2 ; case 5
	.short _02260D16 - _02260CD2 - 2 ; case 6
	.short _02260D16 - _02260CD2 - 2 ; case 7
	.short _02260D16 - _02260CD2 - 2 ; case 8
	.short _02260D16 - _02260CD2 - 2 ; case 9
	.short _02260D16 - _02260CD2 - 2 ; case 10
	.short _02260D16 - _02260CD2 - 2 ; case 11
	.short _02260D16 - _02260CD2 - 2 ; case 12
	.short _02260D16 - _02260CD2 - 2 ; case 13
	.short _02260D1A - _02260CD2 - 2 ; case 14
	.short _02260D1A - _02260CD2 - 2 ; case 15
	.short _02260D1A - _02260CD2 - 2 ; case 16
	.short _02260D1A - _02260CD2 - 2 ; case 17
	.short _02260D1A - _02260CD2 - 2 ; case 18
	.short _02260D1A - _02260CD2 - 2 ; case 19
	.short _02260D1A - _02260CD2 - 2 ; case 20
	.short _02260D1A - _02260CD2 - 2 ; case 21
	.short _02260D0E - _02260CD2 - 2 ; case 22
	.short _02260D0E - _02260CD2 - 2 ; case 23
	.short _02260D0E - _02260CD2 - 2 ; case 24
	.short _02260D0E - _02260CD2 - 2 ; case 25
	.short _02260D12 - _02260CD2 - 2 ; case 26
	.short _02260D12 - _02260CD2 - 2 ; case 27
	.short _02260D12 - _02260CD2 - 2 ; case 28
	.short _02260D12 - _02260CD2 - 2 ; case 29
_02260D0E:
	mov r0, #1
	pop {r3, pc}
_02260D12:
	mov r0, #2
	pop {r3, pc}
_02260D16:
	mov r0, #6
	pop {r3, pc}
_02260D1A:
	mov r0, #7
	pop {r3, pc}
_02260D1E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_02260CC0

	thumb_func_start ov49_02260D28
ov49_02260D28: ; 0x02260D28
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02260D86
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260D3A: ; jump table
	.short _02260D86 - _02260D3A - 2 ; case 0
	.short _02260D86 - _02260D3A - 2 ; case 1
	.short _02260D86 - _02260D3A - 2 ; case 2
	.short _02260D86 - _02260D3A - 2 ; case 3
	.short _02260D86 - _02260D3A - 2 ; case 4
	.short _02260D86 - _02260D3A - 2 ; case 5
	.short _02260D7E - _02260D3A - 2 ; case 6
	.short _02260D7E - _02260D3A - 2 ; case 7
	.short _02260D7E - _02260D3A - 2 ; case 8
	.short _02260D7E - _02260D3A - 2 ; case 9
	.short _02260D7E - _02260D3A - 2 ; case 10
	.short _02260D7E - _02260D3A - 2 ; case 11
	.short _02260D7E - _02260D3A - 2 ; case 12
	.short _02260D7E - _02260D3A - 2 ; case 13
	.short _02260D82 - _02260D3A - 2 ; case 14
	.short _02260D82 - _02260D3A - 2 ; case 15
	.short _02260D82 - _02260D3A - 2 ; case 16
	.short _02260D82 - _02260D3A - 2 ; case 17
	.short _02260D82 - _02260D3A - 2 ; case 18
	.short _02260D82 - _02260D3A - 2 ; case 19
	.short _02260D82 - _02260D3A - 2 ; case 20
	.short _02260D82 - _02260D3A - 2 ; case 21
	.short _02260D76 - _02260D3A - 2 ; case 22
	.short _02260D76 - _02260D3A - 2 ; case 23
	.short _02260D76 - _02260D3A - 2 ; case 24
	.short _02260D76 - _02260D3A - 2 ; case 25
	.short _02260D7A - _02260D3A - 2 ; case 26
	.short _02260D7A - _02260D3A - 2 ; case 27
	.short _02260D7A - _02260D3A - 2 ; case 28
	.short _02260D7A - _02260D3A - 2 ; case 29
_02260D76:
	mov r0, #7
	pop {r3, pc}
_02260D7A:
	mov r0, #8
	pop {r3, pc}
_02260D7E:
	mov r0, #5
	pop {r3, pc}
_02260D82:
	mov r0, #6
	pop {r3, pc}
_02260D86:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_02260D28

	thumb_func_start ov49_02260D90
ov49_02260D90: ; 0x02260D90
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _02260DA4
	cmp r0, #1
	beq _02260DFA
	b _02260E24
_02260DA4:
	add r0, r4, #0
	bl ov49_02259FE8
	add r6, r0, #0
	bl ov45_0222A330
	cmp r0, #1
	bne _02260DC2
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov49_0225A30C
	add r1, r0, #0
	b _02260DE6
_02260DC2:
	add r0, r6, #0
	bl ov45_0222A374
	cmp r0, #1
	bne _02260DDA
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov49_0225A30C
	add r1, r0, #0
	b _02260DE6
_02260DDA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov49_0225A30C
	add r1, r0, #0
_02260DE6:
	add r0, r4, #0
	bl ov49_0225A08C
	ldr r0, _02260E28 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	bl ov49_0225EF90
	b _02260E24
_02260DFA:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #0
	beq _02260E24
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	bl ov49_02259FF0
	add r4, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov49_02258EEC
	mov r0, #1
	pop {r4, r5, r6, pc}
_02260E24:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02260E28: .word 0x000005DC
	thumb_func_end ov49_02260D90

	thumb_func_start ov49_02260E2C
ov49_02260E2C: ; 0x02260E2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov49_02259FF0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov49_02259FF8
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225A008
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0xf
	bls _02260E6A
	b _022611C0
_02260E6A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260E76: ; jump table
	.short _02260E96 - _02260E76 - 2 ; case 0
	.short _02260EDE - _02260E76 - 2 ; case 1
	.short _02260F52 - _02260E76 - 2 ; case 2
	.short _02260FE2 - _02260E76 - 2 ; case 3
	.short _02261016 - _02260E76 - 2 ; case 4
	.short _02261046 - _02260E76 - 2 ; case 5
	.short _02261082 - _02260E76 - 2 ; case 6
	.short _02261098 - _02260E76 - 2 ; case 7
	.short _022610B0 - _02260E76 - 2 ; case 8
	.short _022610D0 - _02260E76 - 2 ; case 9
	.short _022610F0 - _02260E76 - 2 ; case 10
	.short _02261110 - _02260E76 - 2 ; case 11
	.short _02261124 - _02260E76 - 2 ; case 12
	.short _02261134 - _02260E76 - 2 ; case 13
	.short _02261180 - _02260E76 - 2 ; case 14
	.short _02261196 - _02260E76 - 2 ; case 15
_02260E96:
	add r0, r6, #0
	mov r1, #0x18
	bl ov49_0225EF40
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl ov49_02258D70
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov49_0225A040
	cmp r0, #0x21
	beq _02260EBE
	cmp r0, #0x22
	beq _02260EC4
	cmp r0, #0x23
	beq _02260ECA
	b _02260ED0
_02260EBE:
	mov r0, #2
	strh r0, [r4, #6]
	b _02260ED4
_02260EC4:
	mov r0, #1
	strh r0, [r4, #6]
	b _02260ED4
_02260ECA:
	mov r0, #0
	strh r0, [r4, #6]
	b _02260ED4
_02260ED0:
	bl GF_AssertFail
_02260ED4:
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _022611C0
_02260EDE:
	ldr r0, [sp, #4]
	bl ov45_0222A374
	cmp r0, #0
	bne _02260EF6
	mov r0, #8
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	b _022611C0
_02260EF6:
	ldr r0, [sp, #4]
	bl ov45_0222A330
	cmp r0, #1
	bne _02260F0E
	mov r0, #0xa
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	b _022611C0
_02260F0E:
	ldrh r2, [r4, #6]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov45_0222ADB8
	mov r1, #0
	mvn r1, r1
	str r0, [r4]
	cmp r0, r1
	beq _02260F44
	add r0, r6, #0
	mov r1, #2
	bl ov49_0225EF8C
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1f
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
	b _022611C0
_02260F44:
	mov r0, #9
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	b _022611C0
_02260F52:
	ldr r0, _022611C8 ; =gSystem
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	bne _02260F62
	mov r1, #0x80
	tst r0, r1
	beq _02260F82
_02260F62:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov45_0222ADC8
	add r0, r5, #0
	bl ov49_0225A0CC
	mov r0, #6
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	b _022611C0
_02260F82:
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_022611F4
	cmp r0, #1
	beq _02260F90
	b _022611C0
_02260F90:
	add r0, r5, #0
	bl ov49_0225A0CC
	ldr r0, [sp, #4]
	bl ov45_0222AE44
	mov r0, #0
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov49_02259FE8
	mov r1, #0xa
	bl ov45_0222A5E8
	add r0, r5, #0
	bl ov49_0225A044
	ldr r0, [sp, #0xc]
	bl ov49_0225CC44
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov49_02259130
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov49_0225916C
	ldr r0, _022611CC ; =0x000005C1
	bl PlaySE
	add r0, r5, #0
	bl ov49_0225A510
	mov r0, #3
	strb r0, [r4, #0xa]
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	b _022611C0
_02260FE2:
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_02261234
	cmp r0, #1
	bne _022610A4
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov49_0225916C
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov49_02259160
	ldr r0, [r4, #0xc]
	mov r1, #8
	bl ov49_022591B4
	add r0, r6, #0
	mov r1, #4
	bl ov49_0225EF8C
	mov r0, #0
	strh r0, [r4, #8]
	b _022611C0
_02261016:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261434
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov49_022611D4
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_022613AC
	cmp r0, #1
	bne _022610A4
	add r0, r6, #0
	mov r1, #5
	bl ov49_0225EF8C
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A53C
	b _022611C0
_02261046:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261434
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov49_022611D4
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	bl ov49_02259154
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261460
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _022610A4
	mov r0, #0
	strb r0, [r4, #0xb]
	add r0, r6, #0
	mov r1, #0xd
	bl ov49_0225EF8C
	b _022611C0
_02261082:
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	mov r2, #2
	mov r3, #1
	bl ov49_02258EAC
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _022611C0
_02261098:
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	beq _022610A6
_022610A4:
	b _022611C0
_022610A6:
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _022611C0
_022610B0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1e
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	b _022611C0
_022610D0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x20
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	b _022611C0
_022610F0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x21
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	b _022611C0
_02261110:
	add r0, r5, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _022611C0
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _022611C0
_02261124:
	add r0, r5, #0
	bl ov49_0225A0EC
	ldrb r1, [r4, #0xa]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _022611C0
_02261134:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261434
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261460
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0x78
	bls _022611C0
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A034
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A038
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_02259FE8
	mov r1, #0xb
	bl ov45_0222A5E8
	add r0, r6, #0
	mov r1, #0xe
	bl ov49_0225EF8C
	b _022611C0
_02261180:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261434
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261460
	b _022611C0
_02261196:
	add r0, r5, #0
	bl ov49_0225A010
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225A0EC
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	mov r2, #1
	bl ov49_02258EEC
	add r0, r6, #0
	bl ov49_0225EF68
	ldr r1, [sp]
	ldr r2, _022611D0 ; =ov49_02269B38
	add r0, r7, #0
	mov r3, #0
	bl ov49_0225EF98
_022611C0:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022611C8: .word gSystem
_022611CC: .word 0x000005C1
_022611D0: .word ov49_02269B38
	thumb_func_end ov49_02260E2C

	thumb_func_start ov49_022611D4
ov49_022611D4: ; 0x022611D4
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	add r1, sp, #0
	bl ov49_02259154
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov49_0225CC20
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov49_022611D4

	thumb_func_start ov49_022611F4
ov49_022611F4: ; 0x022611F4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov45_0222AE08
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl ov49_0225E420
	ldr r0, [r5, #0xc]
	add r1, sp, #0x14
	bl ov49_02259154
	mov r0, #1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x10
	add r1, r1, r0
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0226122E
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226122E:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_022611F4

	thumb_func_start ov49_02261234
ov49_02261234: ; 0x02261234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #8
	add r6, r1, #0
	ldrsh r1, [r5, r0]
	add r7, r2, #0
	add r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0x18
	bge _02261250
	mov r4, #0
	b _02261256
_02261250:
	mov r0, #0x18
	strh r0, [r5, #8]
	mov r4, #1
_02261256:
	ldr r0, [r5]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov45_0222AE08
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r3, sp, #0x1c
	bl ov49_0225E420
	ldr r0, [r5, #0xc]
	bl ov49_02258E34
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, sp, #4
	strh r2, [r1, #4]
	ldrh r2, [r1, #2]
	strh r2, [r1, #6]
	add r1, sp, #0x28
	bl ov49_02258800
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	sub r6, r1, r0
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _022612AE
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022612BC
_022612AE:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022612BC:
	bl _ffix
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #6
	lsl r1, r1, #0xe
	bl FX_Div
	str r0, [sp, #0x14]
	mov r0, #8
	ldrsh r2, [r5, r0]
	cmp r2, #4
	blt _02261342
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x30]
	sub r6, r1, r0
	sub r0, r2, #4
	cmp r0, #0
	ble _0226130A
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02261318
_0226130A:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02261318:
	bl _ffix
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #5
	lsl r1, r1, #0xe
	bl FX_Div
	str r0, [sp, #0x18]
	b _02261346
_02261342:
	mov r0, #0
	str r0, [sp, #0x18]
_02261346:
	add r0, sp, #0x10
	add r1, sp, #0x28
	add r2, r0, #0
	bl VEC_Add
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	bl ov49_0225CC20
	mov r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, _022613A4 ; =0x00007FFF
	mul r0, r1
	mov r1, #0x18
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _022613A8 ; =FX_SinCosTable_
	ldr r1, [sp, #0x14]
	ldrsh r3, [r0, r2]
	asr r0, r3, #0x1f
	lsr r2, r3, #0x10
	lsl r0, r0, #0x10
	orr r0, r2
	mov r2, #2
	lsl r6, r3, #0x10
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r6, r2
	adc r0, r3
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	add r0, r1, r2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x10
	bl ov49_02259148
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022613A4: .word 0x00007FFF
_022613A8: .word FX_SinCosTable_
	thumb_func_end ov49_02261234

	thumb_func_start ov49_022613AC
ov49_022613AC: ; 0x022613AC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #8
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0x10
	bge _022613C4
	mov r6, #0
	b _022613CA
_022613C4:
	mov r0, #0x10
	strh r0, [r5, #8]
	mov r6, #1
_022613CA:
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r3, #0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r1, r2, r1
	ldr r0, _0226142C ; =0x00007FFF
	add r2, r1, #0
	mul r2, r0
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r0, r0, #0xd
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02261430 ; =FX_SinCosTable_
	mov r2, #3
	ldrsh r0, [r0, r1]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	bl ov49_02259154
	ldr r0, [sp, #4]
	add r1, sp, #0
	add r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl ov49_02259148
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226142C: .word 0x00007FFF
_02261430: .word FX_SinCosTable_
	thumb_func_end ov49_022613AC

	thumb_func_start ov49_02261434
ov49_02261434: ; 0x02261434
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r1, sp, #0
	add r2, sp, #4
	bl ov45_0222AE08
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r3, sp, #8
	bl ov49_0225E420
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	bl ov49_02259148
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov49_02261434

	thumb_func_start ov49_02261460
ov49_02261460: ; 0x02261460
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov45_0222AE08
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov49_0225A520
	cmp r0, #1
	bne _02261494
	add r0, r5, #0
	add r0, #0x10
	bl ov49_0225F438
	cmp r0, #0
	bne _022614A8
	add r0, r5, #0
	add r0, #0x10
	bl ov49_0225F374
	b _022614A8
_02261494:
	add r0, r5, #0
	add r0, #0x10
	bl ov49_0225F438
	cmp r0, #1
	bne _022614A8
	add r0, r5, #0
	add r0, #0x10
	bl ov49_0225F430
_022614A8:
	add r0, r5, #0
	add r0, #0x10
	bl ov49_0225F394
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	bl ov49_02259154
	ldr r0, [sp, #0xc]
	add r1, sp, #8
	add r0, r0, r4
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	bl ov49_02259148
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov49_02261460

	thumb_func_start ov49_022614CC
ov49_022614CC: ; 0x022614CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x12
	bl ov49_0225A10C
	mov r4, #1
	mov r6, #0
	add r7, r4, #0
_022614E0:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov49_0225A40C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #6
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, #0x12
	blt _022614E0
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A144
	ldr r2, [sp]
	ldr r3, _0226153C ; =ov49_02269C00
	add r2, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl ov49_0225A154
	ldr r1, [sp]
	str r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226153C: .word ov49_02269C00
	thumb_func_end ov49_022614CC

	thumb_func_start ov49_02261540
ov49_02261540: ; 0x02261540
	ldr r3, _02261548 ; =ov49_0225A134
	add r0, r1, #0
	bx r3
	nop
_02261548: .word ov49_0225A134
	thumb_func_end ov49_02261540

	thumb_func_start ov49_0226154C
ov49_0226154C: ; 0x0226154C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov49_02259FE8
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov49_02259FF0
	add r1, r4, #0
	str r0, [sp, #0xc]
	bl ov49_02258D70
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225EF84
	str r0, [sp, #0x10]
	add r0, r6, #0
	bl ov49_0225A010
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #5
	bhi _02261606
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261594: ; jump table
	.short _022615A0 - _02261594 - 2 ; case 0
	.short _022615B0 - _02261594 - 2 ; case 1
	.short _022615D4 - _02261594 - 2 ; case 2
	.short _02261618 - _02261594 - 2 ; case 3
	.short _022616CA - _02261594 - 2 ; case 4
	.short _022616DC - _02261594 - 2 ; case 5
_022615A0:
	add r0, r5, #0
	mov r1, #8
	bl ov49_0225EF40
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
_022615B0:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov45_0222A230
	add r6, r0, #0
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov45_0222A550
	cmp r6, #1
	beq _022615CA
	cmp r0, #1
	bne _02261606
_022615CA:
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02261710
_022615D4:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov45_0222A578
	add r6, r0, #0
	bne _022615EA
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02261710
_022615EA:
	bl ov45_0222AADC
	cmp r0, #1
	bne _02261606
	add r0, r6, #0
	bl ov45_0222AA5C
	add r2, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl ov49_02258CB8
	cmp r0, #0
	bne _02261608
_02261606:
	b _02261710
_02261608:
	mov r1, #0
	bl ov49_022591C0
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _02261710
_02261618:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov45_0222A578
	cmp r0, #0
	bne _02261638
	cmp r7, #0
	beq _0226162E
	add r0, r7, #0
	bl ov49_02258D54
_0226162E:
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02261710
_02261638:
	bl ov45_0222A920
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	add r2, r6, #0
	add r3, r7, #0
	bl ov49_02261DBC
	cmp r0, #0
	beq _02261696
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A06C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A04C
	add r0, r7, #0
	mov r1, #0
	bl ov49_02259130
	ldr r0, [sp, #0x14]
	ldr r2, _02261718 ; =ov49_02269B58
	ldr r3, [sp, #0x10]
	add r1, r4, #0
	bl ov49_0225EFC4
	b _02261710
_02261696:
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #4
	bl ov49_02258EEC
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225EF8C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A04C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A06C
	add r0, r7, #0
	mov r1, #1
	bl ov49_022591C0
	b _02261710
_022616CA:
	add r0, r7, #0
	bl ov49_02258F38
	cmp r0, #1
	bne _02261710
	add r0, r5, #0
	bl ov49_0225EF90
	b _02261710
_022616DC:
	add r0, r5, #0
	bl ov49_0225EF68
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	mov r2, #2
	bl ov49_02258EEC
	ldr r0, [sp, #0x14]
	ldr r2, _0226171C ; =ov49_02269B40
	add r1, r4, #0
	mov r3, #0
	bl ov49_0225EF98
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov49_0225A04C
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov49_0225A06C
_02261710:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261718: .word ov49_02269B58
_0226171C: .word ov49_02269B40
	thumb_func_end ov49_0226154C

	thumb_func_start ov49_02261720
ov49_02261720: ; 0x02261720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r4, r2, #0
	bl ov49_02259FE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_02259FF0
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov49_0225A010
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	bl ov49_02258D70
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	bl ov49_02258DAC
	ldr r0, [sp, #8]
	bl ov49_0225EF84
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl ov49_0225EF88
	cmp r0, #0
	beq _0226176A
	cmp r0, #1
	beq _0226177C
	b _022618AA
_0226176A:
	ldr r0, [sp, #8]
	mov r1, #8
	bl ov49_0225EF40
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	mov r1, #1
	bl ov49_0225EF8C
_0226177C:
	add r0, r6, #0
	add r1, r4, #0
	bl ov45_0222A25C
	cmp r0, #0
	beq _022617BE
	ldr r0, [sp, #8]
	bl ov49_0225EF68
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A06C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A04C
	ldr r0, [sp, #0xc]
	ldr r2, _022618B0 ; =ov49_02269B48
	add r1, r4, #0
	mov r3, #0
	bl ov49_0225EF98
	b _022618AA
_022617BE:
	add r0, r6, #0
	add r1, r4, #0
	bl ov45_0222A2A0
	add r0, r6, #0
	bl ov45_0222A374
	cmp r0, #1
	bne _0226181E
	add r0, r6, #0
	add r1, r4, #0
	bl ov45_0222ADA8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0226181E
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A06C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A04C
	add r0, r7, #0
	mov r1, #0
	bl ov49_02259130
	ldr r0, [sp, #8]
	bl ov49_0225EF68
	ldr r0, [sp, #0xc]
	ldr r2, _022618B4 ; =ov49_02269B50
	ldr r3, [sp, #0x14]
	add r1, r4, #0
	bl ov49_0225EF98
	b _022618AA
_0226181E:
	add r0, r6, #0
	add r1, r4, #0
	bl ov45_0222A578
	bl ov45_0222A920
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	add r2, r5, #0
	add r3, r7, #0
	bl ov49_02261DBC
	cmp r0, #0
	beq _0226187C
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A06C
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A04C
	add r0, r7, #0
	mov r1, #0
	bl ov49_02259130
	ldr r0, [sp, #0xc]
	ldr r2, _022618B8 ; =ov49_02269B58
	ldr r3, [sp, #0x14]
	add r1, r4, #0
	bl ov49_0225EFC4
	b _022618AA
_0226187C:
	add r0, r6, #0
	add r1, r4, #0
	bl ov45_0222AD58
	cmp r0, #1
	bne _022618AA
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A04C
	ldr r0, [sp, #0xc]
	ldr r2, _022618BC ; =ov49_02269B80
	add r1, r4, #0
	mov r3, #0
	bl ov49_0225EFC4
_022618AA:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022618B0: .word ov49_02269B48
_022618B4: .word ov49_02269B50
_022618B8: .word ov49_02269B58
_022618BC: .word ov49_02269B80
	thumb_func_end ov49_02261720

	thumb_func_start ov49_022618C0
ov49_022618C0: ; 0x022618C0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	str r2, [sp]
	add r0, r6, #0
	bl ov49_02259FF0
	ldr r1, [sp]
	add r7, r0, #0
	bl ov49_02258D70
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _022618EC
	cmp r0, #1
	beq _022618FE
	cmp r0, #2
	beq _02261910
	b _02261926
_022618EC:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #3
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225EF90
	b _02261926
_022618FE:
	add r0, r4, #0
	bl ov49_02258F38
	cmp r0, #0
	beq _02261926
	add r0, r5, #0
	bl ov49_0225EF90
	b _02261926
_02261910:
	add r0, r4, #0
	bl ov49_02258D54
	add r0, r6, #0
	bl ov49_0225A010
	ldr r1, [sp]
	ldr r2, _0226192C ; =ov49_02269B78
	mov r3, #0
	bl ov49_0225EF98
_02261926:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226192C: .word ov49_02269B78
	thumb_func_end ov49_022618C0

	thumb_func_start ov49_02261930
ov49_02261930: ; 0x02261930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	bl ov49_02259FE8
	str r0, [sp]
	add r0, r6, #0
	bl ov49_02259FF0
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov49_02259FF8
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #4
	bhi _022619CE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261970: ; jump table
	.short _0226197A - _02261970 - 2 ; case 0
	.short _022619C4 - _02261970 - 2 ; case 1
	.short _02261A2A - _02261970 - 2 ; case 2
	.short _02261AD8 - _02261970 - 2 ; case 3
	.short _02261B48 - _02261970 - 2 ; case 4
_0226197A:
	add r0, r5, #0
	mov r1, #0x20
	bl ov49_0225EF40
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov49_02258D70
	str r0, [r4]
	ldr r0, [sp]
	add r1, r7, #0
	bl ov45_0222ADA8
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #4]
	cmp r0, r1
	bne _022619A4
	bl GF_AssertFail
_022619A4:
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r1, r4, #4
	add r2, #8
	bl ov45_0222AE08
	ldr r0, [sp, #8]
	ldr r1, [r4]
	mov r2, #3
	bl ov49_02258EEC
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _02261B64
_022619C4:
	ldr r0, [r4]
	bl ov49_02258F38
	cmp r0, #0
	bne _022619D0
_022619CE:
	b _02261B64
_022619D0:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x34
	bl ov49_0225E420
	mov r0, #1
	ldr r1, [sp, #0x34]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4]
	add r1, sp, #0x34
	bl ov49_02259154
	ldr r0, [sp, #0x38]
	mov r3, sp
	str r0, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x14]
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	add r1, sp, #0xc
	ldrh r2, [r1]
	ldr r0, [r4]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov49_02258DB4
	ldr r0, _02261B6C ; =0x0000064E
	bl PlaySE
	ldr r0, [r4]
	mov r1, #1
	bl ov49_02259184
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02261B64
_02261A2A:
	ldr r0, [r4, #0x14]
	mov r6, #0
	add r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x18
	blt _02261A3C
	mov r0, #0x18
	str r0, [r4, #0x14]
	mov r6, #1
_02261A3C:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x28
	bl ov49_0225E420
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	sub r7, r1, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _02261A6E
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02261A7C
_02261A6E:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02261A7C:
	bl _ffix
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #6
	lsl r1, r1, #0xe
	bl FX_Div
	str r0, [sp, #0x20]
	ldr r1, [r4, #0xc]
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4]
	add r1, sp, #0x1c
	bl ov49_02259148
	cmp r6, #1
	bne _02261B64
	ldr r0, [r4]
	mov r1, #0
	bl ov49_02259184
	ldr r0, [r4]
	mov r1, #8
	bl ov49_022591B4
	ldr r0, [r4]
	mov r1, #2
	bl ov49_02259160
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _02261B64
_02261AD8:
	ldr r1, [r4, #4]
	add r0, r6, #0
	bl ov49_0225A520
	cmp r0, #1
	bne _02261AFA
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F438
	cmp r0, #0
	bne _02261B0E
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F374
	b _02261B0E
_02261AFA:
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F438
	cmp r0, #1
	bne _02261B0E
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F430
_02261B0E:
	add r0, r4, #0
	add r0, #0x18
	bl ov49_0225F394
	add r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x10
	bl ov49_0225E420
	ldr r0, [sp, #0x14]
	add r1, sp, #0x10
	add r0, r0, r6
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl ov49_02259148
	ldr r0, [sp]
	ldr r1, [r4, #4]
	bl ov45_0222AD80
	cmp r0, #2
	bne _02261B64
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225EF8C
	b _02261B64
_02261B48:
	ldr r0, [r4]
	bl ov49_02258D54
	add r0, r5, #0
	bl ov49_0225EF68
	add r0, r6, #0
	bl ov49_0225A010
	ldr r2, _02261B70 ; =ov49_02269B78
	add r1, r7, #0
	mov r3, #0
	bl ov49_0225EF98
_02261B64:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02261B6C: .word 0x0000064E
_02261B70: .word ov49_02269B78
	thumb_func_end ov49_02261930

	thumb_func_start ov49_02261B74
ov49_02261B74: ; 0x02261B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp]
	add r7, r0, #0
	add r4, r2, #0
	bl ov49_0225EF3C
	add r6, r0, #0
	ldr r0, [sp]
	bl ov49_02259FE8
	str r0, [sp, #8]
	ldr r0, [sp]
	bl ov49_02259FF0
	str r0, [sp, #0xc]
	add r1, r4, #0
	bl ov49_02258D70
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	bl ov49_02258DAC
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ov49_0225EF88
	cmp r0, #0xa
	bhi _02261C58
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261BBA: ; jump table
	.short _02261BD0 - _02261BBA - 2 ; case 0
	.short _02261BE8 - _02261BBA - 2 ; case 1
	.short _02261BFA - _02261BBA - 2 ; case 2
	.short _02261C0C - _02261BBA - 2 ; case 3
	.short _02261C4E - _02261BBA - 2 ; case 4
	.short _02261C84 - _02261BBA - 2 ; case 5
	.short _02261D2E - _02261BBA - 2 ; case 6
	.short _02261BFA - _02261BBA - 2 ; case 7
	.short _02261D40 - _02261BBA - 2 ; case 8
	.short _02261BFA - _02261BBA - 2 ; case 9
	.short _02261D8E - _02261BBA - 2 ; case 10
_02261BD0:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _02261BDE
	add r0, r7, #0
	bl ov49_0225EF90
	b _02261DB6
_02261BDE:
	add r0, r7, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _02261DB6
_02261BE8:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #3
	bl ov49_02258EEC
	add r0, r7, #0
	bl ov49_0225EF90
	b _02261DB6
_02261BFA:
	add r0, r5, #0
	bl ov49_02258F38
	cmp r0, #1
	bne _02261C58
	add r0, r7, #0
	bl ov49_0225EF90
	b _02261DB6
_02261C0C:
	add r0, r5, #0
	bl ov49_02258E34
	add r2, sp, #0x14
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	add r1, sp, #0x1c
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	add r0, r5, #0
	bl ov49_0225913C
	add r0, r5, #0
	bl ov49_022591CC
	cmp r0, #0
	bne _02261C3C
	add r0, r5, #0
	mov r1, #1
	bl ov49_022591C0
_02261C3C:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #4
	bl ov49_02258EEC
	add r0, r7, #0
	bl ov49_0225EF90
	b _02261DB6
_02261C4E:
	add r0, r5, #0
	bl ov49_02258F38
	cmp r0, #1
	beq _02261C5A
_02261C58:
	b _02261DB6
_02261C5A:
	add r0, r7, #0
	bl ov49_0225EF90
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #0
	bl ov49_02258EEC
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov49_0225A04C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov49_0225A06C
	b _02261DB6
_02261C84:
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _02261CC4
	ldr r0, [sp, #8]
	bl ov45_0222B0B0
	cmp r0, #0
	bne _02261CC4
	ldr r0, [sp, #8]
	bl ov45_0222A5C0
	bl ov45_0222A920
	cmp r0, #9
	bne _02261CC4
	ldr r0, [sp, #8]
	bl ov45_0222B0A4
	add r0, r5, #0
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ov49_02258EAC
_02261CC4:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov45_0222A578
	add r5, r0, #0
	bne _02261CD6
	mov r0, #1
	str r0, [sp, #4]
	b _02261D08
_02261CD6:
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _02261CEC
	ldr r0, [sp, #8]
	bl ov45_0222AFF8
	cmp r0, #0
	bne _02261CEC
	mov r0, #1
	str r0, [sp, #4]
	b _02261D08
_02261CEC:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl ov45_0222A2A0
	cmp r0, #0
	beq _02261D08
	add r0, r5, #0
	bl ov45_0222A920
	ldrb r1, [r6, #2]
	cmp r0, r1
	beq _02261D08
	mov r0, #1
	str r0, [sp, #4]
_02261D08:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02261DB6
	add r0, r7, #0
	bl ov49_0225EF90
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A04C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov49_0225A06C
	b _02261DB6
_02261D2E:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #3
	bl ov49_02258EEC
	add r0, r7, #0
	bl ov49_0225EF90
	b _02261DB6
_02261D40:
	ldr r0, [sp, #0xc]
	bl ov49_02258DAC
	ldrb r1, [r6]
	ldrb r2, [r6, #1]
	bl ov49_02258FDC
	cmp r0, #0
	bne _02261DB6
	ldrb r0, [r6]
	mov r3, sp
	add r1, sp, #0x14
	lsl r0, r0, #4
	strh r0, [r1, #4]
	ldrb r0, [r6, #1]
	sub r3, r3, #4
	lsl r0, r0, #4
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov49_02258DB4
	add r0, r5, #0
	add r1, sp, #0x18
	bl ov49_0225913C
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #4
	bl ov49_02258EEC
	add r0, r7, #0
	bl ov49_0225EF90
	b _02261DB6
_02261D8E:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	mov r2, #2
	bl ov49_02258EEC
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov49_0225A04C
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov49_0225A06C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02261DB6:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02261B74

	thumb_func_start ov49_02261DBC
ov49_02261DBC: ; 0x02261DBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r2, #0
	add r4, r0, #0
	add r0, r6, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r7, #0
	bl ov49_02259FF0
	add r5, r0, #0
	bl ov49_02258DAC
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov49_0225A000
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #4
	bl ov49_02258E60
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x20]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	cmp r0, #0xe
	bls _02261DF8
	b _02261F42
_02261DF8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261E04: ; jump table
	.short _02261F42 - _02261E04 - 2 ; case 0
	.short _02261F42 - _02261E04 - 2 ; case 1
	.short _02261E22 - _02261E04 - 2 ; case 2
	.short _02261E3E - _02261E04 - 2 ; case 3
	.short _02261E58 - _02261E04 - 2 ; case 4
	.short _02261E72 - _02261E04 - 2 ; case 5
	.short _02261E90 - _02261E04 - 2 ; case 6
	.short _02261EAE - _02261E04 - 2 ; case 7
	.short _02261ECC - _02261E04 - 2 ; case 8
	.short _02261EF0 - _02261E04 - 2 ; case 9
	.short _02261EEA - _02261E04 - 2 ; case 10
	.short _02261F42 - _02261E04 - 2 ; case 11
	.short _02261F42 - _02261E04 - 2 ; case 12
	.short _02261F42 - _02261E04 - 2 ; case 13
	.short _02261F42 - _02261E04 - 2 ; case 14
_02261E22:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FA4 ; =ov49_02269B90
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	beq _02261E38
	b _02261F48
_02261E38:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261E3E:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FA8 ; =ov49_02269BC0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261E58:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FAC ; =ov49_02269BA0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261E72:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FB0 ; =ov49_02269C20
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #8
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261E90:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FB4 ; =ov49_02269C40
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #8
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261EAE:
	mov r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FB8 ; =ov49_02269BB0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261ECC:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FBC ; =ov49_02269BD0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261EEA:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261EF0:
	ldr r0, [sp, #4]
	bl ov45_0222AFF8
	cmp r0, #0
	bne _02261F00
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261F00:
	ldr r0, [sp, #4]
	bl ov45_0222B00C
	cmp r0, #0
	bne _02261F10
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261F10:
	ldr r0, [sp, #4]
	bl ov45_0222B020
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _02261F22
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261F22:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov49_0225904C
	cmp r0, #1
	beq _02261F36
	bl GF_AssertFail
_02261F36:
	ldr r0, [sp, #0x20]
	bl ov42_022282A4
	str r0, [sp, #0x20]
	mov r7, #1
	b _02261F48
_02261F42:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02261F48:
	ldr r0, [sp, #8]
	bl ov49_02258E34
	add r1, sp, #0x14
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	ldr r0, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #0xa]
	strh r1, [r3, #2]
	ldr r1, [r3]
	ldr r2, [sp, #0x20]
	bl ov49_02258E04
	add r1, sp, #0x14
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strb r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strb r0, [r4, #1]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	strb r0, [r4, #2]
	ldr r0, [sp, #0x3c]
	strb r7, [r4, #3]
	strb r0, [r4, #4]
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02261FA4: .word ov49_02269B90
_02261FA8: .word ov49_02269BC0
_02261FAC: .word ov49_02269BA0
_02261FB0: .word ov49_02269C20
_02261FB4: .word ov49_02269C40
_02261FB8: .word ov49_02269BB0
_02261FBC: .word ov49_02269BD0
	thumb_func_end ov49_02261DBC


    .rodata

ov49_02269B38: ; 0x02269B38
	.word ov49_0225FDCC
	.word ov49_02260230

ov49_02269B40: ; 0x02269B40
	.word ov49_02261720, 0

ov49_02269B48: ; 0x02269B48
	.word ov49_022618C0, 0

ov49_02269B50: ; 0x02269B50
	.word ov49_02261930, 0

ov49_02269B58: ; 0x02269B58
	.word ov49_02261B74, 0

ov49_02269B60: ; 0x02269B60
	.word ov49_02262FB4, 0

ov49_02269B68: ; 0x02269B68
	.word ov49_02262AC4, 0

ov49_02269B70: ; 0x02269B70
	.word ov49_02263B74, 0

ov49_02269B78: ; 0x02269B78
	.word ov49_0226154C, 0

ov49_02269B80: ; 0x02269B80
	.word ov49_0225F448, 0

ov49_02269B88: ; 0x02269B88
	.word ov49_02262028, 0

ov49_02269B90: ; 0x02269B90
	.byte 0x4F, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00

ov49_02269BA0: ; 0x02269BA0
	.byte 0x57, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00

ov49_02269BB0: ; 0x02269BB0
	.byte 0x32, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00

ov49_02269BC0: ; 0x02269BC0
	.byte 0x53, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x55, 0x00, 0x00, 0x00, 0x56, 0x00, 0x00, 0x00

ov49_02269BD0: ; 0x02269BD0
	.byte 0x36, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00

ov49_02269BE0: ; 0x02269BE0
	.word ov49_0225F518, 0
	.word ov49_0225FA14, 0
	.word ov49_0225FB5C, 0
	.word ov49_0225FCA8, 0

ov49_02269C00: ; 0x02269C00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x12, 0x00, 0x07, 0x00, 0x00, 0x08, 0x00, 0x10, 0x2F, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00

ov49_02269C20: ; 0x02269C20
	.byte 0x22, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00
	.byte 0x26, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00

ov49_02269C40: ; 0x02269C40
	.byte 0x2A, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00
	.byte 0x2E, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00

ov49_02269C60: ; 0x02269C60
	.byte 0x27, 0x28, 0x29, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.word ov49_02262B14
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.word 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov49_02269C90: ; 0x02269C90
	.byte 0x24, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.word ov49_02260D90
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x25, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.word ov49_022644E8
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x26, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.word ov49_022649F4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x27, 0x28, 0x29, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.word ov49_02262B14
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2B, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.word ov49_02268DCC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.word 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov49_02269D20: ; 0x02269D20
	.byte 0x01, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov49_02260254
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x17, 0x18, 0x19, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov49_02260428
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1A, 0x1B, 0x1C, 0x1D, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov49_02260428
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x00, 0x00, 0x00, 0x00
	.word ov49_02260428
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x00, 0x00, 0x00, 0x00
	.word ov49_02260428
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x21, 0x22, 0x23, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov49_02260E2C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1E, 0x1F, 0x20, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov49_022607C4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2C, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov49_02260A68
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.word 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

