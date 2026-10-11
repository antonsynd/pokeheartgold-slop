	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02242AEC
	.public ov83_02242BAC
	.public ov83_02242BF0
	.public ov83_02242CAC
	.public ov83_02242D5C
	.public ov83_02242DAC
	.public ov83_02242DFC
	.public ov83_02242E88
	.extern _02247D0C
	.extern ov83_0223FC48
	.extern ov83_02247D1E
	.extern ov83_02247D6C
	.extern ov83_02247EB0
	.extern ov83_02247F4C
	.extern ov83_02248008

    .text

	.text
	thumb_func_start ov83_02242AEC
ov83_02242AEC: ; 0x02242AEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	add r0, #2
	add r1, sp, #4
	add r6, r2, #0
	add r7, r3, #0
	bl ov83_02247988
	ldr r0, _02242B9C ; =_02247D0C
	add r1, sp, #4
	ldrh r2, [r0, #0x1e]
	add r3, sp, #8
	strh r2, [r1, #0x1c]
	ldrh r2, [r0, #0x20]
	strh r2, [r1, #0x1e]
	ldrh r2, [r0, #0x22]
	strh r2, [r1, #0x20]
	ldrh r2, [r0, #0x24]
	strh r2, [r1, #0x22]
	ldrh r2, [r0, #0x26]
	ldrh r0, [r0, #0x28]
	strh r2, [r1, #0x24]
	strh r0, [r1, #0x26]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0x22]
	ldrh r2, [r1]
	add r0, r0, r2
	sub r0, #0x1b
	strh r0, [r1, #0x24]
	strh r2, [r1, #0x26]
	ldrh r0, [r1, #0x1c]
	strh r0, [r1, #4]
	ldrh r0, [r1, #0x1e]
	strh r0, [r1, #6]
	ldrh r0, [r1, #0x20]
	strh r0, [r1, #8]
	ldrh r0, [r1, #0x22]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0x24]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0x26]
	strh r0, [r1, #0xe]
	ldr r0, _02242BA0 ; =0x00000844
	ldr r2, [r5, r0]
	sub r0, #8
	str r2, [sp, #0x14]
	ldr r2, [r5, #0x4c]
	str r2, [sp, #0x18]
	strb r4, [r1, #0x18]
	add r1, sp, #0x30
	ldrb r1, [r1, #0x10]
	add r2, r6, #0
	str r1, [sp]
	add r1, r3, #0
	ldr r0, [r5, r0]
	add r3, r7, #0
	bl ov83_02247CCC
	mov r1, #0x21
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldrb r1, [r5, #0xe]
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r4, r0, #0
	ldr r0, _02242BA4 ; =0x0000073C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	ldr r0, _02242BA8 ; =0x0000074C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #1
	bl ov83_0224773C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02242B9C: .word _02247D0C
_02242BA0: .word 0x00000844
_02242BA4: .word 0x0000073C
_02242BA8: .word 0x0000074C
	thumb_func_end ov83_02242AEC

	thumb_func_start ov83_02242BAC
ov83_02242BAC: ; 0x02242BAC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #3
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02242BE8 ; =0x00000844
	ldr r5, _02242BEC ; =ov83_02247D6C
	str r0, [r6, r1]
	mov r4, #0
	add r7, r1, #0
_02242BC2:
	ldr r0, [r6, r7]
	ldr r1, [r6, #0x20]
	ldr r2, [r5]
	ldr r3, [r5, #4]
	bl ListMenuItems_AppendFromMsgData
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blo _02242BC2
	mov r0, #0xd
	str r0, [sp]
	add r0, r6, #0
	mov r1, #3
	mov r2, #0x11
	mov r3, #8
	bl ov83_02242AEC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02242BE8: .word 0x00000844
_02242BEC: .word ov83_02247D6C
	thumb_func_end ov83_02242BAC

	thumb_func_start ov83_02242BF0
ov83_02242BF0: ; 0x02242BF0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02242C9C ; =0x00000844
	mov r2, #0
	str r0, [r4, r1]
	ldr r0, _02242CA0 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	bl ov83_0224777C
	mov r5, #0
	add r7, r0, #0
	add r6, r5, #0
_02242C12:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, _02242CA4 ; =ov83_02247F4C
	add r2, r0, r1
	ldr r3, [r2, #8]
	cmp r3, #4
	bhi _02242C6A
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02242C2E: ; jump table
	.short _02242C6A - _02242C2E - 2 ; case 0
	.short _02242C38 - _02242C2E - 2 ; case 1
	.short _02242C38 - _02242C2E - 2 ; case 2
	.short _02242C38 - _02242C2E - 2 ; case 3
	.short _02242C52 - _02242C2E - 2 ; case 4
_02242C38:
	ldr r0, [r2]
	cmp r7, r0
	blo _02242C7C
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02242C7C
_02242C52:
	cmp r7, #3
	beq _02242C7C
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	b _02242C7C
_02242C6A:
	ldr r0, _02242C9C ; =0x00000844
	ldr r1, [r4, #0x20]
	ldr r0, [r4, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02242C7C:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #5
	blo _02242C12
	ldr r3, _02242CA8 ; =ov83_02248008
	mov r0, #0xd
	ldrb r3, [r3, r5]
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x11
	bl ov83_02242AEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242C9C: .word 0x00000844
_02242CA0: .word 0x0000050C
_02242CA4: .word ov83_02247F4C
_02242CA8: .word ov83_02248008
	thumb_func_end ov83_02242BF0

	thumb_func_start ov83_02242CAC
ov83_02242CAC: ; 0x02242CAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x6b
	bl ListMenuItems_New
	ldr r1, _02242D4C ; =0x00000844
	mov r2, #1
	str r0, [r5, r1]
	ldr r0, _02242D50 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	bl ov83_0224777C
	mov r4, #0
	add r7, r0, #0
	add r6, r4, #0
_02242CCE:
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, _02242D54 ; =ov83_02247EB0
	add r2, r0, r1
	ldr r3, [r2, #8]
	cmp r3, #6
	beq _02242CE8
	cmp r3, #7
	beq _02242CE8
	cmp r3, #8
	beq _02242D02
	b _02242D1A
_02242CE8:
	ldr r0, [r2]
	cmp r7, r0
	blo _02242D2C
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _02242D2C
_02242D02:
	cmp r7, #3
	beq _02242D2C
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _02242D2C
_02242D1A:
	ldr r0, _02242D4C ; =0x00000844
	ldr r1, [r5, #0x20]
	ldr r0, [r5, r0]
	ldr r2, [r2, #4]
	bl ListMenuItems_AppendFromMsgData
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02242D2C:
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _02242CCE
	ldr r3, _02242D58 ; =ov83_02248008
	mov r0, #0xd
	ldrb r3, [r3, r4]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x11
	bl ov83_02242AEC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242D4C: .word 0x00000844
_02242D50: .word 0x0000050C
_02242D54: .word ov83_02247EB0
_02242D58: .word ov83_02248008
	thumb_func_end ov83_02242CAC

	thumb_func_start ov83_02242D5C
ov83_02242D5C: ; 0x02242D5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov80_02237B24
	add r4, r0, #0
	ldr r0, _02242DA0 ; =0x0000073C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	bl ov83_0224773C
	ldr r0, _02242DA4 ; =0x0000074C
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #0
	bl ov83_0224773C
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl ov83_02247CE8
	ldr r0, _02242DA8 ; =0x00000844
	ldr r0, [r5, r0]
	bl ListMenuItems_Delete
	ldrb r1, [r5, #0xe]
	mov r0, #0x10
	bic r1, r0
	strb r1, [r5, #0xe]
	pop {r3, r4, r5, pc}
	nop
_02242DA0: .word 0x0000073C
_02242DA4: .word 0x0000074C
_02242DA8: .word 0x00000844
	thumb_func_end ov83_02242D5C

	thumb_func_start ov83_02242DAC
ov83_02242DAC: ; 0x02242DAC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r1, #0x21
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	add r1, #8
	add r2, #0x24
	ldrb r2, [r2]
	ldr r1, [r4, r1]
	cmp r1, r2
	beq _02242DF4
	mov r3, #1
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	lsl r5, r2, #1
	ldr r2, _02242DF8 ; =ov83_02247D1E
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r1, r4, #0
	ldrh r2, [r2, r5]
	add r1, #0xb0
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02242DF4:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02242DF8: .word ov83_02247D1E
	thumb_func_end ov83_02242DAC

	thumb_func_start ov83_02242DFC
ov83_02242DFC: ; 0x02242DFC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, #0x24
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, r2
	beq _02242E80
	add r0, r0, #4
	ldr r1, [r4, r0]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	cmp r1, #4
	beq _02242E2E
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _02242E4E
	b _02242E52
_02242E2E:
	ldr r0, _02242E84 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	cmp r0, #3
	bne _02242E42
	mov r2, #0x1b
	b _02242E54
_02242E42:
	cmp r0, #1
	bne _02242E4A
	mov r2, #0x19
	b _02242E54
_02242E4A:
	mov r2, #0x1a
	b _02242E54
_02242E4E:
	mov r2, #0x1c
	b _02242E54
_02242E52:
	mov r2, #0x18
_02242E54:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xb0
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02242E80:
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_02242E84: .word 0x0000050C
	thumb_func_end ov83_02242DFC

	thumb_func_start ov83_02242E88
ov83_02242E88: ; 0x02242E88
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, #0x24
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, r2
	beq _02242F10
	add r0, r0, #4
	ldr r1, [r4, r0]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r0, #6
	beq _02242EBA
	cmp r0, #7
	beq _02242EBE
	cmp r0, #8
	beq _02242EC2
	b _02242EE2
_02242EBA:
	mov r2, #0x30
	b _02242EE4
_02242EBE:
	mov r2, #0x31
	b _02242EE4
_02242EC2:
	ldr r0, _02242F14 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	cmp r0, #3
	bne _02242ED6
	mov r2, #0x34
	b _02242EE4
_02242ED6:
	cmp r0, #1
	bne _02242EDE
	mov r2, #0x32
	b _02242EE4
_02242EDE:
	mov r2, #0x33
	b _02242EE4
_02242EE2:
	mov r2, #0x35
_02242EE4:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xb0
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02242F10:
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_02242F14: .word 0x0000050C
	thumb_func_end ov83_02242E88

