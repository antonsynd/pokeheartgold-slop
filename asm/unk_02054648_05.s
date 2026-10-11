	.include "asm/macros.inc"
	.include "unk_02054648.inc"
	.include "global.inc"
	.public GetMetatileBehavior
	.public sub_020548C0
	.public sub_020548EC

	.text
	thumb_func_start sub_020548C0
sub_020548C0: ; 0x020548C0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0, #0x60]
	add r3, sp, #0
	ldr r4, [r4, #4]
	blx r4
	cmp r0, #0
	beq _020548E6
	add r0, sp, #0
	ldrh r0, [r0]
	asr r0, r0, #0xf
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #1
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #1
	beq _020548E8
_020548E6:
	mov r0, #0
_020548E8:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020548C0

	thumb_func_start sub_020548EC
sub_020548EC: ; 0x020548EC
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0, #0x60]
	add r3, sp, #0
	ldr r4, [r4, #4]
	blx r4
	cmp r0, #0
	beq _02054912
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #4
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x7f
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, pc}
_02054912:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_020548EC

	thumb_func_start GetMetatileBehavior
GetMetatileBehavior: ; 0x02054918
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0, #0x60]
	add r3, sp, #0
	ldr r4, [r4, #4]
	blx r4
	cmp r0, #0
	beq _02054938
	add r0, sp, #0
	ldrh r0, [r0]
	add sp, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, pc}
_02054938:
	mov r0, #0xff
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end GetMetatileBehavior

