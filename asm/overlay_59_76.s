	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223C09C

	.text

	thumb_func_start ov59_0223C09C
ov59_0223C09C: ; 0x0223C09C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5, #5]
	ldr r4, [r5]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	ldr r0, [r4, #0x78]
	bne _0223C0D0
	ldrb r2, [r5, #6]
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	bl Pokepic_AddAttr
	ldr r0, [r4, #0x78]
	ldrb r2, [r5, #6]
	ldr r0, [r0, #0x20]
	mov r1, #0xd
	neg r2, r2
	bl Pokepic_AddAttr
	b _0223C0E8
_0223C0D0:
	ldrb r2, [r5, #6]
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	neg r2, r2
	bl Pokepic_AddAttr
	ldr r0, [r4, #0x78]
	ldrb r2, [r5, #6]
	ldr r0, [r0, #0x20]
	mov r1, #0xd
	bl Pokepic_AddAttr
_0223C0E8:
	ldrb r1, [r5, #4]
	add r0, r1, #1
	strb r0, [r5, #4]
	cmp r1, #8
	blo _0223C134
	mov r0, #0
	strb r0, [r5, #4]
	ldrb r1, [r5, #5]
	add r0, r1, #1
	strb r0, [r5, #5]
	cmp r1, #4
	blo _0223C134
	ldr r0, [r4, #0x78]
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf4
	bl Pokepic_SetAttr
	ldr r0, [r4, #0x78]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl Pokepic_SetAttr
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	add r4, #0x4f
	sub r0, r0, #1
	strb r0, [r4]
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0223C134:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov59_0223C09C

