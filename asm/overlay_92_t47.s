	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225E1A8
	.extern ov92_0225E188
	.extern ov92_02263BEC

	.text

	.text
	thumb_func_start ov92_0225E1A8
ov92_0225E1A8: ; 0x0225E1A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0x18]
	mov r0, #1
	lsl r0, r0, #8
	add r5, r1, #0
	ldr r3, _0225E350 ; =ov92_02263BEC
	str r0, [sp, #0x24]
	add r2, sp, #0x34
	mov r1, #0x24
_0225E1BC:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0225E1BC
	ldr r0, [r5, #4]
	cmp r0, #2
	beq _0225E1D8
	cmp r0, #3
	beq _0225E1F4
	cmp r0, #4
	beq _0225E210
	b _0225E22C
_0225E1D8:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x71
	str r0, [sp, #0xc]
	ldr r0, [r2]
	ldr r2, [r2, #0x10]
	mov r1, #0x4f
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	b _0225E230
_0225E1F4:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x71
	str r0, [sp, #0xc]
	ldr r0, [r2]
	ldr r2, [r2, #0x10]
	mov r1, #0x50
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	b _0225E230
_0225E210:
	ldr r2, [r5, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x71
	str r0, [sp, #0xc]
	ldr r0, [r2]
	ldr r2, [r2, #0x10]
	mov r1, #0x51
	mov r3, #7
	bl GfGfxLoader_LoadScrnDataFromOpenNarc
	b _0225E230
_0225E22C:
	bl GF_AssertFail
_0225E230:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	bgt _0225E23A
	b _0225E34C
_0225E23A:
	ldr r0, _0225E354 ; =0x00001FF0
	str r6, [sp, #0x1c]
	add r4, r5, r0
	ldr r0, [sp, #0x18]
	add r0, #0x8c
	str r0, [sp, #0x18]
_0225E246:
	ldr r0, [r5]
	cmp r6, r0
	beq _0225E342
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ov90_022588A4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	bl ov90_022588CC
	str r0, [sp, #0x2c]
	add r0, r4, #0
	bl InitWindow
	ldr r1, [r5, #4]
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x34
	add r1, r0, r2
	ldr r0, [sp, #0x1c]
	mov r2, #7
	add r7, r1, r0
	mov r0, #0x2b
	mvn r0, r0
	ldrsh r0, [r7, r0]
	add r3, r2, #0
	sub r3, #0x37
	str r0, [sp, #0x20]
	mov r0, #0x29
	mvn r0, r0
	ldrsh r0, [r7, r0]
	add r1, r4, #0
	str r0, [sp, #0x30]
	mov r0, #0x2d
	mvn r0, r0
	ldrsh r0, [r7, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r7, r3]
	ldr r0, [r5, #0x14]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x10]
	lsr r3, r3, #0x18
	bl AddWindowParameterized
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x24]
	mov r1, #0xff
	add r0, r0, r2
	str r0, [sp, #0x24]
	add r0, r4, #0
	bl FillWindowPixelBuffer
	ldr r0, [sp, #0x2c]
	mov r1, #0x71
	bl PlayerProfile_GetPlayerName_NewString
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov92_0225E188
	add r3, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0225E312
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0225E358 ; =0x0005060F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl AddTextPrinterParameterizedWithColorAndSpacing
	b _0225E32E
_0225E312:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0225E35C ; =0x0001020F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r2, r7, #0
	bl AddTextPrinterParameterizedWithColorAndSpacing
_0225E32E:
	add r0, r7, #0
	bl String_Delete
	add r0, r4, #0
	bl CopyWindowToVram
	ldr r0, [sp, #0x1c]
	add r4, #0x10
	add r0, #8
	str r0, [sp, #0x1c]
_0225E342:
	ldr r0, [r5, #4]
	add r6, r6, #1
	cmp r6, r0
	bge _0225E34C
	b _0225E246
_0225E34C:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E350: .word ov92_02263BEC
_0225E354: .word 0x00001FF0
_0225E358: .word 0x0005060F
_0225E35C: .word 0x0001020F
	thumb_func_end ov92_0225E1A8

