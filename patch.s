@ 参考として残しておく これをアセンブルしたわけではない

@ 02045e78
.org 0x02045e94, 0xFF
    mov r0, r0  @ .byte 0x00, 0x00, 0xA0, 0xE1

@ 02045e8c
.org 0x02045ea8, 0xFF
    .byte 0x06

@ 020c0291
.org 0x20c033c, 0xFF @  1減らしてアラインメント
    stmdb sp!, {lr}             @ .byte 0x00, 0x40, 0x2D, 0xE9 @ (020c0290 は 0x00なので)
    mov   r0, #0                @ .byte 0x00, 0x00, 0xA0, 0xE3
    bl    0x0220fa3c            @ .byte 0xBC, 0x3D, 0x05, 0xEB @ USA: bl 0x220f81c
    ldm   sp!, {lr}             @ .byte 0x00, 0x40, 0xBD, 0xE8
    cmp   r0, #1                @ .byte 0x01, 0x00, 0x50, 0xE3
    beq   0x20c0368             @ .byte 0x04, 0x00, 0x00, 0x0A
    ldr   r0, [pc, #0x40]       @ .byte 0x40, 0x00, 0x9F, 0xE5
    ldrb  r0, [r0]              @ .byte 0x00, 0x00, 0xD0, 0xE5 
    cmp   r0, #1                @ .byte 0x01, 0x00, 0x50, 0xE3
    bge   0x020c0368            @ .byte 0x00, 0x00, 0x00, 0xAA
    b     0x022130b8            @ .byte 0x53, 0x4B, 0x05, 0xEA @ USA: b 0x2212e98
    mov   r0, lr                @ .byte 0x0E, 0x00, 0xA0, 0xE1
    mov   r1, ip                @ .byte 0x0C, 0x10, 0xA0, 0xE1
    mov   r2, r4                @ .byte 0x04, 0x20, 0xA0, 0xE1
    bl    0x21d52d0             @ .byte 0xD5, 0x53, 0x04, 0xEB @ USA: bl 0x21d5210
    cmp   r6, #1                @ .byte 0x01, 0x00, 0x56, 0xE3
    addeq sp, sp, #0x1c         @ .byte 0x1C, 0xD0, 0x8D, 0x02
    popeq {r0, r4, r5, r6, lr}  @ .byte 0x71, 0x40, 0xBD, 0x08
    bxeq  lr                    @ .byte 0x1E, 0xFF, 0x2F, 0x01
    mov   r6, #1                @ .byte 0x01, 0x60, 0xA0, 0xE3
    ldr   r0, [sp, #0x1c]       @ .byte 0x1C, 0x00, 0x9D, 0xE5
    bl    0x02012e08            @ .byte 0x9C, 0x4A, 0xFD, 0xEB @ USA: bl 0x0x2012db0
    add   r0, r0, #0xa          @ .byte 0x0A, 0x00, 0x80, 0xE2
    b     0x2213018             @ .byte 0x1E, 0x4B, 0x05, 0xEA @ USA: b 0x2212df8
    andeq r7, pc, 0xe000000     @ .byte 0x0E, 0x74, 0x0F, 0x02

@@@@@@@@@@@@@ 以降は Overlay 0 @@@@@@@@@@@@@

@ 0x21f1bf8
.org 0x021f1dec, 0xFF
    .byte 0x00

@ 0x2212ab0
.org 0x02212cd0, 0xFF
    .byte 0xAB

@ 0x2212db4
.org 0x02212fd4, 0xFF
    .byte 0x71

@ 0x2212dcc
.org 0x2212fec, 0xFF
    .byte 0x71

@ 0x2212de8
.org 0x2213008, 0xFF
    .byte 0x71

@ 0x2212e04
.org 0x2213024, 0xFF
    .byte 0x71

@ 0x2212e34
.org 0x2213054, 0xFF
    add r3, r3, #0x8 @ .byte 0x08, 0x30, 0x83, 0xE2

@ 0x2212e94
.org 0x22130b4, 0xFF
    b 0x20c033c         @ .byte 0xA0, 0xB4, 0xFA, 0xEA 
    add sp, sp, #0x1c   @ .byte 0x1C, 0xD0, 0x8D, 0xE2
    .byte 0x71

@ 0x2213c04
.org 0x2213e24, 0xFF
    mov r0, #1          @ .byte 0x01, 0x00, 0xA0, 0xE3
