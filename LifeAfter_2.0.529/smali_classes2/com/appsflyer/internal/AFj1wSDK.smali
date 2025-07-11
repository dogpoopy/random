.class public final Lcom/appsflyer/internal/AFj1wSDK;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field private AFInAppEventParameterName:[B

.field private AFInAppEventType:[J

.field private final AFKeystoreWrapper:I

.field private AFLogger:I

.field private d:I

.field private e:I

.field private valueOf:[J

.field private values:S


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IISII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const p1, 0x7fffffff

    .line 30
    iput p1, p0, Lcom/appsflyer/internal/AFj1wSDK;->e:I

    const/4 p1, 0x4

    .line 54
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p4

    const/16 v0, 0x8

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    iput p4, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    .line 56
    iget p4, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    new-array v0, p4, [B

    iput-object v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventParameterName:[B

    new-array v0, p1, [J

    .line 57
    iput-object v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventType:[J

    new-array p1, p1, [J

    .line 58
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1wSDK;->valueOf:[J

    .line 60
    iput p4, p0, Lcom/appsflyer/internal/AFj1wSDK;->d:I

    .line 61
    iput p4, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFLogger:I

    xor-int p1, p2, p6

    xor-int p2, p4, p6

    .line 63
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFj1rSDK;->AFInAppEventType(II)[J

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventType:[J

    xor-int p1, p3, p6

    xor-int p2, p5, p6

    .line 65
    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFj1rSDK;->AFInAppEventType(II)[J

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFj1wSDK;->valueOf:[J

    return-void
.end method

.method private AFInAppEventParameterName()V
    .locals 12

    .line 150
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventType:[J

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->valueOf:[J

    iget-short v2, p0, Lcom/appsflyer/internal/AFj1wSDK;->values:S

    .line 1086
    rem-int/lit8 v3, v2, 0x4

    aget-wide v3, v0, v3

    const-wide/32 v5, 0x7ffffdcd

    mul-long v3, v3, v5

    add-int/lit8 v7, v2, 0x2

    rem-int/lit8 v7, v7, 0x4

    aget-wide v8, v1, v7

    add-long/2addr v3, v8

    const-wide/32 v8, 0x7fffffff

    rem-long/2addr v3, v8

    add-int/lit8 v2, v2, 0x3

    .line 1089
    rem-int/lit8 v2, v2, 0x4

    aget-wide v10, v0, v2

    mul-long v10, v10, v5

    aget-wide v5, v1, v7

    add-long/2addr v10, v5

    div-long/2addr v10, v8

    aput-wide v10, v1, v2

    .line 1091
    aput-wide v3, v0, v2

    const/4 v0, 0x0

    .line 151
    :goto_0
    iget v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventParameterName:[B

    aget-byte v2, v1, v0

    int-to-long v2, v2

    iget-object v4, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventType:[J

    iget-short v5, p0, Lcom/appsflyer/internal/AFj1wSDK;->values:S

    aget-wide v5, v4, v5

    shl-int/lit8 v4, v0, 0x3

    shr-long v4, v5, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-short v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->values:S

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->values:S

    return-void
.end method

.method private valueOf()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->e:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->e:I

    .line 171
    :cond_0
    iget v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->d:I

    iget v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    if-ne v0, v1, :cond_6

    .line 174
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventParameterName:[B

    iget v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->e:I

    int-to-byte v2, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const-string v0, "unexpected block size"

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    .line 188
    :cond_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventParameterName:[B

    iget v5, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    add-int/2addr v1, v2

    .line 201
    iget v2, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    if-lt v1, v2, :cond_1

    .line 205
    :cond_2
    iget v2, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    if-lt v1, v2, :cond_4

    .line 211
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventParameterName()V

    .line 214
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->e:I

    .line 217
    iput v3, p0, Lcom/appsflyer/internal/AFj1wSDK;->d:I

    .line 221
    iget v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->e:I

    if-gez v0, :cond_3

    .line 222
    iget v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    iget-object v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventParameterName:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    goto :goto_0

    .line 223
    :cond_3
    iget v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFKeystoreWrapper:I

    :goto_0
    iput v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFLogger:I

    goto :goto_1

    .line 207
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_6
    :goto_1
    iget v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFLogger:I

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

    .line 131
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1wSDK;->valueOf()I

    .line 132
    iget v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFLogger:I

    iget v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->d:I

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

    .line 77
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1wSDK;->valueOf()I

    .line 80
    iget v0, p0, Lcom/appsflyer/internal/AFj1wSDK;->d:I

    iget v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFLogger:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventParameterName:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/appsflyer/internal/AFj1wSDK;->d:I

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

    .line 100
    invoke-direct {p0}, Lcom/appsflyer/internal/AFj1wSDK;->valueOf()I

    .line 103
    iget v2, p0, Lcom/appsflyer/internal/AFj1wSDK;->d:I

    iget v3, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFLogger:I

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

    .line 109
    iget-object v4, p0, Lcom/appsflyer/internal/AFj1wSDK;->AFInAppEventParameterName:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/appsflyer/internal/AFj1wSDK;->d:I

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

    .line 120
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
