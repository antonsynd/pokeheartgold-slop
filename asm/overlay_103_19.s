	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED00C
	.public ov103_021ED0A0
	.public ov103_021ED0C0
	.public ov103_021EE468

	.text

	thumb_func_start ov103_021ED00C
ov103_021ED00C: ; 0x021ED00C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x2e
	mov r4, #0
	ldr r1, [r5, #0xc]
	lsl r0, r0, #4
	strh r4, [r1, r0]
	add r6, r4, #0
	mov r7, #0xff
_021ED01E:
	ldr r0, [r5, #0xc]
	add r2, r4, #0
	add r1, r0, r4
	mov r0, #0xb3
	lsl r0, r0, #2
	strb r7, [r1, r0]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r3, #0x9d
	bl Mailbox_AllocAndFetchMailI
	ldr r1, [r5, #0xc]
	add r2, r1, r6
	mov r1, #0x9f
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r5, #0xc]
	add r1, r0, r6
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl Mail_TypeIsValid
	cmp r0, #1
	bne _021ED070
	mov r0, #0x2e
	ldr r1, [r5, #0xc]
	lsl r0, r0, #4
	ldrh r0, [r1, r0]
	add r1, r1, r0
	mov r0, #0xb3
	lsl r0, r0, #2
	strb r4, [r1, r0]
	mov r1, #0x2e
	ldr r0, [r5, #0xc]
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
	add r2, r1, #1
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r2, [r0, r1]
_021ED070:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #0x14
	blo _021ED01E
	mov r0, #0x2e
	ldr r4, [r5, #0xc]
	lsl r0, r0, #4
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _021ED08C
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED08C:
	sub r0, r1, #1
	mov r1, #0xa
	bl _s32_div_f
	ldr r1, _021ED09C ; =0x000002E2
	strh r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED09C: .word 0x000002E2
	thumb_func_end ov103_021ED00C

	thumb_func_start ov103_021ED0A0
ov103_021ED0A0: ; 0x021ED0A0
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	mov r7, #0x9f
	add r6, r0, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021ED0AC:
	ldr r0, [r6, #0xc]
	add r0, r0, r5
	ldr r0, [r0, r7]
	bl Heap_Free
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x14
	blo _021ED0AC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov103_021ED0A0

	thumb_func_start ov103_021ED0C0
ov103_021ED0C0: ; 0x021ED0C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r1, [r5, #0x1c]
	mov r0, #0xa
	mov r4, #0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #0xb3
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, r0, r2
	str r0, [sp]
	lsl r0, r2, #0x10
	lsr r7, r0, #0x10
	add r6, r4, #0
_021ED0E2:
	ldr r0, [sp]
	ldrb r3, [r0, r6]
	cmp r3, #0xff
	bne _021ED0F6
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_0201980C
	b _021ED10A
_021ED0F6:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov103_021EE468
	ldr r0, [r5, #0xc]
	add r1, r4, #0
	ldr r0, [r0, #4]
	bl sub_020197F4
_021ED10A:
	add r0, r7, #1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0xa
	blo _021ED0E2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov103_021ED0C0

