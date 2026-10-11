	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E60A4
	.extern ov95_021E75DC
	.extern ov95_021E762C
	.extern ov95_021E76D0
	.extern ov95_021E7770

	.text

	.text
	thumb_func_start ov95_021E60A4
ov95_021E60A4: ; 0x021E60A4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r0, [sp]
	add r0, #0x80
	add r3, r1, #0
	ldr r1, [r0]
	add r4, #0x80
	cmp r1, #0
	bne _021E6132
	ldr r0, [r4, #4]
	cmp r0, #0xa
	blt _021E60C6
	add r0, r1, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	b _021E6132
_021E60C6:
	mov r1, #0x14
	add r7, r3, #0
	mul r7, r1
	ldr r1, _021E6140 ; =ov95_021E75DC
	ldr r2, _021E6144 ; =ov95_021E762C
	lsl r6, r0, #1
	add r1, r1, r7
	add r2, r2, r7
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	lsl r6, r0, #2
	mov r0, #0x28
	mul r0, r3
	ldr r3, _021E6148 ; =ov95_021E76D0
	mov r5, #0
	add r3, r3, r0
	ldr r7, [r6, r3]
	ldr r3, _021E614C ; =ov95_021E7770
	add r0, r3, r0
	ldr r6, [r6, r0]
	cmp r1, #0xff
	bne _021E60F6
	add r1, r5, #0
	add r5, r5, #1
_021E60F6:
	cmp r2, #0xff
	bne _021E60FE
	mov r2, #0
	add r5, r5, #1
_021E60FE:
	ldr r0, [sp]
	ldr r0, [r0, #0x74]
	bl ManagedSprite_OffsetPositionXY
	mov r0, #0
	add r1, r7, #0
	bl _fneq
	beq _021E611E
	ldr r0, [sp]
	add r1, r7, #0
	ldr r0, [r0, #0x74]
	add r2, r6, #0
	bl ManagedSprite_SetAffineScale
	b _021E6120
_021E611E:
	add r5, r5, #1
_021E6120:
	cmp r5, #3
	beq _021E612C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021E613A
_021E612C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E6132:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E613A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6140: .word ov95_021E75DC
_021E6144: .word ov95_021E762C
_021E6148: .word ov95_021E76D0
_021E614C: .word ov95_021E7770
	thumb_func_end ov95_021E60A4

