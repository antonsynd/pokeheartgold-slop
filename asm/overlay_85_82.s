	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E730C
	.extern ov85_021EA5AC

	.text

	.text
	thumb_func_start ov85_021E730C
ov85_021E730C: ; 0x021E730C
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r7, r0, #0
	ldr r0, [sp]
	ldr r1, _021E7344 ; =0x00000C9C
	lsl r2, r0, #2
	ldr r0, _021E7348 ; =ov85_021EA5AC
	mov r6, #0
	ldr r4, [r0, r2]
	ldr r0, [sp]
	str r0, [r7, r1]
	cmp r0, #0
	ble _021E7342
	add r5, r7, r1
	add r5, #0x1c
_021E732A:
	ldr r0, _021E734C ; =0x00000D84
	add r1, r5, #0
	ldr r0, [r7, r0]
	add r2, r4, #0
	bl AddWindow
	ldr r0, [sp]
	add r6, r6, #1
	add r4, #8
	add r5, #0x10
	cmp r6, r0
	blt _021E732A
_021E7342:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7344: .word 0x00000C9C
_021E7348: .word ov85_021EA5AC
_021E734C: .word 0x00000D84
	thumb_func_end ov85_021E730C

