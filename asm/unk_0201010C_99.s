	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public sub_02012A90
	.public sub_02012ACC
	.public sub_02012B1C
	.extern sub_02012BE8
	.extern sub_02012CDC

	.text
	thumb_func_start sub_02012A90
sub_02012A90: ; 0x02012A90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x31
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	ble _02012ACA
	mov r7, #0x31
	add r4, r6, #0
	lsl r7, r7, #4
_02012AA6:
	mov r0, #0xc3
	lsl r0, r0, #2
	mov r2, #0xc6
	mov r3, #0xc5
	ldr r0, [r5, r0]
	lsl r2, r2, #2
	lsl r3, r3, #2
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r0, r4
	add r1, r5, #0
	bl sub_02012ACC
	ldr r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _02012AA6
_02012ACA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012A90

	thumb_func_start sub_02012ACC
sub_02012ACC: ; 0x02012ACC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrb r6, [r7]
	ldrb r4, [r7, #1]
	add r5, r1, #0
	add r1, r3, #0
	sub r0, r4, r6
	mul r0, r2
	bl _s32_div_f
	add r0, r0, r6
	cmp r6, r4
	bhi _02012AEC
	add r1, r6, #0
	ldrh r6, [r7, #2]
	b _02012AFC
_02012AEC:
	ldrh r2, [r7, #2]
	add r1, r4, #0
	add r4, r6, #0
	cmp r2, #0
	bne _02012AFA
	mov r6, #1
	b _02012AFC
_02012AFA:
	mov r6, #0
_02012AFC:
	cmp r1, r4
	bge _02012B1A
	mov r2, #0
	mov r3, #1
_02012B04:
	cmp r1, r0
	bne _02012B12
	cmp r6, #0
	bne _02012B10
	add r6, r3, #0
	b _02012B12
_02012B10:
	add r6, r2, #0
_02012B12:
	strb r6, [r5, r1]
	add r1, r1, #1
	cmp r1, r4
	blt _02012B04
_02012B1A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012ACC

	thumb_func_start sub_02012B1C
sub_02012B1C: ; 0x02012B1C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0xe2
	ldr r0, [r5, #0x20]
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0xe2
	str r0, [r5, #0x14]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldrb r1, [r4, #0xb]
	ldr r0, [r5, #0x14]
	cmp r1, #0
	ldr r1, [r5, #0x10]
	bne _02012B5E
	str r1, [sp]
	ldr r1, [r5, #0x18]
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r1, r4, #0
	bl sub_02012BE8
	b _02012B76
_02012B5E:
	str r1, [sp]
	ldr r1, [r5, #0x18]
	str r1, [sp, #4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	add r1, r4, #0
	bl sub_02012CDC
_02012B76:
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02012B1C

