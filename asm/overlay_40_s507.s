	.include "macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022430A0
	.extern ov40_0224301C
	.extern ov40_02245C28

	.text

	.text
	thumb_func_start ov40_022430A0
ov40_022430A0: ; 0x022430A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r2, #0xa6
	lsl r2, r2, #2
	add r4, r2, #0
	mov r1, #1
	add r3, r0, #0
	str r1, [r3, r2]
	mov r5, #0
	sub r4, #0xb4
	strh r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x14
	ldr r5, [r3, r4]
	add r4, r2, #0
	sub r4, #0xb2
	strh r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x14
	ldr r5, [r3, r4]
	add r4, r2, #0
	sub r4, #0xb0
	strh r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x14
	ldr r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x18
	ldr r3, [r3, r4]
	add r4, r2, #0
	add r5, r5, r3
	add r6, r2, #0
	sub r4, #0xae
	add r3, r0, #0
	strh r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x14
	ldr r5, [r3, r4]
	add r4, r2, #0
	add r4, #0x18
	ldr r3, [r3, r4]
	add r4, r2, #0
	add r5, r5, r3
	sub r4, #0xac
	add r3, r0, #0
	strh r5, [r3, r4]
	add r4, r2, #0
	add r5, r2, #0
	add r4, #0x1c
	add r5, #0x14
	ldr r4, [r3, r4]
	ldr r3, [r3, r5]
	add r6, #0x18
	add r5, r0, #0
	ldr r5, [r5, r6]
	sub r2, #0xaa
	add r3, r3, r5
	add r4, r4, r3
	add r3, r0, #0
	str r0, [sp]
	strh r4, [r3, r2]
	bl ov40_0224301C
	mov r4, #0x81
	lsl r4, r4, #2
	add r3, r4, #0
	ldr r1, [sp]
	mov r0, #0
	add r3, #0xa8
_0224312A:
	ldr r2, [sp]
	add r0, r0, #1
	ldr r5, [r2, r4]
	ldr r2, [r1, r3]
	add r1, r1, #4
	add r5, r5, r2
	ldr r2, [sp]
	cmp r0, #3
	str r5, [r2, r4]
	blt _0224312A
	ldr r4, _02243208 ; =ov40_02245C28
	add r3, sp, #8
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0xab
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r2, #0
	cmp r0, #4
	beq _0224315E
	mov r2, #1
_0224315E:
	mov r0, #0xc
	mul r0, r2
	add r3, sp, #8
	add r0, r3, r0
	mov r2, #0x77
	ldr r5, [sp]
	mov r1, #0
	add r4, r0, #0
	lsl r2, r2, #2
_02243170:
	ldr r3, [r4]
	add r1, r1, #1
	strh r3, [r5, r2]
	add r4, r4, #4
	add r5, r5, #2
	cmp r1, #3
	blt _02243170
	sub r2, r1, #1
	lsl r2, r2, #2
	ldr r2, [r0, r2]
	ldr r0, [sp]
	lsl r1, r1, #1
	add r1, r0, r1
	mov r0, #0x77
	lsl r0, r0, #2
	strh r2, [r1, r0]
	ldr r1, [sp]
	mov r0, #0
	mov r4, #0xab
	mov r5, #0x15
	add r3, r0, #0
	add r2, r1, #0
	lsl r4, r4, #2
	lsl r5, r5, #4
_022431A0:
	ldr r6, [r1, r4]
	add r3, r3, #1
	add r0, r0, r6
	sub r6, r0, #1
	str r6, [r2, r5]
	add r1, r1, #4
	add r2, #0x1c
	cmp r3, #2
	blt _022431A0
	ldr r0, [sp]
	mov r5, #0
	mov r7, #0xab
	mov ip, r5
	str r0, [sp, #4]
	add r4, r0, #0
	lsl r7, r7, #2
_022431C0:
	mov r0, #0xab
	ldr r2, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r1, #0
	cmp r0, #0
	ble _022431EC
	mov r0, ip
	lsl r3, r0, #2
	ldr r0, [sp]
	add r2, r4, #0
	add r3, r0, r3
	mov r0, ip
	add r6, r0, #1
_022431DC:
	str r6, [r2, #4]
	ldr r0, [r3, r7]
	add r1, r1, #1
	add r2, #0x1c
	add r4, #0x1c
	add r5, r5, #1
	cmp r1, r0
	blt _022431DC
_022431EC:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r0, r0, #4
	str r0, [sp, #4]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r5, r0
	blt _022431C0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02243208: .word ov40_02245C28
	thumb_func_end ov40_022430A0

