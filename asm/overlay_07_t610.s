	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02231AE0
	.public ov07_02231AF0
	.public ov07_02231B00
	.public ov07_02231B10
	.public ov07_02231B20
	.public ov07_02231B30
	.public ov07_02231B40
	.public ov07_02231B50
	.public ov07_02231B60
	.public ov07_02231B70
	.public ov07_02231B80
	.public ov07_02231B90
	.public ov07_02231BC0
	.public ov07_02231BF0
	.public ov07_02231C20
	.public ov07_02231C50
	.public ov07_02231C80
	.public ov07_02231CB0
	.public ov07_02231CE0
	.public ov07_02231D10
	.public ov07_02231D40
	.public ov07_02231D70
	.public ov07_02231DA0
	.extern ov07_0221BFC0
	.extern ov07_0221C478
	.extern ov07_02231924
	.extern ov07_02231A70
	.extern ov07_02231AD0

	.text

	.text
	thumb_func_start ov07_02231AE0
ov07_02231AE0: ; 0x02231AE0
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231AE0

	thumb_func_start ov07_02231AF0
ov07_02231AF0: ; 0x02231AF0
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231AF0

	thumb_func_start ov07_02231B00
ov07_02231B00: ; 0x02231B00
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #3
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B00

	thumb_func_start ov07_02231B10
ov07_02231B10: ; 0x02231B10
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #4
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B10

	thumb_func_start ov07_02231B20
ov07_02231B20: ; 0x02231B20
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #5
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B20

	thumb_func_start ov07_02231B30
ov07_02231B30: ; 0x02231B30
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #6
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B30

	thumb_func_start ov07_02231B40
ov07_02231B40: ; 0x02231B40
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #7
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B40

	thumb_func_start ov07_02231B50
ov07_02231B50: ; 0x02231B50
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #8
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B50

	thumb_func_start ov07_02231B60
ov07_02231B60: ; 0x02231B60
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #9
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B60

	thumb_func_start ov07_02231B70
ov07_02231B70: ; 0x02231B70
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0xa
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B70

	thumb_func_start ov07_02231B80
ov07_02231B80: ; 0x02231B80
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0xb
	str r4, [sp]
	bl ov07_02231A70
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov07_02231B80

	thumb_func_start ov07_02231B90
ov07_02231B90: ; 0x02231B90
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231AD0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231B90

	thumb_func_start ov07_02231BC0
ov07_02231BC0: ; 0x02231BC0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231AE0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231BC0

	thumb_func_start ov07_02231BF0
ov07_02231BF0: ; 0x02231BF0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231AF0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231BF0

	thumb_func_start ov07_02231C20
ov07_02231C20: ; 0x02231C20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B00
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231C20

	thumb_func_start ov07_02231C50
ov07_02231C50: ; 0x02231C50
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231C50

	thumb_func_start ov07_02231C80
ov07_02231C80: ; 0x02231C80
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231C80

	thumb_func_start ov07_02231CB0
ov07_02231CB0: ; 0x02231CB0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231CB0

	thumb_func_start ov07_02231CE0
ov07_02231CE0: ; 0x02231CE0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B40
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231CE0

	thumb_func_start ov07_02231D10
ov07_02231D10: ; 0x02231D10
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B50
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231D10

	thumb_func_start ov07_02231D40
ov07_02231D40: ; 0x02231D40
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B60
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231D40

	thumb_func_start ov07_02231D70
ov07_02231D70: ; 0x02231D70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B70
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231D70

	thumb_func_start ov07_02231DA0
ov07_02231DA0: ; 0x02231DA0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov07_0221C478
	bl sub_02015530
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r4, #0
	bl ov07_0221BFC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov07_02231B80
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov07_02231DA0

