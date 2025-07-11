.class public final Lcom/appsflyer/internal/AFj1rSDK;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static AFInAppEventType(II)[J
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [J

    int-to-long v1, p0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 p0, 0x20

    shl-long/2addr v1, p0

    int-to-long p0, p1

    and-long/2addr p0, v3

    or-long/2addr p0, v1

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    const/4 p0, 0x1

    .line 28
    :goto_0
    array-length p1, v0

    if-ge p0, p1, :cond_0

    add-int/lit8 p1, p0, -0x1

    .line 30
    aget-wide v1, v0, p1

    const-wide/32 v3, 0x6c078965

    const/16 p1, 0x1e

    shr-long v5, v1, p1

    xor-long/2addr v1, v5

    mul-long v1, v1, v3

    int-to-long v3, p0

    add-long/2addr v1, v3

    aput-wide v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
