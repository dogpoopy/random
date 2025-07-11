.class public final Lcom/appsflyer/internal/AFf1cSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFInAppEventParameterName:I = 0x0

.field private static AFInAppEventType:I = 0x1

.field private static AFKeystoreWrapper:J

.field private static valueOf:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFf1cSDK;->AFKeystoreWrapper()V

    const/16 v0, 0x30

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    invoke-static {v1, v0, v2, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    sget v0, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 106
    sget v0, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xc

    const-string v5, "\u2063"

    const-string v6, ""

    const/4 v7, 0x5

    if-eqz v0, :cond_1

    new-array v0, v7, [Ljava/lang/String;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    .line 96
    aput-object p3, v0, v7

    aput-object p4, v0, v1

    aput-object v6, v0, v7

    .line 3119
    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x4f

    if-ge p1, p2, :cond_4

    goto :goto_2

    :cond_1
    new-array v0, v7, [Ljava/lang/String;

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object v6, v0, p1

    .line 3119
    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {p1, p0}, Lcom/appsflyer/internal/AFb1mSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    :goto_2
    sget p1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return-object p0

    .line 106
    :cond_4
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static AFKeystoreWrapper()V
    .locals 2

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFf1cSDK;->valueOf:[C

    const-wide v0, 0x289f2c70696a56d3L

    sput-wide v0, Lcom/appsflyer/internal/AFf1cSDK;->AFKeystoreWrapper:J

    return-void

    nop

    :array_0
    .array-data 2
        0x1855s
        0x7596s
        -0x3c29s
        0x511cs
        -0x50a7s
        0x3c9fs
        -0x753ds
        0x1805s
        0x764ds
        -0x3c7cs
        0x51cfs
        -0x50c2s
        0x3d70s
        -0x754bs
        0x18f8s
        0x7639s
        -0x3b9cs
        0x51a3s
        -0x501cs
        0x3d2as
        -0x7498s
        0x18a0s
        0x7690s
        -0x3b25s
        0x521as
        -0x5fa3s
        0x3d9cs
        -0x744ds
        0x1904s
        0x7742s
        -0x3b77s
        0x52cas
        -0x5fd0s
        0x3e73s
        -0x744bs
        0x19fbs
        0x773cs
        -0x3af8s
        0x52a1s
        -0x5f1cs
        0x3e28s
        -0x73e8s
        0x19ads
        0x77e6s
        -0x3a2bs
        0x5310s
        -0x5ea1s
        0x3e9fs
        -0x733fs
        0x1a01s
        0x6843s
        -0x3a78s
        0x53cds
        -0x5ef2s
        0x3f76s
        -0x734es
        0x1af9s
        0x684cs
        -0x3986s
        0x53a2s
        -0x5e1as
        0x3f22s
        -0x7292s
        0x1adas
    .end array-data
.end method

.method private static a(ICI[Ljava/lang/Object;)V
    .locals 14

    move v0, p0

    .line 4089
    new-instance v1, Lcom/appsflyer/internal/AFj1qSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFj1qSDK;-><init>()V

    .line 4092
    new-array v2, v0, [J

    const/4 v3, 0x0

    .line 4095
    iput v3, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    :goto_0
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    const/4 v5, 0x1

    if-ge v4, v0, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    if-eq v4, v5, :cond_1

    .line 4097
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    sget-object v6, Lcom/appsflyer/internal/AFf1cSDK;->valueOf:[C

    iget v7, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    add-int v7, p2, v7

    aget-char v6, v6, v7

    int-to-long v6, v6

    const-wide v8, -0x23df894c8c5ac4f0L    # -5.983218527406806E135

    xor-long/2addr v6, v8

    long-to-int v7, v6

    int-to-char v6, v7

    int-to-long v6, v6

    iget v10, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    int-to-long v10, v10

    sget-wide v12, Lcom/appsflyer/internal/AFf1cSDK;->AFKeystoreWrapper:J

    xor-long/2addr v8, v12

    mul-long v10, v10, v8

    xor-long/2addr v6, v10

    move v8, p1

    int-to-long v9, v8

    xor-long/2addr v6, v9

    aput-wide v6, v2, v4

    .line 4095
    iget v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    .line 4106
    sget v4, Lcom/appsflyer/internal/AFf1cSDK;->$11:I

    add-int/lit8 v4, v4, 0x67

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFf1cSDK;->$10:I

    rem-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 4105
    :cond_1
    array-length v4, v2

    new-array v4, v4, [C

    .line 4106
    iput v3, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    :goto_2
    iget v6, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    if-ge v6, v0, :cond_4

    .line 4111
    sget v6, Lcom/appsflyer/internal/AFf1cSDK;->$11:I

    add-int/lit8 v6, v6, 0x45

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFf1cSDK;->$10:I

    rem-int/lit8 v6, v6, 0x2

    const/16 v7, 0x33

    if-eqz v6, :cond_2

    const/16 v6, 0x22

    goto :goto_3

    :cond_2
    const/16 v6, 0x33

    :goto_3
    if-eq v6, v7, :cond_3

    .line 4108
    iget v6, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    iget v7, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    aget-wide v7, v2, v7

    long-to-int v8, v7

    int-to-char v7, v8

    aput-char v7, v4, v6

    .line 4106
    iget v6, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    rem-int/2addr v6, v5

    :goto_4
    iput v6, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    goto :goto_2

    .line 4108
    :cond_3
    iget v6, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    iget v7, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    aget-wide v7, v2, v7

    long-to-int v8, v7

    int-to-char v7, v8

    aput-char v7, v4, v6

    .line 4106
    iget v6, v1, Lcom/appsflyer/internal/AFj1qSDK;->AFInAppEventParameterName:I

    add-int/2addr v6, v5

    goto :goto_4

    .line 4111
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v0, p3, v3

    return-void
.end method

.method private static values(Lcom/appsflyer/internal/AFh1nSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFh1hSDK;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 64
    new-instance p1, Lcom/appsflyer/internal/AFh1hSDK;

    .line 1063
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1nSDK;->valueOf:Lcom/appsflyer/internal/AFh1pSDK;

    .line 64
    sget-object p2, Lcom/appsflyer/internal/AFh1pSDK;->valueOf:Lcom/appsflyer/internal/AFh1pSDK;

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object p0, Lcom/appsflyer/internal/AFh1fSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

    invoke-direct {p1, v0, p0}, Lcom/appsflyer/internal/AFh1hSDK;-><init>(ZLcom/appsflyer/internal/AFh1fSDK;)V

    return-object p1

    :cond_1
    const/16 v2, 0x30

    const-string v3, ""

    .line 68
    invoke-static {v3, v2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    add-int/lit16 v8, v8, 0x2375

    int-to-char v4, v8

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    shr-int/lit8 v5, v5, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v0}, Lcom/appsflyer/internal/AFf1cSDK;->a(ICI[Ljava/lang/Object;)V

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 2063
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1nSDK;->valueOf:Lcom/appsflyer/internal/AFh1pSDK;

    .line 70
    sget-object v2, Lcom/appsflyer/internal/AFh1pSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1pSDK;

    if-ne v1, v2, :cond_2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object p3, v0

    .line 3058
    :goto_1
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1nSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "android"

    const-string v0, "v1"

    .line 76
    invoke-static {p2, p0, p3, v0, v3}, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 78
    new-instance p1, Lcom/appsflyer/internal/AFh1hSDK;

    if-eqz p0, :cond_3

    sget-object p2, Lcom/appsflyer/internal/AFh1fSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFh1fSDK;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/appsflyer/internal/AFh1fSDK;->values:Lcom/appsflyer/internal/AFh1fSDK;

    :goto_2
    invoke-direct {p1, p0, p2}, Lcom/appsflyer/internal/AFh1hSDK;-><init>(ZLcom/appsflyer/internal/AFh1fSDK;)V

    return-object p1
.end method


# virtual methods
.method public final valueOf(Lcom/appsflyer/internal/AFh1nSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFh1hSDK;
    .locals 4

    .line 47
    sget v0, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x2b

    if-eqz p1, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eq v0, v2, :cond_4

    const/16 v0, 0x33

    if-eqz p4, :cond_3

    const/16 v1, 0x13

    goto :goto_2

    :cond_3
    const/16 v1, 0x33

    :goto_2
    if-eq v1, v0, :cond_4

    sget v0, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventType:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1cSDK;->AFInAppEventParameterName:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_5

    .line 45
    new-instance p1, Lcom/appsflyer/internal/AFh1hSDK;

    sget-object p2, Lcom/appsflyer/internal/AFh1fSDK;->valueOf:Lcom/appsflyer/internal/AFh1fSDK;

    invoke-direct {p1, v3, p2}, Lcom/appsflyer/internal/AFh1hSDK;-><init>(ZLcom/appsflyer/internal/AFh1fSDK;)V

    return-object p1

    .line 47
    :cond_5
    invoke-static {p1, p2, p3, p4}, Lcom/appsflyer/internal/AFf1cSDK;->values(Lcom/appsflyer/internal/AFh1nSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/AFh1hSDK;

    move-result-object p1

    return-object p1
.end method
