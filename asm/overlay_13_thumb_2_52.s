	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223E44
	.public ov13_02223E6C
	.public ov13_02223EA4
	.extern ov13_0224DF30
	.extern ov13_0224DFB4

	.text

	.text
	thumb_func_start ov13_02223E44
ov13_02223E44: ; 0x02223E44
	push {r3, lr}
	bl OS_DisableInterrupts
	ldr r1, _02223E64 ; =ov13_0224DF30
	mov r2, #0
	str r2, [r1, #0x68]
	str r2, [r1, #0x6c]
	ldr r3, _02223E68 ; =ov13_0224DFB4
	add r1, r2, #0
_02223E56:
	add r2, r2, #1
	stmia r3!, {r1}
	cmp r2, #4
	blt _02223E56
	bl OS_RestoreInterrupts
	pop {r3, pc}
	.balign 4, 0
_02223E64: .word ov13_0224DF30
_02223E68: .word ov13_0224DFB4
	thumb_func_end ov13_02223E44

	thumb_func_start ov13_02223E6C
ov13_02223E6C: ; 0x02223E6C
	push {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r1, _02223E9C ; =ov13_0224DF30
	ldr r5, [r1, #0x6c]
	ldr r2, [r1, #0x68]
	cmp r2, r5
	bne _02223E80
	mov r4, #0
	b _02223E92
_02223E80:
	ldr r2, _02223EA0 ; =ov13_0224DFB4
	lsl r3, r5, #2
	ldr r4, [r2, r3]
	add r2, r5, #1
	str r2, [r1, #0x6c]
	cmp r2, #4
	blt _02223E92
	mov r2, #0
	str r2, [r1, #0x6c]
_02223E92:
	bl OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02223E9C: .word ov13_0224DF30
_02223EA0: .word ov13_0224DFB4
	thumb_func_end ov13_02223E6C

	thumb_func_start ov13_02223EA4
ov13_02223EA4: ; 0x02223EA4
	push {r3, r4}
	ldr r1, _02223ECC ; =ov13_0224DF30
	ldr r3, [r1, #0x68]
	ldr r2, [r1, #0x6c]
	add r4, r3, #1
	cmp r4, r2
	beq _02223EC8
	add r2, r2, #3
	cmp r3, r2
	beq _02223EC8
	ldr r2, _02223ED0 ; =ov13_0224DFB4
	lsl r3, r3, #2
	str r0, [r2, r3]
	str r4, [r1, #0x68]
	cmp r4, #4
	blt _02223EC8
	mov r0, #0
	str r0, [r1, #0x68]
_02223EC8:
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02223ECC: .word ov13_0224DF30
_02223ED0: .word ov13_0224DFB4
	thumb_func_end ov13_02223EA4

