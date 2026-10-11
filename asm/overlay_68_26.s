	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E6820
	.extern ov68_021E6678
	.extern ov68_021E67E0

	.text

	.text
	thumb_func_start ov68_021E6820
ov68_021E6820: ; 0x021E6820
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov68_021E6678
	mov r1, #0x6e
	lsl r1, r1, #2
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	mov r1, #0x42
	bl ListMenuItems_New
	mov r1, #0x11
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r2, _021E68B8 ; =0x000002EE
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x42
	bl NewMsgDataFromNarc
	add r7, r0, #0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bls _021E689A
	add r6, r4, #0
_021E6858:
	ldr r0, [r5]
	ldr r0, [r0, #0x10]
	ldrh r2, [r0, r6]
	ldr r0, _021E68BC ; =0x0000FFFF
	cmp r2, r0
	beq _021E6874
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r7, #0
	add r3, r2, #0
	bl ListMenuItems_AppendFromMsgData
	b _021E688C
_021E6874:
	mov r0, #0x11
	add r1, r5, #0
	lsl r0, r0, #4
	add r1, #0xf8
	mov r2, #0x20
	add r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r1]
	sub r3, #0x22
	bl ListMenuItems_AppendFromMsgData
	b _021E689A
_021E688C:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, r0
	blo _021E6858
_021E689A:
	add r0, r7, #0
	bl DestroyMsgData
	ldr r0, _021E68C0 ; =0x000001BB
	mov r1, #0
	strb r1, [r5, r0]
	ldr r1, [r5]
	add r0, r0, #1
	ldrh r1, [r1, #0x14]
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov68_021E67E0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E68B8: .word 0x000002EE
_021E68BC: .word 0x0000FFFF
_021E68C0: .word 0x000001BB
	thumb_func_end ov68_021E6820

