	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E5DEC
	.public ov109_021E5EC8
	.public ov109_021E5F10
	.public ov109_021E5F40
	.public ov109_021E5FFC
	.public ov109_021E6058
	.extern _021E7884
	.extern ov109_021E70C4
	.extern ov109_021E7248
	.extern ov109_021E7388
	.extern ov109_021E73F8
	.extern ov109_021E7474
	.extern ov109_021E74D4
	.extern ov109_021E7524
	.extern ov109_021E7584
	.extern ov109_021E75B4
	.extern ov109_021E75C8
	.extern ov109_021E7890
	.extern ov109_021E7A18

	.text

	.text
	thumb_func_start ov109_021E5DEC
ov109_021E5DEC: ; 0x021E5DEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xc5
	ldrb r0, [r0]
	add r7, r1, #0
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xc5
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r7, r0
	bhs _021E5E32
	add r4, r7, #0
	cmp r7, r0
	bhs _021E5E32
	add r6, r5, #0
	add r6, #0xcc
_021E5E12:
	add r0, r4, #1
	lsl r0, r0, #3
	lsl r1, r4, #3
	add r0, r6, r0
	add r1, r6, r1
	mov r2, #8
	bl MI_CpuCopy8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r4, r0
	blo _021E5E12
_021E5E32:
	add r1, r5, #0
	add r1, #0xcc
	lsl r0, r0, #3
	add r0, r1, r0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	mov r1, #0xc
	bl _s32_div_f
	strb r0, [r5, #0x1a]
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	mov r1, #0xc
	bl _s32_div_f
	cmp r1, #0
	beq _021E5E66
	ldrb r0, [r5, #0x1a]
	add r0, r0, #1
	strb r0, [r5, #0x1a]
_021E5E66:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E5E74
	mov r0, #1
	strb r0, [r5, #0x1a]
_021E5E74:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r7, r0
	blo _021E5EC0
	cmp r0, #0
	bne _021E5E8E
	mov r0, #3
	strb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	mov r0, #0
	strb r0, [r5, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_021E5E8E:
	cmp r7, #0
	beq _021E5E98
	sub r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021E5E98:
	add r0, r7, #0
	mov r1, #0xc
	bl _s32_div_f
	strb r0, [r5, #0x19]
	add r0, r7, #0
	mov r1, #0xc
	bl _s32_div_f
	ldr r0, _021E5EC4 ; =ov109_021E7890
	ldrb r3, [r0, r1]
	mov r0, #0x1e
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5, #0x1b]
	lsr r0, r3, #2
	strb r0, [r5, #0x1c]
_021E5EC0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5EC4: .word ov109_021E7890
	thumb_func_end ov109_021E5DEC

	thumb_func_start ov109_021E5EC8
ov109_021E5EC8: ; 0x021E5EC8
	push {r4, lr}
	add r4, r0, #0
	ldrb r3, [r4, #0x19]
	mov r1, #3
	add r2, r1, #0
	bl ov109_021E70C4
	add r0, r4, #0
	bl ov109_021E7524
	add r0, r4, #0
	mov r1, #0
	bl ov109_021E7388
	mov r1, #0
	add r0, r4, #0
	mov r2, #1
	add r3, r1, #0
	bl ov109_021E73F8
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	mov r3, #1
	bl ov109_021E7474
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov109_021E5EC8

	thumb_func_start ov109_021E5F10
ov109_021E5F10: ; 0x021E5F10
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	ldrb r1, [r4, #0x18]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	beq _021E5F28
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021E5F28:
	add r1, sp, #0
	bl ov109_021E5FFC
	ldr r1, [sp]
	cmp r1, #0
	bne _021E5F3A
	add r0, r4, #0
	bl ov109_021E6058
_021E5F3A:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov109_021E5F10

	thumb_func_start ov109_021E5F40
ov109_021E5F40: ; 0x021E5F40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0xc
	beq _021E5F52
	cmp r1, #0xd
	beq _021E5F6A
	cmp r1, #0xe
	beq _021E5F86
	b _021E5FA6
_021E5F52:
	ldr r0, [r5, #0x10]
	mov r1, #0
	strb r1, [r0, #1]
	ldr r0, _021E5FF4 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #1
	bl ov109_021E7388
	mov r0, #8
	pop {r3, r4, r5, pc}
_021E5F6A:
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	bne _021E5F74
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5F74:
	mov r1, #2
	bl ov109_021E7584
	mov r0, #0x92
	lsl r0, r0, #4
	bl PlaySE
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E5F86:
	ldrb r1, [r5, #0x1a]
	ldrb r2, [r5, #0x19]
	sub r1, r1, #1
	cmp r2, r1
	bne _021E5F94
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5F94:
	mov r1, #3
	bl ov109_021E7584
	mov r0, #0x92
	lsl r0, r0, #4
	bl PlaySE
	mov r0, #3
	pop {r3, r4, r5, pc}
_021E5FA6:
	ldr r0, _021E5FF8 ; =_021E7884
	ldrb r2, [r0, r1]
	ldrb r1, [r5, #0x19]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r4, r0
	blo _021E5FC4
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E5FC4:
	strb r4, [r5, #0x1f]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1d]
	ldrb r0, [r5, #0x1c]
	strb r0, [r5, #0x1e]
	ldr r0, _021E5FF4 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	bl ov109_021E75C8
	lsl r1, r4, #3
	add r1, r5, r1
	add r1, #0xd0
	ldr r1, [r1]
	add r0, r5, #0
	bl ov109_021E7248
	add r0, r5, #0
	mov r1, #1
	bl ov109_021E74D4
	mov r0, #4
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E5FF4: .word 0x000005DC
_021E5FF8: .word _021E7884
	thumb_func_end ov109_021E5F40

	thumb_func_start ov109_021E5FFC
ov109_021E5FFC: ; 0x021E5FFC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021E6050 ; =ov109_021E7A18
	add r6, r1, #0
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021E6016
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E6016:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E6022
	add r0, r5, #0
	bl ov109_021E75B4
_021E6022:
	mov r3, #1
	str r3, [r6]
	cmp r4, #0xc
	bhs _021E6044
	mov r0, #3
	and r0, r4
	strb r0, [r5, #0x1b]
	lsr r0, r4, #2
	strb r0, [r5, #0x1c]
	ldrb r1, [r5, #0x1b]
	ldrb r2, [r5, #0x1c]
	add r0, r5, #0
	bl ov109_021E7474
	ldr r0, _021E6054 ; =0x000005DC
	bl PlaySE
_021E6044:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov109_021E5F40
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E6050: .word ov109_021E7A18
_021E6054: .word 0x000005DC
	thumb_func_end ov109_021E5FFC

	thumb_func_start ov109_021E6058
ov109_021E6058: ; 0x021E6058
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #1
	bne _021E6070
	ldr r1, _021E61B4 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #0xf3
	tst r1, r2
	beq _021E6070
	bl ov109_021E75B4
_021E6070:
	ldr r0, _021E61B4 ; =gSystem
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021E6096
	ldrb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	cmp r0, #3
	blo _021E6086
	mov r1, #0xc
	b _021E608E
_021E6086:
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_021E608E:
	add r0, r4, #0
	bl ov109_021E5F40
	pop {r4, pc}
_021E6096:
	mov r1, #2
	tst r1, r0
	beq _021E60A6
	add r0, r4, #0
	mov r1, #0xc
	bl ov109_021E5F40
	pop {r4, pc}
_021E60A6:
	mov r1, #0x20
	tst r1, r0
	beq _021E60F6
	ldrb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	cmp r0, #3
	blo _021E60B8
	mov r0, #0xc
	b _021E60C0
_021E60B8:
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021E60C0:
	cmp r0, #0xc
	bne _021E60C8
	mov r0, #1
	pop {r4, pc}
_021E60C8:
	cmp r1, #0
	beq _021E60E6
	ldr r0, _021E61B8 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x1b]
	mov r3, #1
	sub r0, r0, #1
	strb r0, [r4, #0x1b]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
	b _021E61B0
_021E60E6:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	beq _021E61B0
	add r0, r4, #0
	mov r1, #0xd
	bl ov109_021E5F40
	pop {r4, pc}
_021E60F6:
	mov r1, #0x10
	tst r1, r0
	beq _021E614A
	ldrb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	cmp r0, #3
	blo _021E6108
	mov r0, #0xc
	b _021E6110
_021E6108:
	lsl r0, r0, #2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021E6110:
	cmp r0, #0xc
	bne _021E6118
	mov r0, #1
	pop {r4, pc}
_021E6118:
	cmp r1, #3
	bhs _021E6136
	ldr r0, _021E61B8 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x1b]
	mov r3, #1
	add r0, r0, #1
	strb r0, [r4, #0x1b]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
	b _021E61B0
_021E6136:
	ldrb r0, [r4, #0x1a]
	ldrb r1, [r4, #0x19]
	sub r0, r0, #1
	cmp r1, r0
	bge _021E61B0
	add r0, r4, #0
	mov r1, #0xe
	bl ov109_021E5F40
	pop {r4, pc}
_021E614A:
	mov r1, #0x40
	tst r1, r0
	beq _021E6186
	ldrb r0, [r4, #0x1c]
	cmp r0, #4
	bne _021E6160
	ldrb r0, [r4, #0x1b]
	cmp r0, #3
	bhs _021E6160
	mov r0, #3
	strb r0, [r4, #0x1b]
_021E6160:
	ldr r0, _021E61B8 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x1c]
	mov r3, #1
	add r0, r0, #3
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
	b _021E61B0
_021E6186:
	mov r1, #0x80
	tst r0, r1
	beq _021E61B0
	ldr r0, _021E61B8 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r4, #0x1c]
	mov r3, #1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #0x1c]
	ldrb r1, [r4, #0x1b]
	ldrb r2, [r4, #0x1c]
	add r0, r4, #0
	bl ov109_021E7474
_021E61B0:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
_021E61B4: .word gSystem
_021E61B8: .word 0x000005DC
	thumb_func_end ov109_021E6058

