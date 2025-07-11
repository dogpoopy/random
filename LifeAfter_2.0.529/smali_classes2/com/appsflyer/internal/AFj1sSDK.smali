.class public final Lcom/appsflyer/internal/AFj1sSDK;
.super Ljava/io/FilterInputStream;
.source ""


# static fields
.field private static final AFKeystoreWrapper:S


# instance fields
.field private AFInAppEventParameterName:[B

.field private AFInAppEventType:I

.field private AFLogger:I

.field private d:I

.field private e:I

.field private force:I

.field private i:I

.field private registerClient:I

.field private unregisterClient:I

.field private v:I

.field private valueOf:[B

.field private values:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    sput-short v0, Lcom/appsflyer/internal/AFj1sSDK;->AFKeystoreWrapper:S

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[II[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 29
    iput p1, p0, Lcom/appsflyer/internal/AFj1sSDK;->registerClient:I

    const/16 p1, 0x8

    new-array v0, p1, [B

    .line 58
    iput-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    new-array v0, p1, [B

    .line 59
    iput-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->values:[B

    new-array v0, p1, [B

    .line 60
    iput-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventParameterName:[B

    .line 62
    iput p1, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType:I

    .line 63
    iput p1, p0, Lcom/appsflyer/internal/AFj1sSDK;->unregisterClient:I

    const/4 v0, 0x5

    .line 66
    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    const/16 v0, 0x10

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    iput p5, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFLogger:I

    .line 67
    iput p6, p0, Lcom/appsflyer/internal/AFj1sSDK;->e:I

    const/4 p5, 0x3

    const/4 v0, 0x0

    if-ne p6, p5, :cond_0

    .line 70
    iget-object p6, p0, Lcom/appsflyer/internal/AFj1sSDK;->values:[B

    invoke-static {p4, v0, p6, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    :cond_0
    aget p1, p2, v0

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const/4 p4, 0x1

    aget p2, p2, p4

    int-to-long v4, p2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    if-nez p3, :cond_1

    long-to-int p2, v0

    .line 1195
    iput p2, p0, Lcom/appsflyer/internal/AFj1sSDK;->d:I

    shr-long p2, v0, p5

    .line 1196
    sget-short p4, Lcom/appsflyer/internal/AFj1sSDK;->AFKeystoreWrapper:S

    int-to-long p5, p4

    mul-long p5, p5, p2

    shr-long/2addr p5, p1

    long-to-int p6, p5

    iput p6, p0, Lcom/appsflyer/internal/AFj1sSDK;->force:I

    shr-long p5, v0, p1

    long-to-int p1, p5

    .line 1197
    iput p1, p0, Lcom/appsflyer/internal/AFj1sSDK;->i:I

    int-to-long p4, p4

    add-long/2addr p2, p4

    long-to-int p1, p2

    .line 1198
    iput p1, p0, Lcom/appsflyer/internal/AFj1sSDK;->v:I

    return-void

    :cond_1
    long-to-int p2, v0

    .line 1186
    iput p2, p0, Lcom/appsflyer/internal/AFj1sSDK;->d:I

    mul-int p4, p2, p3

    .line 1187
    iput p4, p0, Lcom/appsflyer/internal/AFj1sSDK;->force:I

    xor-int/2addr p2, p3

    .line 1188
    iput p2, p0, Lcom/appsflyer/internal/AFj1sSDK;->i:I

    shr-long p1, v0, p1

    long-to-int p2, p1

    .line 1189
    iput p2, p0, Lcom/appsflyer/internal/AFj1sSDK;->v:I

    return-void
.end method

.method private AFInAppEventType()V
    .locals 17

    move-object/from16 v0, p0

    .line 208
    iget v1, v0, Lcom/appsflyer/internal/AFj1sSDK;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 210
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    iget-object v4, v0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventParameterName:[B

    array-length v5, v1

    invoke-static {v1, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_0
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    aget-byte v4, v1, v3

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    const/4 v6, 0x1

    aget-byte v7, v1, v6

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff0000

    and-int/2addr v7, v8

    add-int/2addr v4, v7

    const/4 v7, 0x2

    aget-byte v9, v1, v7

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    const v11, 0xff00

    and-int/2addr v9, v11

    add-int/2addr v4, v9

    aget-byte v9, v1, v2

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v4, v9

    const/4 v9, 0x4

    .line 216
    aget-byte v12, v1, v9

    shl-int/lit8 v12, v12, 0x18

    and-int/2addr v5, v12

    const/4 v12, 0x5

    aget-byte v13, v1, v12

    shl-int/lit8 v13, v13, 0x10

    and-int/2addr v8, v13

    add-int/2addr v5, v8

    const/4 v8, 0x6

    aget-byte v13, v1, v8

    shl-int/2addr v13, v10

    and-int/2addr v11, v13

    add-int/2addr v5, v11

    const/4 v11, 0x7

    aget-byte v1, v1, v11

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    const/4 v1, 0x0

    .line 220
    :goto_0
    iget v13, v0, Lcom/appsflyer/internal/AFj1sSDK;->AFLogger:I

    if-ge v1, v13, :cond_1

    .line 222
    sget-short v14, Lcom/appsflyer/internal/AFj1sSDK;->AFKeystoreWrapper:S

    sub-int v15, v13, v1

    mul-int v15, v15, v14

    add-int/2addr v15, v4

    shl-int/lit8 v16, v4, 0x4

    iget v10, v0, Lcom/appsflyer/internal/AFj1sSDK;->i:I

    add-int v16, v16, v10

    xor-int v10, v15, v16

    ushr-int/lit8 v15, v4, 0x5

    iget v11, v0, Lcom/appsflyer/internal/AFj1sSDK;->v:I

    add-int/2addr v15, v11

    xor-int/2addr v10, v15

    sub-int/2addr v5, v10

    sub-int/2addr v13, v1

    mul-int v14, v14, v13

    add-int/2addr v14, v5

    shl-int/lit8 v10, v5, 0x4

    .line 225
    iget v11, v0, Lcom/appsflyer/internal/AFj1sSDK;->d:I

    add-int/2addr v10, v11

    xor-int/2addr v10, v14

    ushr-int/lit8 v11, v5, 0x5

    iget v13, v0, Lcom/appsflyer/internal/AFj1sSDK;->force:I

    add-int/2addr v11, v13

    xor-int/2addr v10, v11

    sub-int/2addr v4, v10

    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x7

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    shr-int/lit8 v10, v4, 0x18

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    shr-int/lit8 v10, v4, 0x10

    int-to-byte v10, v10

    .line 230
    aput-byte v10, v1, v6

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    .line 231
    aput-byte v6, v1, v7

    int-to-byte v4, v4

    .line 232
    aput-byte v4, v1, v2

    shr-int/lit8 v4, v5, 0x18

    int-to-byte v4, v4

    .line 233
    aput-byte v4, v1, v9

    shr-int/lit8 v4, v5, 0x10

    int-to-byte v4, v4

    .line 234
    aput-byte v4, v1, v12

    shr-int/lit8 v4, v5, 0x8

    int-to-byte v4, v4

    .line 235
    aput-byte v4, v1, v8

    int-to-byte v4, v5

    const/4 v5, 0x7

    .line 236
    aput-byte v4, v1, v5

    .line 237
    iget v1, v0, Lcom/appsflyer/internal/AFj1sSDK;->e:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    const/16 v2, 0x8

    :goto_1
    if-ge v1, v2, :cond_2

    .line 1249
    iget-object v4, v0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    aget-byte v5, v4, v1

    iget-object v6, v0, Lcom/appsflyer/internal/AFj1sSDK;->values:[B

    aget-byte v6, v6, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    :cond_2
    iget-object v1, v0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventParameterName:[B

    iget-object v2, v0, Lcom/appsflyer/internal/AFj1sSDK;->values:[B

    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method private values()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->registerClient:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->registerClient:I

    .line 266
    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 269
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    iget v2, p0, Lcom/appsflyer/internal/AFj1sSDK;->registerClient:I

    int-to-byte v3, v2

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    const-string v0, "unexpected block size"

    if-ltz v2, :cond_5

    const/4 v2, 0x1

    .line 283
    :cond_1
    iget-object v3, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    rsub-int/lit8 v6, v2, 0x8

    invoke-virtual {v3, v5, v2, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_1

    :cond_2
    if-lt v2, v1, :cond_4

    .line 306
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType()V

    .line 309
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->registerClient:I

    .line 312
    iput v4, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType:I

    .line 316
    iget v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->registerClient:I

    if-gez v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    const/4 v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v1, v0

    .line 318
    :cond_3
    iput v1, p0, Lcom/appsflyer/internal/AFj1sSDK;->unregisterClient:I

    goto :goto_0

    .line 302
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_6
    :goto_0
    iget v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->unregisterClient:I

    return v0
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1sSDK;->values()I

    .line 162
    iget v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->unregisterClient:I

    iget v1, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1sSDK;->values()I

    .line 110
    iget v0, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType:I

    iget v1, p0, Lcom/appsflyer/internal/AFj1sSDK;->unregisterClient:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1sSDK;->values()I

    .line 133
    iget v2, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType:I

    iget v3, p0, Lcom/appsflyer/internal/AFj1sSDK;->unregisterClient:I

    if-lt v2, v3, :cond_1

    if-ne v1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    return p3

    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 139
    iget-object v4, p0, Lcom/appsflyer/internal/AFj1sSDK;->valueOf:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/appsflyer/internal/AFj1sSDK;->AFInAppEventType:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, v1

    move v1, v3

    goto :goto_0

    :cond_2
    return p3
.end method

.method public final skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 150
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method
