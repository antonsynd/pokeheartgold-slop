	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_02259A3C
	.extern ov89_0225C88C

	.text

	.text
	thumb_func_start ov89_02259A3C
ov89_02259A3C: ; 0x02259A3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r6, r2, #0
	add r5, r3, #0
	cmp r4, #0
	beq _02259A50
	ldr r2, _02259AFC ; =0x000001ED
	cmp r4, r2
	ble _02259A56
_02259A50:
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02259A56:
	ldr r2, [sp, #0x30]
	bl ov89_0225C88C
	cmp r0, #1
	bne _02259A90
	ldr r0, [sp, #0x28]
	mov r2, #1
	add r1, r4, #3
	mov r3, #0x7d
	str r2, [sp]
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0xc]
	mov r1, #1
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #0x14]
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x80
	str r0, [sp, #4]
	b _02259ABA
_02259A90:
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x7d
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, sp, #0xc
	str r0, [sp, #8]
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [sp, #0xc]
	mov r1, #0x80
	ldr r0, [r0, #0x14]
	bl DC_FlushRange
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #0x14]
	str r4, [sp, #4]
	add r4, #0x40
_02259ABA:
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _02259AC6
	mov r5, #0x19
	lsl r5, r5, #0x16
	b _02259ACA
_02259AC6:
	mov r5, #0x66
	lsl r5, r5, #0x14
_02259ACA:
	ldr r0, [r6]
	bl Sprite_GetImageProxy
	add r6, r0, #0
	ldr r0, [sp, #0x2c]
	mov r2, #0x40
	lsl r7, r0, #2
	ldr r1, [r6, r7]
	ldr r0, [sp, #4]
	add r1, r5, r1
	bl MIi_CpuCopy16
	ldr r1, [r6, r7]
	add r5, #0x40
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x40
	bl MIi_CpuCopy16
	ldr r0, [sp, #8]
	bl Heap_Free
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02259AFC: .word 0x000001ED
	thumb_func_end ov89_02259A3C

