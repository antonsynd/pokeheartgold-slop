	.include "asm/macros.inc"
	.include "overlay_41_02249A40.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_02249A40
ov41_02249A40: ; 0x02249A40
	mov r2, #0x10
	mov r1, #0
_02249A44:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02249A44
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02249A40

	thumb_func_start ov41_02249A50
ov41_02249A50: ; 0x02249A50
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #8]
	str r0, [r2, #0xc]
	str r1, [r0, #0xc]
	str r0, [r1, #8]
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02249A50

	thumb_func_start ov41_02249A60
ov41_02249A60: ; 0x02249A60
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r2, [r1, #8]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.balign 4, 0
	thumb_func_end ov41_02249A60

	thumb_func_start ov41_02249A70
ov41_02249A70: ; 0x02249A70
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #8]
	cmp r4, r6
	beq _02249A8E
_02249A7A:
	add r0, r4, #0
	ldr r5, [r4, #8]
	bl ov41_02249A60
	add r0, r4, #0
	bl ov41_02249A40
	add r4, r5, #0
	cmp r5, r6
	bne _02249A7A
_02249A8E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_02249A70

	thumb_func_start ov41_02249A90
ov41_02249A90: ; 0x02249A90
	push {r3, lr}
	ldr r2, [r0, #4]
	ldr r0, [r0]
	cmp r2, #3
	bge _02249AA0
	bl ov41_02246014
	pop {r3, pc}
_02249AA0:
	bl ov41_02249700
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_02249A90

	thumb_func_start ov41_02249AA8
ov41_02249AA8: ; 0x02249AA8
	push {r4, lr}
	ldr r4, [r0, #4]
	cmp r4, #0
	bne _02249ABE
	ldr r0, [r0]
	ldr r4, [r0]
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov41_02245F14
	pop {r4, pc}
_02249ABE:
	cmp r4, #1
	bne _02249AD2
	ldr r0, [r0]
	ldr r4, [r0]
	add r4, #0x64
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov41_02245F14
	pop {r4, pc}
_02249AD2:
	cmp r4, #2
	ldr r0, [r0]
	bne _02249AE6
	ldr r4, [r0]
	add r4, #0x64
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov41_02245F14
	pop {r4, pc}
_02249AE6:
	mov r4, #0x76
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov41_022497A8
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02249AA8

	thumb_func_start ov41_02249AF4
ov41_02249AF4: ; 0x02249AF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [r0, #4]
	add r4, r2, #0
	cmp r1, #3
	bge _02249B14
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov41_02245F9C
	add sp, #8
	pop {r4, r5, r6, pc}
_02249B14:
	ldr r6, [r0]
	add r1, sp, #4
	add r0, r6, #0
	add r2, sp, #0
	bl ov41_022497A0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r4, r2
	bl ov41_0224971C
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_02249AF4

	thumb_func_start ov41_02249B44
ov41_02249B44: ; 0x02249B44
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #3
	bge _02249B5C
	ldr r0, [r0]
	bl ov41_02245FA8
	add sp, #8
	pop {r4, r5, r6, pc}
_02249B5C:
	ldr r6, [r0]
	add r0, r6, #0
	bl ov41_02249780
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_022497A0
	ldr r1, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	ldr r1, [sp]
	str r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	ldr r0, [r5]
	sub r0, r0, r2
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r4]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_02249B44

	thumb_func_start ov41_02249B94
ov41_02249B94: ; 0x02249B94
	push {r3, lr}
	ldr r3, [r0, #4]
	ldr r0, [r0]
	cmp r3, #3
	bge _02249BA4
	bl ov41_02245FD8
	pop {r3, pc}
_02249BA4:
	bl ov41_022497A0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_02249B94

	thumb_func_start ov41_02249BAC
ov41_02249BAC: ; 0x02249BAC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, [r0, #4]
	add r6, r1, #0
	add r5, r3, #0
	ldr r4, [sp, #0x18]
	cmp r2, #3
	ldr r0, [r0]
	bge _02249BCE
	add r2, r5, #0
	bl ov41_02246020
	ldr r0, [r6]
	str r0, [r7]
	ldr r0, [r5]
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02249BCE:
	add r1, sp, #0
	bl ov41_02249888
	add r0, sp, #0
	ldrb r1, [r0]
	str r1, [r6]
	ldrb r1, [r0, #1]
	str r1, [r7]
	ldrb r1, [r0, #2]
	str r1, [r5]
	ldrb r0, [r0, #3]
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_02249BAC

	thumb_func_start ov41_02249BE8
ov41_02249BE8: ; 0x02249BE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r6, r1, #0
	add r7, r2, #0
	cmp r4, r5
	beq _02249C1A
_02249BF8:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02249B44
	ldr r0, [sp, #4]
	add r1, r0, r6
	ldr r0, [sp]
	str r1, [sp, #4]
	add r2, r0, r7
	str r2, [sp]
	add r0, r4, #0
	bl ov41_02249AF4
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02249BF8
_02249C1A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02249BE8

	thumb_func_start ov41_02249C20
ov41_02249C20: ; 0x02249C20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	add r7, r3, #0
	bl ov41_02249B94
	add r0, r5, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov41_02249B44
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov41_02249BAC
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [r4]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r1, r1, r0
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r6]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [r7]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r1, r1, r0
	ldr r0, [sp, #8]
	sub r1, r1, r0
	ldr r0, [sp, #0x38]
	str r1, [r0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov41_02249C20

	thumb_func_start ov41_02249C7C
ov41_02249C7C: ; 0x02249C7C
	add r2, r0, #0
	ldr r0, [r1]
	str r0, [r2]
	ldr r3, [r1, #0x14]
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	str r0, [r2, #0xc]
	ldr r3, [r1, #0x18]
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x1c]
	ldr r3, _02249CC0 ; =ov41_02249E60
	str r0, [r2, #0x1c]
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x20]
	ldr r0, [r1, #0x20]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0x28]
	str r0, [r2, #0x28]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r1, #0x14
	add r2, #0x18
	bx r3
	nop
_02249CC0: .word ov41_02249E60
	thumb_func_end ov41_02249C7C

	thumb_func_start ov41_02249CC4
ov41_02249CC4: ; 0x02249CC4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	ldr r0, [r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x2c
	bl memset
	pop {r4, pc}
	thumb_func_end ov41_02249CC4

	thumb_func_start ov41_02249CE0
ov41_02249CE0: ; 0x02249CE0
	ldr r2, [r1]
	str r2, [r0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	mov r2, #0
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov41_02249CE0

	thumb_func_start ov41_02249CF8
ov41_02249CF8: ; 0x02249CF8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r0, r1
	str r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	ble _02249D5C
	mov r2, #0
	str r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02249D1C
	ldr r1, [r5, #4]
	mov r0, #1
	str r0, [r5, #0x10]
	b _02249D22
_02249D1C:
	ldr r0, [r5]
	ldr r1, [r0, #8]
	str r2, [r5, #0x10]
_02249D22:
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5]
	add r3, sp, #0x14
	ldr r0, [r0, #4]
	bl GfGfxLoader_GetScrnData
	ldr r3, [r5]
	add r4, r0, #0
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, [r3, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x14]
	bl ov41_02249F7C
	add r0, r4, #0
	bl Heap_Free
_02249D5C:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02249CF8

	thumb_func_start ov41_02249D60
ov41_02249D60: ; 0x02249D60
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5]
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	add r3, sp, #0x14
	bl GfGfxLoader_GetScrnData
	ldr r3, [r5]
	add r4, r0, #0
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3]
	ldr r1, [r3, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x14]
	bl ov41_02249F7C
	add r0, r4, #0
	bl Heap_Free
	mov r1, #0x18
	mov r0, #0
_02249DA6:
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _02249DA6
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02249D60

	thumb_func_start ov41_02249DB4
ov41_02249DB4: ; 0x02249DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _02249E3C ; =ov41_02249F0C
	mov r1, #0x4c
	mov r2, #0
	mov r3, #0xd
	bl CreateSysTaskAndEnvironment
	bl SysTask_GetData
	add r4, r0, #0
	str r6, [r4]
	add r7, r5, #0
	add r3, r4, #4
	mov r2, #6
_02249DDA:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02249DDA
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x34]
	ldr r0, [sp]
	str r1, [r4, #0x38]
	bl _s32_div_f
	str r0, [r4, #0x3c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl _s32_div_f
	str r0, [r4, #0x40]
	ldr r0, [r6]
	ldr r1, [r6, #0x1c]
	bl Bg_GetXpos
	str r0, [r4, #0x44]
	ldr r0, [r6]
	ldr r1, [r6, #0x1c]
	bl Bg_GetYpos
	str r0, [r4, #0x48]
	mov r0, #0x80
	str r0, [r5, #0x28]
	mov r0, #5
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r5, #0x18]
	mov r0, #0xe
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r2, r1, #0
	bl ov41_02249E60
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249E3C: .word ov41_02249F0C
	thumb_func_end ov41_02249DB4

	thumb_func_start ov41_02249E40
ov41_02249E40: ; 0x02249E40
	push {r3, r4}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r4, r2, #1
	mov r3, #0
	cmp r4, #0
	ble _02249E5C
_02249E4E:
	ldrh r2, [r0]
	add r3, r3, #1
	add r2, r2, r1
	strh r2, [r0]
	add r0, r0, #2
	cmp r3, r4
	blt _02249E4E
_02249E5C:
	pop {r3, r4}
	bx lr
	thumb_func_end ov41_02249E40

	thumb_func_start ov41_02249E60
ov41_02249E60: ; 0x02249E60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x14]
	add r6, r2, #0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	ldr r1, [r5, #0x18]
	str r0, [sp, #0x18]
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x28]
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5]
	ldr r3, [r5, #0x1c]
	bl ov41_02249FFC
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bge _02249EA0
	mov r2, #0
	b _02249EA2
_02249EA0:
	mov r2, #4
_02249EA2:
	ldr r0, [r5, #0x20]
	lsl r0, r0, #5
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r3, [r5, #0x24]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	lsl r3, r3, #5
	bl ov41_0224A04C
	ldr r0, [r5, #0x2c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x10]
	add r3, sp, #0x24
	bl GfGfxLoader_GetScrnData
	ldr r2, [sp, #0x24]
	str r0, [sp, #0x20]
	ldrh r0, [r2]
	lsr r7, r0, #3
	ldrh r0, [r2, #2]
	add r3, r7, #0
	lsr r0, r0, #3
	str r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5]
	ldr r1, [r5, #0x1c]
	bl ov41_02249F7C
	ldr r0, [sp, #0x20]
	bl Heap_Free
	cmp r4, #0
	beq _02249EFE
	str r7, [r4]
_02249EFE:
	cmp r6, #0
	beq _02249F06
	ldr r0, [sp, #0x1c]
	str r0, [r6]
_02249F06:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02249E60

	thumb_func_start ov41_02249F0C
ov41_02249F0C: ; 0x02249F0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	sub r0, r0, #1
	str r0, [r4, #0x38]
	ldr r1, [r4]
	bmi _02249F40
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	ldr r3, [r4, #0x3c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #2
	bl ScheduleSetBgPosText
	ldr r1, [r4]
	ldr r3, [r4, #0x40]
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	mov r2, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleSetBgPosText
	pop {r3, r4, r5, pc}
_02249F40:
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	ldr r3, [r4, #0x44]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl ScheduleSetBgPosText
	ldr r1, [r4]
	ldr r3, [r4, #0x48]
	ldr r0, [r1]
	ldr r1, [r1, #0x1c]
	mov r2, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ScheduleSetBgPosText
	ldr r0, [r4]
	add r1, r4, #4
	bl ov41_02249C7C
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _02249F74
	mov r0, #1
	str r0, [r1]
_02249F74:
	add r0, r5, #0
	bl DestroySysTaskAndEnvironment
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_02249F0C

	thumb_func_start ov41_02249F7C
ov41_02249F7C: ; 0x02249F7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r4, r2, #0
	add r7, r0, #0
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	add r6, r3, #0
	bl ov41_02249E40
	ldr r1, [sp, #0x30]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	str r0, [sp]
	ldr r3, [sp, #0x38]
	str r2, [sp, #4]
	add r4, #0xc
	lsl r3, r3, #0x18
	str r4, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x34]
	lsl r1, r5, #0x18
	lsl r2, r2, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl CopyToBgTilemapRect
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x38]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r5, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	add r0, r7, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl BgTilemapRectChangePalette
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov41_02249F7C

	thumb_func_start ov41_02249FFC
ov41_02249FFC: ; 0x02249FFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl Heap_Alloc
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_0224A018:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0224A018
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	add r3, r4, #4
	bl GfGfxLoader_GetCharData
	str r0, [r4, #8]
	str r5, [r4]
	ldr r0, [sp, #0x20]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _0224A048 ; =ov41_0224A094
	add r1, r4, #0
	mov r2, #0x80
	bl SysTask_CreateOnVWaitQueue
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224A048: .word ov41_0224A094
	thumb_func_end ov41_02249FFC

	thumb_func_start ov41_0224A04C
ov41_0224A04C: ; 0x0224A04C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl Heap_Alloc
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_0224A066:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0224A066
	ldr r1, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl GfGfxLoader_GetPlttData
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _0224A090 ; =ov41_0224A0D0
	add r1, r4, #0
	mov r2, #0x80
	bl SysTask_CreateOnVWaitQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0224A090: .word ov41_0224A0D0
	thumb_func_end ov41_0224A04C

	thumb_func_start ov41_0224A094
ov41_0224A094: ; 0x0224A094
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl DC_FlushRange
	ldr r3, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	lsl r1, r1, #0x18
	ldr r0, [r4]
	ldr r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl BG_LoadCharTilesData
	add r0, r5, #0
	bl SysTask_Destroy
	ldr r0, [r4, #8]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A094

	thumb_func_start ov41_0224A0D0
ov41_0224A0D0: ; 0x0224A0D0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0224A0F4
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl GX_LoadBGPltt
	b _0224A104
_0224A0F4:
	cmp r0, #4
	bne _0224A104
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl GXS_LoadBGPltt
_0224A104:
	add r0, r5, #0
	bl SysTask_Destroy
	ldr r0, [r4, #4]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_0224A0D0

	thumb_func_start ov41_0224A118
ov41_0224A118: ; 0x0224A118
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0224A126
	bl GF_AssertFail
_0224A126:
	cmp r4, #0
	bne _0224A12E
	bl GF_AssertFail
_0224A12E:
	ldr r0, [r4]
	bl Sprite_CreateAffine
	str r0, [r5]
	cmp r0, #0
	bne _0224A13E
	bl GF_AssertFail
_0224A13E:
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224A150
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_0224A150:
	ldr r0, _0224A158 ; =ov41_0224A254
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	nop
_0224A158: .word ov41_0224A254
	thumb_func_end ov41_0224A118

	thumb_func_start ov41_0224A15C
ov41_0224A15C: ; 0x0224A15C
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	bl ov41_0224A118
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x28]
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_020135D8
	str r0, [r5, #0x10]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_0224A15C

	thumb_func_start ov41_0224A1A8
ov41_0224A1A8: ; 0x0224A1A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl Sprite_Delete
	mov r1, #0x10
	mov r0, #0
_0224A1B6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0224A1B6
	pop {r4, pc}
	thumb_func_end ov41_0224A1A8

	thumb_func_start ov41_0224A1C0
ov41_0224A1C0: ; 0x0224A1C0
	push {r4, lr}
	add r4, r0, #0
	bl ov41_0224A1A8
	ldr r0, [r4, #0x10]
	bl FontOAM_Delete
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl memset
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A1C0

	thumb_func_start ov41_0224A1DC
ov41_0224A1DC: ; 0x0224A1DC
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r1, r2
	bne _0224A1EA
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	blx r2
_0224A1EA:
	pop {r3, pc}
	thumb_func_end ov41_0224A1DC

	thumb_func_start ov41_0224A1EC
ov41_0224A1EC: ; 0x0224A1EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #2
	add r5, #0x20
_0224A1F8:
	cmp r4, r7
	beq _0224A204
	add r0, r5, #0
	bl ov41_0224A264
	b _0224A228
_0224A204:
	cmp r6, #0
	bne _0224A216
	add r0, r5, #0
	bl ov41_0224A270
	ldr r0, _0224A234 ; =0x0000067C
	bl PlaySE
	b _0224A228
_0224A216:
	cmp r6, #2
	bne _0224A222
	add r0, r5, #0
	bl ov41_0224A258
	b _0224A228
_0224A222:
	add r0, r5, #0
	bl ov41_0224A270
_0224A228:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	ble _0224A1F8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A234: .word 0x0000067C
	thumb_func_end ov41_0224A1EC

	thumb_func_start ov41_0224A238
ov41_0224A238: ; 0x0224A238
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0224A24A
	bl GF_AssertFail
_0224A24A:
	str r7, [r5, #4]
	str r6, [r5, #8]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A238

	thumb_func_start ov41_0224A254
ov41_0224A254: ; 0x0224A254
	bx lr
	.balign 4, 0
	thumb_func_end ov41_0224A254

	thumb_func_start ov41_0224A258
ov41_0224A258: ; 0x0224A258
	ldr r3, _0224A260 ; =Sprite_SetAnimationFrame
	ldr r0, [r0]
	mov r1, #2
	bx r3
	.balign 4, 0
_0224A260: .word Sprite_SetAnimationFrame
	thumb_func_end ov41_0224A258

	thumb_func_start ov41_0224A264
ov41_0224A264: ; 0x0224A264
	ldr r3, _0224A26C ; =Sprite_SetAnimationFrame
	ldr r0, [r0]
	mov r1, #0
	bx r3
	.balign 4, 0
_0224A26C: .word Sprite_SetAnimationFrame
	thumb_func_end ov41_0224A264

	thumb_func_start ov41_0224A270
ov41_0224A270: ; 0x0224A270
	ldr r3, _0224A278 ; =Sprite_SetAnimationFrame
	ldr r0, [r0]
	mov r1, #1
	bx r3
	.balign 4, 0
_0224A278: .word Sprite_SetAnimationFrame
	thumb_func_end ov41_0224A270

	thumb_func_start ov41_0224A27C
ov41_0224A27C: ; 0x0224A27C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x80
	add r4, r1, #0
	str r2, [r0]
	mov r0, #1
	mov r1, #0xd
	bl FontSystem_NewInit
	str r0, [r5, #0x64]
	add r0, r4, #0
	bl ov41_0224A7F8
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x30
	bl ov41_0224A6C4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #0
	mov r2, #0x30
	mov r3, #0x98
	bl ov41_0224A7E0
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	add r2, r4, #0
	mov r3, #8
	bl ov41_0224A6C4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #1
	mov r2, #8
	mov r3, #0x98
	bl ov41_0224A7E0
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x60
	bl ov41_0224A6C4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #2
	mov r2, #0x60
	mov r3, #0x9c
	bl ov41_0224A7E0
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x30
	mov r1, #3
	add r2, r4, #0
	mov r3, #0x88
	bl ov41_0224A6C4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #3
	mov r2, #0x88
	mov r3, #0x9c
	bl ov41_0224A7E0
	mov r0, #2
	mov r1, #0xe
	bl FontID_Alloc
	mov r0, #9
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0x1b
	mov r2, #0xd7
	mov r3, #0
	bl ov41_0224A928
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0xb8
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	mov r0, #0x48
	str r0, [sp, #0xc]
	mov r0, #0x2a
	str r0, [sp, #0x10]
	add r0, r5, #0
	ldr r3, [r5, #0x64]
	add r0, #0x40
	mov r1, #4
	add r2, r4, #0
	bl ov41_0224A734
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #4
	mov r2, #0xb8
	mov r3, #0x9c
	bl ov41_0224A7E0
	add r0, r6, #0
	bl ov41_0224A9B0
	mov r0, #2
	bl FontID_Release
	mov r0, #1
	str r0, [r5, #0x60]
	add r0, r4, #0
	bl ov41_0224A888
	add r0, r5, #0
	add r0, #0x20
	bl ov41_0224A258
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	ldr r2, _0224A3E0 ; =ov41_0224A60C
	add r0, #0x6c
	mov r1, #5
	add r3, r5, #0
	bl TouchHitboxController_Create
	str r0, [r5, #0x68]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0224A3E0: .word ov41_0224A60C
	thumb_func_end ov41_0224A27C

	thumb_func_start ov41_0224A3E4
ov41_0224A3E4: ; 0x0224A3E4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_0224A3EC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov41_02246388
	add r0, r5, #0
	add r1, r4, #0
	bl ov41_0224639C
	add r0, r4, #0
	bl ObjCharTransfer_ResetTransferTasksByResID
	add r4, r4, #1
	cmp r4, #5
	blt _0224A3EC
	mov r0, #0
	bl ObjPlttTransfer_FreeTaskByID
	mov r0, #1
	bl ObjPlttTransfer_FreeTaskByID
	mov r5, #0
	add r4, r6, #0
_0224A418:
	add r0, r4, #0
	bl ov41_0224A1A8
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #4
	blt _0224A418
	add r0, r6, #0
	add r0, #0x54
	bl sub_02021B5C
	add r0, r6, #0
	add r0, #0x40
	bl ov41_0224A1C0
	ldr r0, [r6, #0x64]
	bl sub_020135AC
	ldr r0, [r6, #0x68]
	bl TouchHitboxController_Destroy
	mov r0, #0
	str r0, [r6, #0x68]
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_0224A3E4

	thumb_func_start ov41_0224A448
ov41_0224A448: ; 0x0224A448
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x68]
	mov r4, #0xff
	cmp r0, #0
	bne _0224A458
	bl GF_AssertFail
_0224A458:
	add r0, r5, #0
	add r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	beq _0224A48C
	add r0, r5, #0
	add r0, #0x84
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x84
	strh r1, [r0]
	add r1, r5, #0
	add r1, #0x84
	ldrh r2, [r1]
	mov r1, #1
	add r0, r5, #0
	eor r2, r1
	ldr r1, _0224A4E4 ; =ov41_0224C094
	add r0, #0x86
	ldrb r1, [r1, r2]
	ldrh r0, [r0]
	add r2, r5, #0
	bl ov41_0224A60C
	pop {r3, r4, r5, pc}
_0224A48C:
	ldr r0, _0224A4E8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	add r2, r1, #0
	tst r2, r0
	beq _0224A49C
	mov r4, #4
	b _0224A4C2
_0224A49C:
	mov r2, #0x40
	tst r2, r1
	beq _0224A4A6
	mov r4, #1
	b _0224A4C2
_0224A4A6:
	mov r2, #0x80
	tst r2, r1
	beq _0224A4B0
	mov r4, #0
	b _0224A4C2
_0224A4B0:
	mov r2, #0x20
	tst r2, r1
	beq _0224A4BA
	mov r4, #2
	b _0224A4C2
_0224A4BA:
	mov r2, #0x10
	tst r1, r2
	beq _0224A4C2
	add r4, r0, #0
_0224A4C2:
	cmp r4, #0xff
	beq _0224A4E2
	add r0, r5, #0
	add r0, #0x86
	strh r4, [r0]
	add r0, r5, #0
	mov r1, #2
	add r0, #0x84
	strh r1, [r0]
	add r0, r5, #0
	add r0, #0x86
	ldrh r0, [r0]
	mov r1, #0
	add r2, r5, #0
	bl ov41_0224A60C
_0224A4E2:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0224A4E4: .word ov41_0224C094
_0224A4E8: .word gSystem
	thumb_func_end ov41_0224A448

	thumb_func_start ov41_0224A4EC
ov41_0224A4EC: ; 0x0224A4EC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x84
	ldrh r0, [r0]
	cmp r0, #0
	beq _0224A4FC
	mov r0, #0
	pop {r4, pc}
_0224A4FC:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #1
	bne _0224A526
	bl System_GetTouchHeld
	cmp r0, #0
	beq _0224A514
	mov r0, #0
	pop {r4, pc}
_0224A514:
	ldr r0, _0224A548 ; =gSystem
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _0224A542
	add r4, #0x80
	ldr r0, [r4]
	mov r1, #0
	str r1, [r0]
	b _0224A542
_0224A526:
	ldr r0, _0224A548 ; =gSystem
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _0224A532
	mov r0, #0
	pop {r4, pc}
_0224A532:
	bl System_GetTouchHeld
	cmp r0, #0
	beq _0224A542
	add r4, #0x80
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0]
_0224A542:
	mov r0, #0
	pop {r4, pc}
	nop
_0224A548: .word gSystem
	thumb_func_end ov41_0224A4EC

	thumb_func_start ov41_0224A54C
ov41_0224A54C: ; 0x0224A54C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _0224A55A
	bl GF_AssertFail
_0224A55A:
	add r0, r4, #0
	bl ov41_0224A4EC
	cmp r0, #0
	bne _0224A57E
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne _0224A578
	add r0, r4, #0
	bl ov41_0224A448
	pop {r4, pc}
_0224A578:
	ldr r0, [r4, #0x68]
	bl TouchHitboxController_IsTriggered
_0224A57E:
	pop {r4, pc}
	thumb_func_end ov41_0224A54C

	thumb_func_start ov41_0224A580
ov41_0224A580: ; 0x0224A580
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	mov r1, #3
	bl ov41_0224A8B0
	add r0, r4, #0
	add r0, #0x40
	mov r1, #3
	bl ov41_0224A8D4
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	bl ov41_0224A1EC
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224A580


    .rodata

ov41_0224C094: ; 0x0224C094
	.byte 0x02, 0x01, 0x00, 0x00
