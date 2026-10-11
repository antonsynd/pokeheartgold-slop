	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_0224484C
	.public ov83_02244B40
	.public ov83_02244BA8

    .text

	thumb_func_start ov83_02244B40
ov83_02244B40: ; 0x02244B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x18]
	add r6, r3, #0
	bl sub_0203769C
	mov r1, #1
	eor r0, r1
	bl sub_02034818
	str r0, [sp, #0x1c]
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	bne _02244B66
	ldr r4, _02244BA4 ; =0x00070800
	b _02244B6A
_02244B66:
	mov r4, #0xc1
	lsl r4, r4, #0xa
_02244B6A:
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	bl BufferPlayersName
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	lsr r0, r4, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsr r0, r4, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov83_0224484C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02244BA4: .word 0x00070800
	thumb_func_end ov83_02244B40

	thumb_func_start ov83_02244BA8
ov83_02244BA8: ; 0x02244BA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	cmp r3, #0
	bne _02244BC2
	mov r3, #0x40
	mov r4, #7
	mov r5, #8
	mov r6, #0
	b _02244BCE
_02244BC2:
	cmp r3, #1
	bne _02244BE8
	mov r3, #0x41
	mov r4, #3
	mov r5, #4
	mov r6, #0
_02244BCE:
	str r2, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	ldrb r2, [r2, #0x10]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r7, #0
	bl ov83_0224484C
_02244BE8:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov83_02244BA8

