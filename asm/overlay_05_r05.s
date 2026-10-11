	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221BF08
	.extern ov05_0221CE88
	.extern ov05_0221CEB8
	.extern ov05_0221D094
	.extern ov05_0221D140
	.extern ov05_0221D228
	.extern ov05_0221D6C4
	.extern ov05_0221D7AC

	.text

	.text
	thumb_func_start ov05_0221BF08
ov05_0221BF08: ; 0x0221BF08
	push {r3, r4, r5, lr}
	ldr r1, _0221C000 ; =0x00000B82
	add r5, r0, #0
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _0221BF1E
	cmp r1, #1
	beq _0221BF7A
	cmp r1, #2
	beq _0221BF92
	b _0221BFF2
_0221BF1E:
	mov r1, #0
	mov r2, #1
	bl ov05_0221CEB8
	add r0, r5, #0
	bl ov05_0221D094
	add r0, r5, #0
	bl ov05_0221D140
	bl ov05_0221D228
	ldr r2, [r5]
	mov r0, #7
	ldr r1, [r2]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	ldr r1, [r2, #0x24]
	add r2, sp, #0
	mov r3, #0
	bl sub_0202FD28
	ldr r1, [sp]
	ldr r0, _0221C004 ; =0x00000BCC
	mov r4, #0
	str r1, [r5, r0]
	add r0, r0, #4
	str r4, [r5, r0]
_0221BF56:
	add r0, r4, #0
	bl sub_02034818
	cmp r0, #0
	beq _0221BF72
	bl PlayerProfile_GetVersion
	cmp r0, #0
	bne _0221BF72
	mov r0, #0xbd
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _0221BFF2
_0221BF72:
	add r4, r4, #1
	cmp r4, #8
	blt _0221BF56
	b _0221BFF2
_0221BF7A:
	mov r1, #0x1f
	mvn r1, r1
	add r2, r1, #0
	add r2, #0x10
	bl ov05_0221D6C4
	add r0, r5, #0
	bl ov05_0221D7AC
	bl sub_0203A880
	b _0221BFF2
_0221BF92:
	ldr r1, [r5]
	mov r0, #0
	ldr r1, [r1, #0x24]
	bl sub_020880CC
	ldr r0, _0221C008 ; =ov05_0221CE88
	add r1, r5, #0
	bl Main_SetVBlankIntrCB
	ldr r2, _0221C000 ; =0x00000B82
	mov r0, #0
	strb r0, [r5, r2]
	mov r3, #4
	sub r1, r2, #6
	strb r3, [r5, r1]
	sub r1, r2, #5
	mov r3, #2
	strb r3, [r5, r1]
	mov r1, #0xc
	sub r2, #0xe
	str r1, [r5, r2]
	ldr r3, [r5]
	ldr r2, _0221C00C ; =0x0000027E
	ldr r3, [r3, #0x24]
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	ldr r1, _0221C010 ; =0x00000BAC
	str r0, [r5, r1]
	ldr r0, [r5]
	ldr r0, [r0, #0x24]
	bl MessageFormat_New
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r1, [r5]
	mov r0, #5
	ldr r1, [r1, #0x24]
	lsl r0, r0, #6
	bl String_New
	ldr r1, _0221C014 ; =0x00000BB4
	str r0, [r5, r1]
	mov r0, #1
	add r1, #8
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_0221BFF2:
	ldr r0, _0221C000 ; =0x00000B82
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0221C000: .word 0x00000B82
_0221C004: .word 0x00000BCC
_0221C008: .word ov05_0221CE88
_0221C00C: .word 0x0000027E
_0221C010: .word 0x00000BAC
_0221C014: .word 0x00000BB4
	thumb_func_end ov05_0221BF08

