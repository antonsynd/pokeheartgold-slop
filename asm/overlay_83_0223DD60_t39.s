	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02240CFC
	.extern ov83_0223FCB4

    .text

	.text
	thumb_func_start ov83_02240CFC
ov83_02240CFC: ; 0x02240CFC
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
	bne _02240D22
	ldr r4, _02240D60 ; =0x00070800
	b _02240D26
_02240D22:
	mov r4, #0xc1
	lsl r4, r4, #0xa
_02240D26:
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
	bl ov83_0223FCB4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02240D60: .word 0x00070800
	thumb_func_end ov83_02240CFC

