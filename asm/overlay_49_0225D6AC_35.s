	.include "asm/macros.inc"
	.include "overlay_49_0225D6AC.inc"
	.include "global.inc"
	.public ov49_0225E760
	.extern ov49_0225EA10
	.extern ov49_0225EA40

    .text

	.text
	thumb_func_start ov49_0225E760
ov49_0225E760: ; 0x0225E760
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0225E818 ; =0x00000612
	add r7, r1, #0
	ldrb r0, [r4, r0]
	mov r6, #0
	cmp r0, #0
	ble _0225E816
	add r5, r4, #0
_0225E772:
	ldr r0, [r5, #8]
	bl ov49_0225D1C0
	cmp r0, #0xb
	beq _0225E780
	cmp r0, #0xc
	bne _0225E80A
_0225E780:
	cmp r7, #3
	bhi _0225E80A
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225E790: ; jump table
	.short _0225E798 - _0225E790 - 2 ; case 0
	.short _0225E7AE - _0225E790 - 2 ; case 1
	.short _0225E7C8 - _0225E790 - 2 ; case 2
	.short _0225E7EC - _0225E790 - 2 ; case 3
_0225E798:
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #0
	mov r3, #2
	bl ov49_0225D214
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0225E80A
_0225E7AE:
	ldr r0, _0225E81C ; =ov49_0225EA10
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r3, #1
	bl ov49_0225D224
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0225E80A
_0225E7C8:
	ldr r0, _0225E820 ; =ov49_0225EA40
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r3, #4
	bl ov49_0225D224
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #1
	bl ov49_0225D328
	mov r0, #0x91
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0225E80A
_0225E7EC:
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #1
	mov r3, #0
	bl ov49_0225D214
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	mov r2, #0
	bl ov49_0225D328
	mov r0, #0x91
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0225E80A:
	ldr r0, _0225E818 ; =0x00000612
	add r6, r6, #1
	ldrb r0, [r4, r0]
	add r5, r5, #4
	cmp r6, r0
	blt _0225E772
_0225E816:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E818: .word 0x00000612
_0225E81C: .word ov49_0225EA10
_0225E820: .word ov49_0225EA40
	thumb_func_end ov49_0225E760

