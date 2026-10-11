	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0223142C
	.public ov40_02231868

	.text

	thumb_func_start ov40_02231868
ov40_02231868: ; 0x02231868
	push {r4, lr}
	add r4, r0, #0
	bl ov40_0223142C
	cmp r0, #0
	beq _02231898
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bne _02231890
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	add r0, r4, #0
	mov r1, #0
	bl ov40_0222BF80
	b _02231898
_02231890:
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222BF80
_02231898:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov40_02231868

