	.include "asm/macros.inc"
	.include "overlay_00_thumb.inc"
	.include "global.inc"
	.public ov00_021E7234
	.public ov00_021E727C
	.extern _0221A680
	.extern ov00_021E65D4
	.extern ov00_021E6638

	.text

	.text
	thumb_func_start ov00_021E7234
ov00_021E7234: ; 0x021E7234
	push {r4, lr}
	ldr r1, _021E7274 ; =_0221A680
	lsl r4, r0, #2
	ldr r3, [r1]
	mov r1, #0x3e
	add r2, r3, r4
	lsl r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	beq _021E7270
	add r2, r3, r0
	ldr r0, _021E7278 ; =0x000010E1
	ldrb r0, [r2, r0]
	cmp r0, #1
	bne _021E725A
	add r0, r1, #0
	bl Heap_Free
	b _021E7262
_021E725A:
	mov r0, #0
	add r2, r0, #0
	bl ov00_021E6638
_021E7262:
	ldr r0, _021E7274 ; =_0221A680
	mov r2, #0
	ldr r0, [r0]
	add r1, r0, r4
	mov r0, #0x3e
	lsl r0, r0, #6
	str r2, [r1, r0]
_021E7270:
	pop {r4, pc}
	nop
_021E7274: .word _0221A680
_021E7278: .word 0x000010E1
	thumb_func_end ov00_021E7234

	thumb_func_start ov00_021E727C
ov00_021E727C: ; 0x021E727C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov00_021E7234
	ldr r0, _021E72F4 ; =_0221A680
	lsl r4, r5, #2
	ldr r2, [r0]
	mov r0, #0x3e
	add r1, r2, r4
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021E72F0
	ldr r1, _021E72F8 ; =0x00001088
	ldr r0, [r2, r1]
	cmp r0, #0xb
	bne _021E72B4
	sub r1, #0x68
	bl Heap_Alloc
	ldr r2, _021E72F4 ; =_0221A680
	ldr r1, [r2]
	add r3, r1, r4
	mov r1, #0x3e
	lsl r1, r1, #6
	str r0, [r3, r1]
	mov r3, #1
	b _021E72CC
_021E72B4:
	mov r0, #0
	sub r1, #0x88
	mov r2, #0x20
	bl ov00_021E65D4
	ldr r2, _021E72F4 ; =_0221A680
	ldr r1, [r2]
	add r3, r1, r4
	mov r1, #0x3e
	lsl r1, r1, #6
	str r0, [r3, r1]
	mov r3, #0
_021E72CC:
	ldr r0, [r2]
	mov r2, #0x3e
	add r1, r0, r5
	ldr r0, _021E72FC ; =0x000010E1
	lsl r2, r2, #6
	strb r3, [r1, r0]
	ldr r1, _021E72F4 ; =_0221A680
	lsl r0, r5, #0x18
	ldr r1, [r1]
	mov r3, #0x1f
	add r1, r1, r4
	ldr r1, [r1, r2]
	lsr r0, r0, #0x18
	add r1, #0x1f
	bic r1, r3
	add r2, #0x80
	bl ov00_021F9850
_021E72F0:
	pop {r3, r4, r5, pc}
	nop
_021E72F4: .word _0221A680
_021E72F8: .word 0x00001088
_021E72FC: .word 0x000010E1
	thumb_func_end ov00_021E727C

