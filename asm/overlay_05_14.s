	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221C6C8
	.extern ov05_0221D3AC
	.extern ov05_0221D664
	.extern ov05_0221EA6C
	.extern ov05_0221EA6D

	.text

	.text
	thumb_func_start ov05_0221C6C8
ov05_0221C6C8: ; 0x0221C6C8
	push {r3, r4, r5, lr}
	ldr r3, _0221C7EC ; =0x00000B82
	add r4, r0, #0
	ldrb r3, [r4, r3]
	ldr r0, [r4, #0xc]
	mov r1, #2
	lsl r5, r3, #1
	ldr r3, _0221C7F0 ; =ov05_0221EA6C
	mov r2, #1
	ldrb r3, [r3, r5]
	bl ScheduleSetBgPosText
	ldr r3, _0221C7EC ; =0x00000B82
	ldr r0, [r4, #0xc]
	ldrb r3, [r4, r3]
	mov r1, #3
	mov r2, #1
	lsl r5, r3, #1
	ldr r3, _0221C7F0 ; =ov05_0221EA6C
	ldrb r3, [r3, r5]
	bl ScheduleSetBgPosText
	ldr r2, _0221C7EC ; =0x00000B82
	mov r1, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r3, r2, #1
	ldr r2, _0221C7F4 ; =ov05_0221EA6D
	ldrb r2, [r2, r3]
	add r3, r1, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov05_0221D3AC
	ldr r2, _0221C7EC ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	lsl r3, r2, #1
	ldr r2, _0221C7F4 ; =ov05_0221EA6D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov05_0221D3AC
	ldr r2, _0221C7EC ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #2
	lsl r3, r2, #1
	ldr r2, _0221C7F4 ; =ov05_0221EA6D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov05_0221D3AC
	ldr r2, _0221C7EC ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	lsl r3, r2, #1
	ldr r2, _0221C7F4 ; =ov05_0221EA6D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov05_0221D3AC
	ldr r2, _0221C7EC ; =0x00000B82
	mov r1, #0
	ldrb r2, [r4, r2]
	add r0, r4, #0
	lsl r3, r2, #1
	ldr r2, _0221C7F4 ; =ov05_0221EA6D
	ldrb r2, [r2, r3]
	add r3, r1, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov05_0221D664
	ldr r2, _0221C7EC ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #1
	lsl r3, r2, #1
	ldr r2, _0221C7F4 ; =ov05_0221EA6D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov05_0221D664
	ldr r2, _0221C7EC ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #2
	lsl r3, r2, #1
	ldr r2, _0221C7F4 ; =ov05_0221EA6D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov05_0221D664
	ldr r2, _0221C7EC ; =0x00000B82
	add r0, r4, #0
	ldrb r2, [r4, r2]
	mov r1, #3
	lsl r3, r2, #1
	ldr r2, _0221C7F4 ; =ov05_0221EA6D
	ldrb r2, [r2, r3]
	mov r3, #0
	neg r2, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov05_0221D664
	ldr r0, _0221C7EC ; =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0221C7D2
	ldr r0, _0221C7F8 ; =0x00000853
	bl PlaySE
_0221C7D2:
	ldr r0, _0221C7EC ; =0x00000B82
	ldrb r1, [r4, r0]
	cmp r1, #5
	bne _0221C7E2
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0221C7E2:
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0221C7EC: .word 0x00000B82
_0221C7F0: .word ov05_0221EA6C
_0221C7F4: .word ov05_0221EA6D
_0221C7F8: .word 0x00000853
	thumb_func_end ov05_0221C6C8

