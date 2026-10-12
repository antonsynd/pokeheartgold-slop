	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A48C
	.extern ov59_02238834
	.extern ov59_02238A04
	.extern ov59_0223A564

	.text

	.text
	thumb_func_start ov59_0223A48C
ov59_0223A48C: ; 0x0223A48C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _0223A4A8
	ldr r0, _0223A560 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov59_02238834
	mov r0, #0
	pop {r4, pc}
_0223A4A8:
	cmp r1, #1
	bne _0223A4C0
	ldr r0, _0223A560 ; =0x000005DC
	bl PlaySE
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov59_02238834
	mov r0, #1
	pop {r4, pc}
_0223A4C0:
	cmp r1, #5
	bhi _0223A548
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223A4D0: ; jump table
	.short _0223A548 - _0223A4D0 - 2 ; case 0
	.short _0223A548 - _0223A4D0 - 2 ; case 1
	.short _0223A4DC - _0223A4D0 - 2 ; case 2
	.short _0223A510 - _0223A4D0 - 2 ; case 3
	.short _0223A4F6 - _0223A4D0 - 2 ; case 4
	.short _0223A52C - _0223A4D0 - 2 ; case 5
_0223A4DC:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x4e
	add r1, #0x4f
	ldrb r0, [r0]
	ldrb r1, [r1]
	mov r2, #1
	bl ov59_0223A564
	add r1, r4, #0
	add r1, #0x4e
	strb r0, [r1]
	b _0223A54C
_0223A4F6:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x4e
	add r1, #0x4f
	ldrb r0, [r0]
	ldrb r1, [r1]
	mov r2, #0xa
	bl ov59_0223A564
	add r1, r4, #0
	add r1, #0x4e
	strb r0, [r1]
	b _0223A54C
_0223A510:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x4e
	add r1, #0x4f
	mov r2, #0
	ldrb r0, [r0]
	ldrb r1, [r1]
	mvn r2, r2
	bl ov59_0223A564
	add r1, r4, #0
	add r1, #0x4e
	strb r0, [r1]
	b _0223A54C
_0223A52C:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x4e
	add r1, #0x4f
	mov r2, #9
	ldrb r0, [r0]
	ldrb r1, [r1]
	mvn r2, r2
	bl ov59_0223A564
	add r1, r4, #0
	add r1, #0x4e
	strb r0, [r1]
	b _0223A54C
_0223A548:
	mov r0, #6
	pop {r4, pc}
_0223A54C:
	ldr r0, _0223A560 ; =0x000005DC
	bl PlaySE
	add r0, r4, #0
	add r4, #0x4e
	ldrb r1, [r4]
	bl ov59_02238A04
	mov r0, #6
	pop {r4, pc}
	.balign 4, 0
_0223A560: .word 0x000005DC
	thumb_func_end ov59_0223A48C

