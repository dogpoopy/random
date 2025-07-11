.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "ASCIIS.java"


# static fields
.field public static final OooO00o:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[I

    return-void

    :array_0
    .array-data 4
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x6800
        0x2800
        0x2800
        0x2800
        0x2800
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x2000
        0x4800
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x8400
        0x8401
        0x8402
        0x8403
        0x8404
        0x8405
        0x8406
        0x8407
        0x8408
        0x8409
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x1000
        0x810a
        0x810b
        0x810c
        0x810d
        0x810e
        0x810f
        0x110
        0x111
        0x112
        0x113
        0x114
        0x115
        0x116
        0x117
        0x118
        0x119
        0x11a
        0x11b
        0x11c
        0x11d
        0x11e
        0x11f
        0x120
        0x121
        0x122
        0x123
        0x1000
        0x1000
        0x1000
        0x1000
        0x11000
        0x1000
        0x820a
        0x820b
        0x820c
        0x820d
        0x820e
        0x820f
        0x210
        0x211
        0x212
        0x213
        0x214
        0x215
        0x216
        0x217
        0x218
        0x219
        0x21a
        0x21b
        0x21c
        0x21d
        0x21e
        0x21f
        0x220
        0x221
        0x222
        0x223
        0x1000
        0x1000
        0x1000
        0x1000
        0x2000
    .end array-data
.end method

.method public static OooO00o(I)Z
    .locals 0

    and-int/lit8 p0, p0, -0x80

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OooO00o(II)Z
    .locals 2

    and-int/lit8 v0, p0, -0x80

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[I

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static OooO0O0(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x30

    rsub-int/lit8 p0, p0, 0x39

    or-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OooO0OO(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x61

    rsub-int/lit8 p0, p0, 0x7a

    or-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OooO0Oo(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x41

    rsub-int/lit8 p0, p0, 0x5a

    or-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static OooO0o(I)I
    .locals 1

    .line 1
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0Oo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    :cond_0
    return p0
.end method

.method public static OooO0o0(I)I
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO00o:[I

    and-int/lit8 p0, p0, 0x7f

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static OooO0oO(I)I
    .locals 1

    .line 1
    invoke-static {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO00o;->OooO0OO(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x20

    :cond_0
    return p0
.end method
