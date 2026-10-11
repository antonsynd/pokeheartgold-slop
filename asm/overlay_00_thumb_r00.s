	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E5900
	.extern _0221A680
	.extern ov00_021E700C

	.text

	.text
	thumb_func_start ov00_021E5900
ov00_021E5900: ; 0x021E5900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	ldr r0, _021E5AC4 ; =_0221A680
	add r5, r1, #0
	ldr r0, [r0]
	add r4, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _021E5918
	bl GF_AssertFail
_021E5918:
	ldr r1, _021E5AC8 ; =0x00001108
	add r0, r5, #0
	bl Heap_Alloc
	ldr r2, _021E5AC8 ; =0x00001108
	add r6, r0, #0
	mov r1, #0
	bl MI_CpuFill8
	add r2, r6, #0
	add r2, #0x1f
	mov r0, #0x1f
	bic r2, r0
	ldr r1, _021E5AC4 ; =_0221A680
	ldr r0, _021E5ACC ; =0x00000F7C
	str r2, [r1]
	str r6, [r2, r0]
	ldr r6, [r1]
	ldr r2, [sp, #4]
	sub r3, r0, #4
	str r2, [r6, r3]
	add r3, r0, #0
	ldr r6, [r1]
	mov r2, #0
	add r3, #0x28
	str r2, [r6, r3]
	add r3, r0, #0
	ldr r6, [r1]
	add r3, #0x2c
	str r2, [r6, r3]
	add r3, r0, #0
	ldr r6, [r1]
	add r3, #0x44
	str r2, [r6, r3]
	ldr r3, [r1]
	add r0, #0xf4
	str r2, [r3, r0]
	ldr r0, [r1]
	ldr r2, _021E5AD0 ; =0x00001084
	str r5, [r0, r2]
	add r0, r2, #4
	ldr r3, [r1]
	add r2, #8
	str r5, [r3, r0]
	ldr r0, [r1]
	ldr r1, _021E5AD4 ; =0x00003020
	str r4, [r0, r2]
	add r0, r5, #0
	add r1, r4, r1
	bl Heap_Alloc
	ldr r3, _021E5AC4 ; =_0221A680
	mov r1, #0xf9
	ldr r2, [r3]
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r1, #0
	ldr r5, [r3]
	mov r2, #0
	add r0, #8
	str r2, [r5, r0]
	ldr r0, [r3]
	ldr r0, [r0, r1]
	mov r1, #0x1f
	add r0, #0x1f
	bic r0, r1
	add r1, r4, #0
	bl NNS_FndCreateExpHeapEx
	ldr r4, _021E5AC4 ; =_0221A680
	mov r6, #0
	ldr r2, [r4]
	ldr r1, _021E5AD8 ; =0x00000F94
	sub r7, r6, #1
	str r0, [r2, r1]
	add r0, r1, #0
	ldr r2, [r4]
	add r0, #8
	str r6, [r2, r0]
	ldr r0, [r4]
	ldr r2, _021E5ADC ; =0x000010A4
	str r6, [r0, r2]
	add r0, r2, #0
	ldr r3, [r4]
	sub r0, #0x10
	str r7, [r3, r0]
	add r0, r2, #0
	ldr r3, [r4]
	sub r0, #0x38
	str r6, [r3, r0]
	add r3, r2, #0
	ldr r5, [r4]
	ldr r0, [sp]
	sub r3, #0x28
	str r0, [r5, r3]
	add r0, r2, #0
	ldr r3, [r4]
	sub r0, #0x24
	str r6, [r3, r0]
	add r0, r2, #0
	ldr r3, [r4]
	add r0, #0x34
	str r6, [r3, r0]
	add r0, r2, #0
	ldr r3, [r4]
	sub r0, #0xc
	str r7, [r3, r0]
	add r3, r2, #0
	ldr r5, [r4]
	mov r0, #1
	sub r3, #8
	str r0, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4]
	add r3, #0x3a
	strb r6, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4]
	add r3, #0x28
	str r6, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4]
	add r3, #0x38
	strb r6, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4]
	add r3, #0x39
	strb r6, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4]
	add r3, #0x30
	strh r0, [r5, r3]
	add r3, r2, #0
	ldr r5, [r4]
	add r3, #0x2c
	str r0, [r5, r3]
	ldr r3, [r4]
	add r2, #0x32
	strh r0, [r3, r2]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E5A66
	ldr r0, [r4]
	sub r1, #0x1c
	ldr r0, [r0, r1]
	bl sub_0202C6F4
	bl sub_0202C08C
	add r2, r4, #0
	mov r1, #0xf1
	ldr r3, [r2]
	lsl r1, r1, #4
	str r0, [r3, r1]
	ldr r0, [r2]
	add r1, #0x68
	ldr r0, [r0, r1]
	bl sub_0202C6F4
	add r1, r6, #0
	bl sub_0202C23C
	add r1, r4, #0
	ldr r2, [r1]
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r2, r1]
_021E5A66:
	ldr r2, _021E5AC4 ; =_0221A680
	ldr r1, _021E5AE0 ; =0x000010E5
	ldr r0, [r2]
	mov r3, #1
	strb r3, [r0, r1]
	mov r0, #0
	ldr r3, [r2]
	sub r1, #0x81
	str r0, [r3, r1]
	ldr r1, _021E5AE4 ; =0x00001044
	add r4, r0, #0
_021E5A7C:
	ldr r3, [r2]
	add r3, r3, r0
	add r0, r0, #1
	strb r4, [r3, r1]
	cmp r0, #0x20
	blt _021E5A7C
	bl ov00_021E700C
	ldr r0, _021E5AC4 ; =_0221A680
	ldr r1, [r0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_CheckHasProfile
	cmp r0, #0
	bne _021E5AA4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5AA4:
	ldr r0, _021E5AC4 ; =_0221A680
	ldr r1, [r0]
	mov r0, #0xf1
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl DWC_CheckValidConsole
	cmp r0, #0
	beq _021E5ABC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E5ABC:
	mov r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5AC4: .word _0221A680
_021E5AC8: .word 0x00001108
_021E5ACC: .word 0x00000F7C
_021E5AD0: .word 0x00001084
_021E5AD4: .word 0x00003020
_021E5AD8: .word 0x00000F94
_021E5ADC: .word 0x000010A4
_021E5AE0: .word 0x000010E5
_021E5AE4: .word 0x00001044
	thumb_func_end ov00_021E5900

