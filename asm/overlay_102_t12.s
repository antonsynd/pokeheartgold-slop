	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E7AB8
	.public ov102_021E7B18
	.extern ov102_021E940C

	.text

	.text
	thumb_func_start ov102_021E7AB8
ov102_021E7AB8: ; 0x021E7AB8
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #3
	bhi _021E7B10
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7ACC: ; jump table
	.short _021E7AE8 - _021E7ACC - 2 ; case 0
	.short _021E7ADE - _021E7ACC - 2 ; case 1
	.short _021E7AD4 - _021E7ACC - 2 ; case 2
	.short _021E7B02 - _021E7ACC - 2 ; case 3
_021E7AD4:
	ldr r0, _021E7B14 ; =0x000005DC
	bl PlaySE
	mov r0, #2
	pop {r4, pc}
_021E7ADE:
	ldr r0, _021E7B14 ; =0x000005DC
	bl PlaySE
	mov r0, #1
	pop {r4, pc}
_021E7AE8:
	ldr r0, _021E7B14 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ov102_021E940C
	mov r0, #4
	pop {r4, pc}
_021E7B02:
	ldr r0, _021E7B14 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
_021E7B10:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021E7B14: .word 0x000005DC
	thumb_func_end ov102_021E7AB8

	thumb_func_start ov102_021E7B18
ov102_021E7B18: ; 0x021E7B18
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #0x30]
	mov r1, #2
	add r3, r2, #0
	tst r3, r1
	beq _021E7B3C
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov102_021E940C
	add r0, r4, #0
	mov r1, #2
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7B3C:
	mov r1, #1
	add r3, r2, #0
	tst r3, r1
	beq _021E7B4E
	add r4, #0x4c
	ldrh r1, [r4]
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7B4E:
	mov r3, #8
	tst r3, r2
	beq _021E7B60
	add r4, #0x4c
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7B60:
	mov r3, #0x80
	tst r3, r2
	beq _021E7B88
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #2
	bne _021E7B74
	mov r0, #0
	pop {r4, pc}
_021E7B74:
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r4, #0x4c
	add r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7B88:
	mov r3, #0x40
	tst r3, r2
	beq _021E7BB0
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	cmp r1, #0
	bne _021E7B9C
	mov r0, #0
	pop {r4, pc}
_021E7B9C:
	add r1, r4, #0
	add r1, #0x4c
	ldrh r1, [r1]
	add r4, #0x4c
	sub r1, r1, #1
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7BB0:
	ldr r3, [r4, #4]
	cmp r3, #0
	bne _021E7BBA
	mov r0, #0
	pop {r4, pc}
_021E7BBA:
	mov r3, #0x30
	tst r2, r3
	beq _021E7BD4
	add r2, r4, #0
	add r2, #0x4e
	ldrh r2, [r2]
	add r4, #0x4e
	eor r1, r2
	strh r1, [r4]
	mov r1, #3
	bl ov102_021E7AB8
	pop {r4, pc}
_021E7BD4:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov102_021E7B18

