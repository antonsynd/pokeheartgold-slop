	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_0224143C

    .text

	.text
	thumb_func_start ov83_0224143C
ov83_0224143C: ; 0x0224143C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02241470 ; =0x000007AC
	add r4, r2, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _0224145A
	ldrb r0, [r5, #0x12]
	cmp r0, #0xff
	bne _0224145A
	strb r4, [r5, #0x12]
_0224145A:
	ldrb r1, [r5, #0x12]
	mov r0, #0x7b
	lsl r0, r0, #4
	strh r1, [r5, r0]
	ldrh r2, [r5, #0x10]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02241470: .word 0x000007AC
	thumb_func_end ov83_0224143C

