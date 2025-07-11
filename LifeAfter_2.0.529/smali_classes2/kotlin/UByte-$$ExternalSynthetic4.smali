.class public synthetic Lkotlin/UByte-$$ExternalSynthetic4;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m0(JJ)J
    .locals 7

    const-wide/16 v0, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p2, v0

    if-gez v4, :cond_1

    xor-long v0, p0, v2

    xor-long/2addr v2, p2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-wide p0

    :cond_0
    sub-long/2addr p0, p2

    return-wide p0

    :cond_1
    cmp-long v4, p0, v0

    if-ltz v4, :cond_2

    rem-long/2addr p0, p2

    return-wide p0

    :cond_2
    const/4 v4, 0x1

    ushr-long v5, p0, v4

    div-long/2addr v5, p2

    shl-long v4, v5, v4

    mul-long v4, v4, p2

    sub-long/2addr p0, v4

    xor-long v4, p0, v2

    xor-long/2addr v2, p2

    cmp-long v6, v4, v2

    if-ltz v6, :cond_3

    goto :goto_0

    :cond_3
    move-wide p2, v0

    :goto_0
    sub-long/2addr p0, p2

    return-wide p0
.end method
