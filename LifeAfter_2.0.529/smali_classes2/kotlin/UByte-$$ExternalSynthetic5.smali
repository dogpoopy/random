.class public synthetic Lkotlin/UByte-$$ExternalSynthetic5;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m0(JJ)J
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, p2, v0

    if-gez v4, :cond_1

    xor-long/2addr p0, v2

    xor-long/2addr p2, v2

    cmp-long v2, p0, p2

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 p0, 0x1

    return-wide p0

    :cond_1
    cmp-long v4, p0, v0

    if-ltz v4, :cond_2

    div-long/2addr p0, p2

    return-wide p0

    :cond_2
    const/4 v0, 0x1

    ushr-long v4, p0, v0

    div-long/2addr v4, p2

    shl-long/2addr v4, v0

    mul-long v6, v4, p2

    sub-long/2addr p0, v6

    xor-long/2addr p0, v2

    xor-long/2addr p2, v2

    cmp-long v1, p0, p2

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    int-to-long p0, v0

    add-long/2addr v4, p0

    return-wide v4
.end method
