; RUN: llc < %s -march=pic16 | FileCheck %s

@G1 = common global i16 0, section "usersection", align 1 
; CHECK: usersection UDATA
; CHECK: @G1 RES 2 
