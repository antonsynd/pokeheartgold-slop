#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02222840
	.public ov08_02222918
	.extern ov08_02223368
	.extern ov08_02223BA8
	.extern ov08_02223CD4
	.extern ov08_0222417C
	.extern ov08_02224938
	.extern ov08_02224B88
	.extern ov08_02224B8C
	.extern ov08_02224C94
	.extern ov08_02225B4C
	.extern ov08_02225B68

	.text

	.text
	thumb_func_start ov08_02222840
ov08_02222840: ; 0x02222840
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	beq _02222852
	mov r0, #1
	pop {r3, r4, r5, pc}
_02222852:
	ldr r1, _0222290C ; =ov08_02225B4C
	add r0, r4, #0
	bl ov08_02223368
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _02222878
	ldr r0, [r4, #0x34]
	bl ov08_02224C94
	add r5, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0222287E
	mov r5, #5
	b _0222287E
_02222878:
	add r0, r4, #0
	bl ov08_0222417C
_0222287E:
	cmp r5, #5
	bhi _02222908
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222288E: ; jump table
	.short _0222289A - _0222288E - 2 ; case 0
	.short _0222289A - _0222288E - 2 ; case 1
	.short _0222289A - _0222288E - 2 ; case 2
	.short _0222289A - _0222288E - 2 ; case 3
	.short _022228BA - _0222288E - 2 ; case 4
	.short _022228EA - _0222288E - 2 ; case 5
_0222289A:
	ldr r0, _02222910 ; =0x000005DD
	bl PlaySE
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02222914 ; =0x0000114D
	mov r2, #5
	strb r1, [r4, r0]
	sub r0, r0, #2
	strb r2, [r4, r0]
	add r0, r4, #0
	mov r2, #0
	bl ov08_02224938
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_022228BA:
	ldr r0, [r4]
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02222908
	ldr r0, _02222910 ; =0x000005DD
	bl PlaySE
	ldr r0, [r4]
	ldrb r1, [r0, #0x1f]
	ldr r0, _02222914 ; =0x0000114D
	strb r1, [r4, r0]
	mov r1, #6
	sub r0, r0, #2
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov08_02223BA8
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov08_02224938
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_022228EA:
	ldr r0, _02222910 ; =0x000005DD
	bl PlaySE
	ldr r0, [r4]
	mov r2, #0
	strh r2, [r0, #0x1c]
	ldr r0, [r4]
	mov r1, #4
	strb r1, [r0, #0x1e]
	add r0, r4, #0
	mov r1, #5
	bl ov08_02224938
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_02222908:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0222290C: .word ov08_02225B4C
_02222910: .word 0x000005DD
_02222914: .word 0x0000114D
	thumb_func_end ov08_02222840

	thumb_func_start ov08_02222918
ov08_02222918: ; 0x02222918
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02222A64 ; =ov08_02225B68
	add r4, r0, #0
	bl ov08_02223368
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _0222298C
	ldr r0, [r4, #0x34]
	bl ov08_02224B8C
	add r6, r0, #0
	ldr r0, [r4, #0x34]
	bl ov08_02224B88
	add r7, r0, #0
	ldr r0, [r4, #0x34]
	bl ov08_02224C94
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	bl ov08_02224B88
	mov r1, #1
	mvn r1, r1
	cmp r5, r1
	bne _02222956
	mov r5, #6
	b _02222992
_02222956:
	cmp r6, #1
	bne _02222992
	cmp r7, r0
	bne _02222992
	ldr r1, _02222A68 ; =gSystem
	mov r2, #0x20
	ldr r1, [r1, #0x4c]
	tst r2, r1
	beq _02222976
	cmp r0, #0
	beq _02222974
	cmp r0, #2
	beq _02222974
	cmp r0, #4
	bne _02222976
_02222974:
	mov r5, #7
_02222976:
	mov r2, #0x10
	tst r1, r2
	beq _02222992
	cmp r0, #1
	beq _02222988
	cmp r0, #3
	beq _02222988
	cmp r0, #5
	bne _02222992
_02222988:
	mov r5, #8
	b _02222992
_0222298C:
	add r0, r4, #0
	bl ov08_0222417C
_02222992:
	cmp r5, #8
	bhi _02222A60
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022229A2: ; jump table
	.short _022229B4 - _022229A2 - 2 ; case 0
	.short _022229B4 - _022229A2 - 2 ; case 1
	.short _022229B4 - _022229A2 - 2 ; case 2
	.short _022229B4 - _022229A2 - 2 ; case 3
	.short _022229B4 - _022229A2 - 2 ; case 4
	.short _022229B4 - _022229A2 - 2 ; case 5
	.short _022229EA - _022229A2 - 2 ; case 6
	.short _02222A04 - _022229A2 - 2 ; case 7
	.short _02222A32 - _022229A2 - 2 ; case 8
_022229B4:
	add r0, r4, #0
	add r1, r5, #0
	bl ov08_02223CD4
	cmp r0, #0
	beq _02222A60
	ldr r0, _02222A6C ; =0x000005DD
	bl PlaySE
	ldr r0, _02222A70 ; =0x0000114D
	ldr r2, [r4]
	ldrb r1, [r4, r0]
	sub r0, r0, #2
	add r1, r2, r1
	add r1, #0x27
	strb r5, [r1]
	mov r1, #6
	strb r1, [r4, r0]
	add r1, r5, #6
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov08_02224938
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_022229EA:
	ldr r0, _02222A6C ; =0x000005DD
	bl PlaySE
	ldr r0, _02222A74 ; =0x0000114B
	mov r1, #4
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl ov08_02224938
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_02222A04:
	ldr r0, _02222A70 ; =0x0000114D
	ldrb r1, [r4, r0]
	add r0, r0, #7
	add r1, r4, r1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02222A60
	ldr r0, _02222A6C ; =0x000005DD
	bl PlaySE
	ldr r0, _02222A74 ; =0x0000114B
	mov r1, #7
	strb r1, [r4, r0]
	sub r1, #8
	add r0, r0, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl ov08_02224938
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_02222A32:
	ldr r0, _02222A70 ; =0x0000114D
	ldrb r1, [r4, r0]
	add r0, r0, #7
	add r1, r4, r1
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _02222A60
	ldr r0, _02222A6C ; =0x000005DD
	bl PlaySE
	ldr r0, _02222A74 ; =0x0000114B
	mov r1, #7
	strb r1, [r4, r0]
	mov r1, #1
	add r0, r0, #3
	strb r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl ov08_02224938
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_02222A60:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02222A64: .word ov08_02225B68
_02222A68: .word gSystem
_02222A6C: .word 0x000005DD
_02222A70: .word 0x0000114D
_02222A74: .word 0x0000114B
	thumb_func_end ov08_02222918

