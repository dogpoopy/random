.class public Lcom/appsflyer/internal/AFc1fSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final $$a:[B = null

.field public static final $$b:I = 0x0

.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFLogger$LogLevel:[B

.field private static AFVersionDeclaration:[B

.field private static AppsFlyer2dXConversionCallback:[B

.field private static afErrorLogForExcManagerOnly:Ljava/lang/Object;

.field private static final afLogForce:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final afRDLog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static getLevel:Ljava/lang/Object;

.field private static init:I

.field private static onAppOpenAttributionNative:J

.field private static onInstallConversionFailureNative:I


# direct methods
.method private static $$c(ISS)Ljava/lang/String;
    .locals 9

    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v0, v0, 0x50

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    neg-int p0, p0

    or-int/lit8 v0, p0, 0x77

    shl-int/2addr v0, v1

    xor-int/lit8 p0, p0, 0x77

    sub-int/2addr v0, p0

    xor-int/lit8 p0, p1, 0x58

    and-int/lit8 p1, p1, 0x58

    shl-int/2addr p1, v1

    add-int/2addr p0, p1

    xor-int/lit8 p1, p0, -0x54

    and-int/lit8 p0, p0, -0x54

    shl-int/2addr p0, v1

    add-int/2addr p1, p0

    rsub-int/lit8 p0, p2, 0x24

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    new-array v3, p0, [B

    xor-int/lit8 v4, p0, -0x1

    and-int/lit8 p0, p0, -0x1

    shl-int/2addr p0, v1

    add-int/2addr v4, p0

    const/16 p0, 0xa

    if-nez p2, :cond_1

    const/16 v5, 0x46

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    :goto_1
    if-eq v5, p0, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    goto :goto_5

    :cond_3
    const/16 v0, 0x72

    rem-int/2addr v0, p0

    xor-int/lit16 p0, p1, 0xc4

    and-int/lit16 p1, p1, 0xc4

    shl-int/2addr p1, v1

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x7a

    add-int/lit8 p1, p0, -0x1

    const/16 p0, 0x39

    ushr-int/2addr p0, p2

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    new-array v3, p0, [B

    xor-int/lit8 v4, p0, 0x4d

    and-int/lit8 p0, p0, 0x4d

    shl-int/2addr p0, v1

    add-int/2addr v4, p0

    if-nez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    :goto_2
    if-eq p0, v1, :cond_2

    :goto_3
    sget p0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v5, p0, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 p0, p0, 0x2

    sget p0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 p0, p0, 0x76

    sub-int/2addr p0, v1

    rem-int/lit16 v5, p0, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_5

    const/4 p0, 0x1

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    :goto_4
    move p0, p1

    move-object v5, v3

    const/4 v3, 0x0

    goto :goto_6

    :goto_5
    int-to-byte v5, v0

    aput-byte v5, v3, p0

    xor-int/lit8 v5, p1, 0x1c

    and-int/lit8 p1, p1, 0x1c

    shl-int/2addr p1, v1

    add-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1a

    sub-int/2addr v5, v1

    if-ne p0, v4, :cond_6

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_6
    xor-int/lit8 p1, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    shl-int/2addr p0, v1

    add-int/2addr p1, p0

    aget-byte p0, p2, v5

    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v7, v6, 0x31

    and-int/lit8 v6, v6, 0x31

    shl-int/2addr v6, v1

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v7, v7, 0x2

    move-object v8, v3

    move v3, p1

    move p1, v5

    move-object v5, v8

    :goto_6
    neg-int p0, p0

    and-int v6, v0, p0

    or-int/2addr p0, v0

    add-int/2addr v6, p0

    add-int/lit8 v0, v6, 0x1

    sget p0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v6, p0, 0x4d

    and-int/lit8 p0, p0, 0x4d

    shl-int/2addr p0, v1

    add-int/2addr v6, p0

    rem-int/lit16 p0, v6, 0x80

    sput p0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v6, v6, 0x2

    move p0, v3

    move-object v3, v5

    goto :goto_5
.end method

.method static constructor <clinit>()V
    .locals 43

    invoke-static {}, Lcom/appsflyer/internal/AFc1fSDK;->init$0()V

    const-wide v1, -0x514d53cbfa02e07fL    # -9.61186380690735E-84

    .line 1000
    sput-wide v1, Lcom/appsflyer/internal/AFc1fSDK;->onAppOpenAttributionNative:J

    const v1, 0x17f47e04    # 1.5799941E-24f

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->init:I

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/appsflyer/internal/AFc1fSDK;->AppsFlyer2dXConversionCallback:[B

    const/4 v1, 0x3

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->onInstallConversionFailureNative:I

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afLogForce:Ljava/util/Map;

    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/appsflyer/internal/AFc1fSDK;->afRDLog:Ljava/util/Map;

    .line 92
    :try_start_0
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0xe1

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    xor-int/lit16 v4, v2, 0x160

    and-int/lit16 v5, v2, 0x160

    or-int/2addr v4, v5

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/4 v6, 0x6

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    .line 96
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v4, v3

    int-to-byte v4, v4

    const/16 v6, 0x399

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x194

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const/16 v6, 0x15

    const/4 v7, 0x0

    .line 1793
    :try_start_1
    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x1f

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x2ae

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v11, 0x1d

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    .line 1794
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v9, v9, v3

    int-to-byte v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v11, 0x78

    aget-byte v10, v10, v11

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x7a

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Class;

    .line 1795
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v9, v5

    check-cast v9, [Ljava/lang/Object;

    .line 1796
    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_1

    goto :goto_1

    :catch_0
    move-object v8, v5

    .line 1807
    :cond_1
    :try_start_2
    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x1f

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x1b4

    int-to-short v10, v10

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0xc

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    .line 1808
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v10, v10, v6

    int-to-byte v10, v10

    xor-int/lit16 v11, v10, 0x309

    and-int/lit16 v12, v10, 0x309

    or-int/2addr v11, v12

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0xba

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Class;

    .line 1809
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v10, v5

    check-cast v10, [Ljava/lang/Object;

    .line 1810
    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    if-eqz v8, :cond_2

    const/16 v9, 0x4b

    goto :goto_2

    :cond_2
    const/16 v9, 0x5e

    :goto_2
    const/16 v10, 0x5e

    if-eq v9, v10, :cond_3

    .line 113
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v10, v10, v6

    int-to-byte v10, v10

    int-to-short v11, v3

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x1a3

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    check-cast v11, [Ljava/lang/Class;

    .line 114
    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v10, v5

    check-cast v10, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    :cond_3
    move-object v9, v5

    :goto_3
    if-eqz v8, :cond_4

    const/16 v10, 0x1e

    goto :goto_4

    :cond_4
    const/16 v10, 0x2e

    :goto_4
    const/16 v11, 0x2e

    if-eq v10, v11, :cond_5

    .line 125
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v11, v11, v6

    int-to-byte v11, v11

    xor-int/lit16 v12, v11, 0x12e

    and-int/lit16 v13, v11, 0x12e

    or-int/2addr v12, v13

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0xf

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    move-object v12, v5

    check-cast v12, [Ljava/lang/Class;

    .line 126
    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v11, v5

    check-cast v11, [Ljava/lang/Object;

    .line 127
    invoke-virtual {v10, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    :cond_5
    move-object v10, v5

    :goto_5
    const/4 v11, 0x2

    if-eqz v8, :cond_6

    .line 3755
    sget v12, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v13, v12, 0x15

    or-int/2addr v12, v6

    add-int/2addr v13, v12

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v13, v11

    .line 137
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v13, v13, v6

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0xe5

    and-int/lit16 v15, v13, 0xe5

    or-int/2addr v14, v15

    int-to-short v14, v14

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v16, 0x1a3

    aget-byte v15, v15, v16

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v13

    move-object v14, v5

    check-cast v14, [Ljava/lang/Class;

    .line 138
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v13, v5

    check-cast v13, [Ljava/lang/Object;

    .line 139
    invoke-virtual {v12, v8, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    :cond_6
    move-object v8, v5

    :goto_6
    const/16 v12, 0x3c

    const/16 v13, 0x165

    const/16 v14, 0x75

    const/4 v15, 0x1

    if-eqz v9, :cond_7

    move-object v1, v9

    goto :goto_8

    :cond_7
    if-nez v4, :cond_8

    const/16 v9, 0xd

    goto :goto_7

    :cond_8
    const/16 v9, 0x3c

    :goto_7
    if-eq v9, v12, :cond_9

    move-object v1, v5

    goto :goto_8

    .line 147
    :cond_9
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v17, 0x30d

    aget-byte v16, v16, v17

    or-int/lit8 v17, v16, 0x1

    shl-int/lit8 v17, v17, 0x1

    xor-int/lit8 v16, v16, 0x1

    sub-int v1, v17, v16

    int-to-byte v1, v1

    const/16 v11, 0x23b

    int-to-short v11, v11

    sget-object v17, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v19, 0x1a3

    aget-byte v12, v17, v19

    int-to-byte v12, v12

    invoke-static {v1, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10

    :try_start_7
    new-array v4, v15, [Ljava/lang/Object;

    aput-object v1, v4, v7

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v1, v1, v14

    int-to-byte v1, v1

    xor-int/lit16 v9, v1, 0x320

    and-int/lit16 v11, v1, 0x320

    or-int/2addr v9, v11

    int-to-short v9, v9

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v1, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v9, v15, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v7

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4e

    :goto_8
    if-eqz v8, :cond_a

    const/4 v4, 0x0

    goto :goto_9

    :cond_a
    const/4 v4, 0x1

    :goto_9
    if-eq v4, v15, :cond_b

    goto/16 :goto_a

    .line 151
    :cond_b
    :try_start_8
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v4, v14

    int-to-byte v4, v4

    const/16 v8, 0x289

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v11, 0x1f

    aget-byte v9, v9, v11

    int-to-byte v9, v9

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    :try_start_9
    new-array v8, v15, [Ljava/lang/Object;

    aput-object v4, v8, v7

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v4, v14

    int-to-byte v4, v4

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v11, 0xfc

    aget-byte v9, v9, v11

    int-to-short v9, v9

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v11, v11, v3

    int-to-byte v11, v11

    invoke-static {v4, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v9, v9, v6

    int-to-byte v9, v9

    xor-int/lit16 v11, v9, 0x286

    and-int/lit16 v12, v9, 0x286

    or-int/2addr v11, v12

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v17, 0x1a3

    aget-byte v12, v12, v17

    int-to-byte v12, v12

    invoke-static {v9, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    new-array v11, v15, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v7

    invoke-virtual {v4, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4d

    :try_start_a
    new-array v8, v15, [Ljava/lang/Object;

    aput-object v4, v8, v7

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v4, v14

    int-to-byte v4, v4

    xor-int/lit16 v9, v4, 0x320

    and-int/lit16 v11, v4, 0x320

    or-int/2addr v9, v11

    int-to-short v9, v9

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v4, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v9, v15, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v7

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4c

    :goto_a
    if-nez v10, :cond_c

    const/16 v4, 0x4b

    goto :goto_b

    :cond_c
    const/16 v4, 0x2c

    :goto_b
    const/16 v9, 0x2c

    if-eq v4, v9, :cond_f

    if-eqz v1, :cond_d

    const/16 v12, 0x4f

    const/16 v4, 0x3c

    goto :goto_c

    :cond_d
    const/16 v4, 0x3c

    const/16 v12, 0x3c

    :goto_c
    if-eq v12, v4, :cond_f

    .line 282
    sget v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v4, v4, 0xe

    sub-int/2addr v4, v15

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v9, 0x2

    rem-int/2addr v4, v9

    .line 159
    :try_start_b
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v4, v3

    int-to-byte v4, v4

    xor-int/lit16 v9, v4, 0x102

    and-int/lit16 v10, v4, 0x102

    or-int/2addr v9, v10

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v11, 0x25e

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v4, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    const/4 v9, 0x2

    :try_start_c
    new-array v10, v9, [Ljava/lang/Object;

    aput-object v4, v10, v15

    aput-object v1, v10, v7

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v4, v14

    int-to-byte v4, v4

    xor-int/lit16 v9, v4, 0x320

    and-int/lit16 v11, v4, 0x320

    or-int/2addr v9, v11

    int-to-short v9, v9

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v4, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v9, v9, v14

    int-to-byte v9, v9

    xor-int/lit16 v12, v9, 0x320

    and-int/lit16 v3, v9, 0x320

    or-int/2addr v3, v12

    int-to-short v3, v3

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v9, v3, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v11, v7

    const-class v3, Ljava/lang/String;

    aput-object v3, v11, v15

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_e

    throw v2

    :cond_e
    throw v1

    :cond_f
    :goto_d
    const/4 v3, 0x7

    .line 162
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v4, v14

    int-to-byte v4, v4

    xor-int/lit16 v9, v4, 0x320

    and-int/lit16 v11, v4, 0x320

    or-int/2addr v9, v11

    int-to-short v9, v9

    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v4, v9, v11}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    aput-object v5, v3, v7

    aput-object v10, v3, v15

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v8, v3, v4

    const/4 v4, 0x4

    aput-object v10, v3, v4

    const/4 v9, 0x5

    aput-object v1, v3, v9

    const/4 v1, 0x6

    aput-object v8, v3, v1

    const/4 v1, 0x7

    new-array v1, v1, [Z

    aput-boolean v7, v1, v7

    aput-boolean v15, v1, v15

    const/4 v8, 0x2

    aput-boolean v15, v1, v8

    const/4 v8, 0x3

    aput-boolean v15, v1, v8

    aput-boolean v15, v1, v4

    const/4 v8, 0x5

    aput-boolean v15, v1, v8

    const/4 v8, 0x6

    aput-boolean v15, v1, v8

    const/4 v8, 0x7

    new-array v8, v8, [Z

    aput-boolean v7, v8, v7

    aput-boolean v7, v8, v15

    const/4 v9, 0x2

    aput-boolean v7, v8, v9

    const/4 v9, 0x3

    aput-boolean v7, v8, v9

    aput-boolean v15, v8, v4

    const/4 v9, 0x5

    aput-boolean v15, v8, v9

    const/4 v9, 0x6

    aput-boolean v15, v8, v9

    const/4 v9, 0x7

    new-array v9, v9, [Z

    aput-boolean v7, v9, v7

    aput-boolean v7, v9, v15

    const/4 v10, 0x2

    aput-boolean v15, v9, v10

    const/4 v10, 0x3

    aput-boolean v15, v9, v10

    aput-boolean v7, v9, v4

    const/4 v10, 0x5

    aput-boolean v15, v9, v10

    const/4 v10, 0x6

    aput-boolean v15, v9, v10
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    .line 213
    :try_start_e
    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v11, 0x1f

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    const/16 v11, 0x64

    int-to-short v11, v11

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v19, 0x3c

    aget-byte v12, v12, v19

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 214
    sget-object v11, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x63

    aget-byte v11, v11, v12

    int-to-byte v11, v11

    const/16 v12, 0x24e

    int-to-short v12, v12

    sget-object v19, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v21, 0x31a

    aget-byte v5, v19, v21

    int-to-byte v5, v5

    invoke-static {v11, v12, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    const/16 v10, 0x22

    if-lt v5, v10, :cond_10

    const/4 v10, 0x1

    goto :goto_e

    :cond_10
    const/4 v10, 0x0

    :goto_e
    const/16 v11, 0x1d

    if-ne v5, v11, :cond_11

    goto :goto_f

    :cond_11
    const/16 v11, 0x1a

    if-lt v5, v11, :cond_12

    const/4 v11, 0x1

    goto :goto_10

    :cond_12
    :goto_f
    const/4 v11, 0x0

    :goto_10
    :try_start_f
    aput-boolean v11, v9, v7

    if-lt v5, v6, :cond_13

    const/4 v11, 0x1

    goto :goto_11

    :cond_13
    const/4 v11, 0x0

    :goto_11
    aput-boolean v11, v9, v15

    if-lt v5, v6, :cond_14

    const/4 v5, 0x1

    goto :goto_12

    :cond_14
    const/4 v5, 0x0

    :goto_12
    if-eq v5, v15, :cond_15

    const/4 v5, 0x0

    goto :goto_13

    :cond_15
    const/4 v5, 0x1

    :goto_13
    aput-boolean v5, v9, v4
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_14

    :catch_5
    const/4 v10, 0x0

    :catch_6
    :goto_14
    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_15
    if-nez v5, :cond_16

    const/4 v12, 0x0

    goto :goto_16

    :cond_16
    const/4 v12, 0x1

    :goto_16
    if-eqz v12, :cond_17

    goto/16 :goto_60

    :cond_17
    const/16 v12, 0x9

    if-ge v11, v12, :cond_7c

    .line 238
    :try_start_10
    aget-boolean v12, v9, v11
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    if-eqz v12, :cond_7b

    .line 242
    :try_start_11
    aget-boolean v19, v1, v11

    aget-object v6, v3, v11

    aget-boolean v22, v8, v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4a

    const/16 v4, 0xc1

    if-eqz v19, :cond_1b

    if-eqz v6, :cond_19

    .line 2317
    :try_start_12
    sget-object v24, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v12, v24, v14

    int-to-byte v12, v12

    or-int/lit16 v14, v12, 0x320

    int-to-short v14, v14

    sget-object v26, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v7, v26, v13

    int-to-byte v7, v7

    invoke-static {v12, v14, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0xe1

    aget-byte v12, v12, v14

    int-to-byte v12, v12

    const/16 v14, 0x2e4

    int-to-short v14, v14

    sget-object v26, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v28, 0x2c

    aget-byte v13, v26, v28

    int-to-byte v13, v13

    invoke-static {v12, v14, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-nez v7, :cond_1b

    goto :goto_17

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_13
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_18

    throw v6

    :cond_18
    throw v4

    .line 2321
    :cond_19
    :goto_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0xfc

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    const/16 v13, 0x194

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v14, v4

    int-to-byte v4, v4

    invoke-static {v12, v13, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x4e

    int-to-byte v4, v4

    const/16 v6, 0x102

    int-to-short v6, v6

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x149

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v4, v6, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4a

    .line 2500
    sget v6, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v7, v6, 0x77

    or-int/lit8 v6, v6, 0x77

    add-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v6, 0x2

    rem-int/2addr v7, v6

    :try_start_14
    new-array v6, v15, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 2321
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x75

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x2eb

    int-to-short v7, v7

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x2cf

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v4, v7, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v7, v15, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v7, v13

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_15
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_1a

    throw v6

    :cond_1a
    throw v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4a

    :cond_1b
    if-eqz v19, :cond_30

    .line 2336
    :try_start_16
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    .line 2500
    sget v12, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    and-int/lit8 v13, v12, 0x25

    or-int/lit8 v12, v12, 0x25

    add-int/2addr v13, v12

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v12, 0x2

    rem-int/2addr v13, v12

    .line 2337
    :try_start_17
    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x75

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0xfc

    aget-byte v13, v13, v14

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v17, 0xe1

    aget-byte v14, v14, v17

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v13, v13, v17

    int-to-byte v13, v13

    const/16 v14, 0x362

    int-to-short v14, v14

    sget-object v26, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v28, 0x24

    aget-byte v4, v26, v28

    neg-int v4, v4

    int-to-byte v4, v4

    invoke-static {v13, v14, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v12, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v13, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    const-wide/32 v31, -0x5d011b96

    xor-long v12, v12, v31

    :try_start_18
    invoke-virtual {v7, v12, v13}, Ljava/util/Random;->setSeed(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_11

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_18
    if-nez v4, :cond_2e

    if-nez v12, :cond_1c

    const/16 v26, 0x6

    move-object/from16 v28, v1

    const/4 v15, 0x6

    goto :goto_19

    :cond_1c
    if-nez v13, :cond_1d

    const/16 v26, 0x5

    move-object/from16 v28, v1

    const/4 v15, 0x5

    goto :goto_19

    :cond_1d
    if-nez v14, :cond_1e

    move-object/from16 v28, v1

    const/4 v15, 0x4

    goto :goto_19

    :cond_1e
    move-object/from16 v28, v1

    const/4 v15, 0x3

    .line 2355
    :goto_19
    :try_start_19
    new-instance v1, Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    move-object/from16 v31, v2

    add-int/lit8 v2, v15, 0x1

    :try_start_1a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x2e

    .line 2357
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v15, :cond_22

    if-eqz v22, :cond_1f

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    const/4 v3, 0x0

    goto :goto_1b

    :cond_1f
    move-object/from16 v32, v3

    move-object/from16 v33, v4

    const/4 v3, 0x1

    :goto_1b
    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    const/16 v3, 0x1a

    .line 2363
    :try_start_1b
    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 2364
    invoke-virtual {v7}, Ljava/util/Random;->nextBoolean()Z

    move-result v26

    if-eqz v26, :cond_20

    or-int/lit8 v26, v3, 0x41

    shl-int/lit8 v26, v26, 0x1

    xor-int/lit8 v3, v3, 0x41

    sub-int v26, v26, v3

    move/from16 v3, v26

    goto :goto_1c

    :cond_20
    neg-int v3, v3

    neg-int v3, v3

    xor-int/lit8 v34, v3, 0x60

    and-int/lit8 v3, v3, 0x60

    shl-int/2addr v3, v4

    add-int v3, v34, v3

    :goto_1c
    int-to-char v3, v3

    .line 2369
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1d

    :catchall_3
    move-exception v0

    move-object v1, v0

    move/from16 v34, v5

    goto/16 :goto_27

    :cond_21
    const/16 v3, 0xc

    .line 2373
    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x2000

    int-to-char v3, v3

    .line 2374
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :goto_1d
    xor-int/lit8 v3, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    shl-int/2addr v2, v4

    add-int/2addr v2, v3

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    goto :goto_1a

    :cond_22
    move-object/from16 v32, v3

    move-object/from16 v33, v4

    .line 2378
    :try_start_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    if-nez v12, :cond_24

    .line 2500
    sget v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v3, v2, 0x4b

    and-int/lit8 v2, v2, 0x4b

    const/4 v4, 0x1

    shl-int/2addr v2, v4

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    :try_start_1d
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v6, v3, v1

    .line 2382
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v2, 0x75

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    xor-int/lit16 v2, v1, 0x320

    and-int/lit16 v4, v1, 0x320

    or-int/2addr v2, v4

    int-to-short v2, v2

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x165

    aget-byte v4, v4, v12

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x75

    aget-byte v2, v2, v12

    int-to-byte v2, v2

    xor-int/lit16 v12, v2, 0x320

    and-int/lit16 v15, v2, 0x320

    or-int/2addr v12, v15

    int-to-short v12, v12

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v29, 0x165

    aget-byte v15, v15, v29

    int-to-byte v15, v15

    invoke-static {v2, v12, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v4, v12

    const-class v2, Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v2, v4, v12

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    move-object v12, v1

    :goto_1e
    move/from16 v34, v5

    move-object/from16 v35, v7

    :goto_1f
    move-object/from16 v4, v33

    goto/16 :goto_22

    :catchall_4
    move-exception v0

    move-object v1, v0

    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_23

    throw v2

    :cond_23
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :cond_24
    if-nez v13, :cond_25

    const/4 v2, 0x0

    goto :goto_20

    :cond_25
    const/4 v2, 0x1

    :goto_20
    if-eqz v2, :cond_2c

    if-nez v14, :cond_27

    const/4 v2, 0x2

    :try_start_1f
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v6, v3, v1

    .line 2390
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v2, 0x75

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    or-int/lit16 v2, v1, 0x320

    int-to-short v2, v2

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x165

    aget-byte v4, v4, v14

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x75

    aget-byte v2, v2, v14

    int-to-byte v2, v2

    xor-int/lit16 v14, v2, 0x320

    and-int/lit16 v15, v2, 0x320

    or-int/2addr v14, v15

    int-to-short v14, v14

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v29, 0x165

    aget-byte v15, v15, v29

    int-to-byte v15, v15

    invoke-static {v2, v14, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v14, 0x0

    aput-object v2, v4, v14

    const-class v2, Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v2, v4, v14

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-object v14, v1

    goto :goto_1e

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_20
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_26

    throw v2

    :cond_26
    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    :cond_27
    const/4 v2, 0x2

    :try_start_21
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v6, v3, v1

    .line 2394
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v2, 0x75

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    xor-int/lit16 v2, v1, 0x320

    and-int/lit16 v4, v1, 0x320

    or-int/2addr v2, v4

    int-to-short v2, v2

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x165

    aget-byte v4, v4, v15

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x75

    aget-byte v2, v2, v15
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    int-to-byte v2, v2

    xor-int/lit16 v15, v2, 0x320

    move/from16 v34, v5

    and-int/lit16 v5, v2, 0x320

    or-int/2addr v5, v15

    int-to-short v5, v5

    :try_start_22
    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v29, 0x165

    aget-byte v15, v15, v29

    int-to-byte v15, v15

    invoke-static {v2, v5, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :try_start_23
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 2399
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x75

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    or-int/lit16 v4, v3, 0x2c0

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x3c

    aget-byte v5, v5, v15

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x75

    aget-byte v4, v4, v15

    int-to-byte v4, v4

    or-int/lit16 v15, v4, 0x320

    int-to-short v15, v15

    sget-object v33, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    move-object/from16 v35, v7

    const/16 v29, 0x165

    aget-byte v7, v33, v29

    int-to-byte v7, v7

    invoke-static {v4, v15, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    .line 2500
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v3, v3, 0x6

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    .line 2399
    :try_start_24
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x75

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0x2c0

    and-int/lit16 v5, v3, 0x2c0

    or-int/2addr v4, v5

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x3c

    aget-byte v5, v5, v7

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xe1

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x26c

    int-to-short v5, v5

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0xc1

    aget-byte v7, v7, v15

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    move-object v4, v1

    goto/16 :goto_22

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_28

    throw v3

    :cond_28
    throw v2

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_29

    throw v3

    :cond_29
    throw v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 2403
    :try_start_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xfc

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x348

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0xc1

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4e

    int-to-byte v1, v1

    const/16 v4, 0x102

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x149

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    const/4 v3, 0x2

    :try_start_27
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v1, v4, v2

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v2, 0x75

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x2eb

    int-to-short v2, v2

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x2cf

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-class v2, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2a

    throw v2

    :cond_2a
    throw v1

    :catchall_9
    move-exception v0

    goto :goto_21

    :catchall_a
    move-exception v0

    move/from16 v34, v5

    :goto_21
    move-object v1, v0

    .line 2394
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2b

    throw v2

    :cond_2b
    throw v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    :cond_2c
    move/from16 v34, v5

    move-object/from16 v35, v7

    const/4 v2, 0x2

    :try_start_29
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x0

    aput-object v6, v3, v1

    .line 2386
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v2, 0x75

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    xor-int/lit16 v2, v1, 0x320

    and-int/lit16 v4, v1, 0x320

    or-int/2addr v2, v4

    int-to-short v2, v2

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x165

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x75

    aget-byte v2, v2, v5

    int-to-byte v2, v2

    xor-int/lit16 v5, v2, 0x320

    and-int/lit16 v7, v2, 0x320

    or-int/2addr v5, v7

    int-to-short v5, v5

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x165

    aget-byte v7, v7, v13

    int-to-byte v7, v7

    invoke-static {v2, v5, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    move-object v13, v1

    goto/16 :goto_1f

    :goto_22
    move-object/from16 v1, v28

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v5, v34

    move-object/from16 v7, v35

    const/4 v15, 0x1

    goto/16 :goto_18

    :catchall_b
    move-exception v0

    move-object v1, v0

    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2d

    throw v2

    :cond_2d
    throw v1

    :catchall_c
    move-exception v0

    goto :goto_25

    :catchall_d
    move-exception v0

    goto :goto_24

    :catchall_e
    move-exception v0

    goto :goto_23

    :cond_2e
    move-object/from16 v28, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move/from16 v34, v5

    goto :goto_2a

    :catchall_f
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v34, v5

    move-object v1, v0

    .line 2337
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2f

    throw v2

    :cond_2f
    throw v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    :catchall_10
    move-exception v0

    goto :goto_26

    :catchall_11
    move-exception v0

    move-object/from16 v28, v1

    :goto_23
    move-object/from16 v31, v2

    :goto_24
    move-object/from16 v32, v3

    :goto_25
    move/from16 v34, v5

    :goto_26
    move-object v1, v0

    :goto_27
    move-object/from16 v42, v8

    :goto_28
    move-object/from16 v39, v9

    move/from16 v37, v10

    :goto_29
    const/16 v9, 0xe1

    const/16 v10, 0x15

    goto/16 :goto_59

    :cond_30
    move-object/from16 v28, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v34, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v33, 0x0

    :goto_2a
    const/16 v1, 0x1ade

    :try_start_2b
    new-array v1, v1, [B

    .line 2417
    const-class v2, Lcom/appsflyer/internal/AFc1fSDK;

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x30d

    aget-byte v3, v3, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x270

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x1d

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    .line 2418
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_49

    const/4 v3, 0x1

    :try_start_2c
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0x75

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v5, 0x1d3

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v6, v6, v3

    int-to-byte v6, v6

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v6, v6, v3

    int-to-byte v3, v6

    or-int/lit16 v6, v3, 0x3b2

    int-to-short v6, v6

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v22, 0x2cf

    aget-byte v15, v15, v22

    int-to-byte v15, v15

    invoke-static {v3, v6, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v7, v6

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_48

    .line 2500
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v4, v3, 0x23

    const/4 v6, 0x1

    shl-int/2addr v4, v6

    xor-int/lit8 v3, v3, 0x23

    sub-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    :try_start_2d
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 2419
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x75

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v7, v7, v6

    int-to-byte v6, v7

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x17

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    const/16 v7, 0xb9

    int-to-short v7, v7

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v22, 0x372

    aget-byte v15, v15, v22

    neg-int v15, v15

    int-to-byte v15, v15

    invoke-static {v6, v7, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v15, v7, [Ljava/lang/Class;

    const-class v7, [B

    const/16 v22, 0x0

    aput-object v7, v15, v22

    invoke-virtual {v4, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_47

    .line 2420
    :try_start_2e
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x75

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v6, v6, v4

    int-to-byte v4, v6

    invoke-static {v3, v5, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xe1

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x26c

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0xc1

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_46

    const/16 v2, 0x16

    const/16 v4, 0x1ab0

    move-object/from16 v5, v31

    const/4 v6, 0x0

    :goto_2b
    and-int/lit16 v7, v2, 0x9e

    or-int/lit16 v15, v2, 0x9e

    add-int/2addr v7, v15

    add-int/lit16 v15, v2, 0x1ac8

    const/16 v22, 0x1

    add-int/lit8 v15, v15, -0x1

    .line 2432
    :try_start_2f
    aget-byte v15, v1, v15

    add-int/lit8 v15, v15, 0x1

    int-to-byte v15, v15

    aput-byte v15, v1, v7

    .line 2437
    array-length v7, v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_49

    sub-int/2addr v7, v2

    const/4 v15, 0x3

    :try_start_30
    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v3, v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v3, v15

    const/4 v7, 0x0

    aput-object v1, v3, v7

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x75

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    const/16 v7, 0x7b

    int-to-short v7, v7

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v35, 0x3e

    aget-byte v15, v15, v35

    int-to-byte v15, v15

    invoke-static {v1, v7, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v7, 0x3

    new-array v15, v7, [Ljava/lang/Class;

    const-class v7, [B

    const/16 v27, 0x0

    aput-object v7, v15, v27

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x1

    aput-object v7, v15, v26

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v7, v15, v16

    invoke-virtual {v1, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Ljava/io/InputStream;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_44

    .line 2443
    :try_start_31
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_49

    if-nez v1, :cond_31

    const v1, -0x3aa8f165

    .line 2447
    :try_start_32
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v1

    const-wide/16 v37, 0x0

    invoke-static/range {v37 .. v38}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    const/4 v7, 0x4

    rsub-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    const/4 v7, 0x2

    new-array v15, v7, [I

    .line 3088
    sget-wide v37, Lcom/appsflyer/internal/AFc1fSDK;->onAppOpenAttributionNative:J
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_13

    const/16 v7, 0x20

    move-object/from16 v42, v8

    ushr-long v7, v37, v7

    long-to-int v8, v7

    and-int v7, v8, v3

    xor-int/lit8 v7, v7, -0x1

    or-int/2addr v8, v3

    and-int/2addr v7, v8

    const/4 v8, 0x0

    :try_start_33
    aput v7, v15, v8

    sget-wide v7, Lcom/appsflyer/internal/AFc1fSDK;->onAppOpenAttributionNative:J

    long-to-int v8, v7

    xor-int/lit8 v7, v3, -0x1

    and-int/2addr v7, v8

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v3, v8

    or-int/2addr v3, v7

    const/4 v7, 0x1

    aput v3, v15, v7

    .line 3094
    new-instance v3, Lcom/appsflyer/internal/AFj1sSDK;

    sget v38, Lcom/appsflyer/internal/AFc1fSDK;->init:I

    sget-object v39, Lcom/appsflyer/internal/AFc1fSDK;->AppsFlyer2dXConversionCallback:[B

    sget v41, Lcom/appsflyer/internal/AFc1fSDK;->onInstallConversionFailureNative:I

    move-object/from16 v35, v3

    move-object/from16 v37, v15

    move/from16 v40, v1

    invoke-direct/range {v35 .. v41}, Lcom/appsflyer/internal/AFj1sSDK;-><init>(Ljava/io/InputStream;[II[BII)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_12

    move/from16 v39, v4

    move-object/from16 v38, v12

    move-object/from16 v35, v13

    :goto_2c
    const/16 v1, 0x10

    goto/16 :goto_2e

    :catchall_12
    move-exception v0

    goto :goto_2d

    :catchall_13
    move-exception v0

    move-object/from16 v42, v8

    :goto_2d
    move-object v1, v0

    goto/16 :goto_28

    :cond_31
    move-object/from16 v42, v8

    .line 2454
    :try_start_34
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const-string v7, ""

    const-string v8, ""
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_43

    const/4 v15, 0x4

    :try_start_35
    new-array v3, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v18, 0x3

    aput-object v27, v3, v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v16, 0x2

    aput-object v27, v3, v16

    const/16 v26, 0x1

    aput-object v8, v3, v26

    aput-object v7, v3, v15

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x1f

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x2fd

    int-to-short v8, v8

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v37, 0xc

    aget-byte v15, v15, v37

    int-to-byte v15, v15

    invoke-static {v7, v8, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0xc

    aget-byte v8, v8, v15

    int-to-byte v8, v8

    const/16 v15, 0xeb

    int-to-short v15, v15

    sget-object v37, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v38, 0x31a

    move/from16 v39, v4

    aget-byte v4, v37, v38

    int-to-byte v4, v4

    invoke-static {v8, v15, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    new-array v15, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    aput-object v8, v15, v27

    const-class v8, Ljava/lang/CharSequence;

    const/16 v26, 0x1

    aput-object v8, v15, v26

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v8, v15, v16

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x3

    aput-object v8, v15, v18

    invoke-virtual {v7, v4, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_42

    neg-int v3, v3

    neg-int v3, v3

    xor-int/lit8 v3, v3, -0x1

    const v4, -0xc33595

    sub-int v3, v4, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v8, 0x0

    .line 3755
    sget v15, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v35, v15, 0x5b

    and-int/lit8 v15, v15, 0x5b

    shl-int/2addr v15, v4

    add-int v4, v35, v15

    rem-int/lit16 v15, v4, 0x80

    sput v15, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v15, 0x2

    rem-int/2addr v4, v15

    const/4 v4, 0x3

    :try_start_36
    new-array v7, v4, [Ljava/lang/Object;

    .line 2454
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v15

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x1f

    aget-byte v4, v4, v8

    int-to-byte v4, v4

    const/16 v8, 0x34c

    int-to-short v8, v8

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v24, 0x75

    aget-byte v15, v15, v24

    int-to-byte v15, v15

    invoke-static {v4, v8, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0xe1

    aget-byte v8, v8, v15

    int-to-byte v8, v8

    const/16 v15, 0x338

    int-to-short v15, v15

    sget-object v35, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v37, 0x24

    move-object/from16 v38, v12

    aget-byte v12, v35, v37

    neg-int v12, v12

    int-to-byte v12, v12

    invoke-static {v8, v15, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v27, 0x0

    aput-object v12, v15, v27

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x1

    aput-object v12, v15, v26

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-virtual {v4, v8, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_41

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    neg-int v4, v4

    xor-int/lit8 v7, v4, 0x1

    const/4 v8, 0x1

    and-int/2addr v4, v8

    shl-int/2addr v4, v8

    add-int/2addr v7, v4

    const/4 v4, 0x4

    :try_start_37
    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v8, v7

    const/4 v4, 0x2

    const/4 v7, 0x0

    aput-object v7, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v8, v4

    const/4 v3, 0x0

    aput-object v36, v8, v3

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0xe1

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x20b

    int-to-short v4, v4

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/4 v12, 0x6

    aget-byte v7, v7, v12

    int-to-byte v7, v7

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0xa

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    xor-int/lit16 v7, v4, 0x2c6

    and-int/lit16 v12, v4, 0x2c6

    or-int/2addr v7, v12

    int-to-short v7, v7

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x31a

    aget-byte v12, v12, v15

    int-to-byte v12, v12

    invoke-static {v4, v7, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    new-array v12, v7, [Ljava/lang/Class;

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v23, 0x75

    aget-byte v15, v15, v23

    int-to-byte v15, v15

    xor-int/lit16 v7, v15, 0x3b2

    move-object/from16 v35, v13

    and-int/lit16 v13, v15, 0x3b2

    or-int/2addr v7, v13

    int-to-short v7, v7

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v25, 0x2cf

    aget-byte v13, v13, v25

    int-to-byte v13, v13

    invoke-static {v15, v7, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v12, v13

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const-class v7, [B

    const/4 v13, 0x2

    aput-object v7, v12, v13

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x3

    aput-object v7, v12, v13

    invoke-virtual {v3, v4, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_40

    .line 282
    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v1, v1, 0x22

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v4, 0x2

    rem-int/2addr v1, v4

    goto/16 :goto_2c

    :goto_2e
    int-to-long v7, v1

    .line 3755
    sget v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v4, v4, 0x47

    rem-int/lit16 v12, v4, 0x80

    sput v12, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v12, 0x2

    rem-int/2addr v4, v12

    const/4 v4, 0x1

    :try_start_38
    new-array v12, v4, [Ljava/lang/Object;

    .line 2457
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v12, v7

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x75

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    xor-int/lit16 v7, v4, 0x3b2

    and-int/lit16 v8, v4, 0x3b2

    or-int/2addr v7, v8

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x2cf

    aget-byte v8, v8, v13

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x47

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x22b

    int-to-short v8, v8

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x312

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v7, v8, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v8, v13, v15

    invoke-virtual {v4, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_3f

    if-eqz v19, :cond_4b

    .line 2463
    :try_start_39
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    if-nez v4, :cond_32

    const/4 v4, 0x1

    goto :goto_2f

    :cond_32
    const/4 v4, 0x0

    :goto_2f
    const/4 v7, 0x1

    if-eq v4, v7, :cond_33

    move-object/from16 v4, v35

    goto :goto_30

    :cond_33
    move-object/from16 v4, v38

    .line 2465
    :goto_30
    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_29

    if-nez v7, :cond_34

    const/4 v7, 0x1

    goto :goto_31

    :cond_34
    const/4 v7, 0x0

    :goto_31
    if-eqz v7, :cond_35

    move-object v7, v14

    goto :goto_32

    :cond_35
    move-object/from16 v7, v33

    .line 3755
    :goto_32
    sget v8, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v8, v8, 0x1a

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    rem-int/lit16 v13, v8, 0x80

    sput v13, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v13, 0x2

    rem-int/2addr v8, v13

    :try_start_3a
    new-array v8, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v8, v12

    .line 3603
    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x75

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0x2c0

    and-int/lit16 v15, v12, 0x2c0

    or-int/2addr v13, v15

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v20, 0x3c

    aget-byte v15, v15, v20

    int-to-byte v15, v15

    invoke-static {v12, v13, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v22, 0x75

    aget-byte v13, v13, v22

    int-to-byte v13, v13

    xor-int/lit16 v1, v13, 0x320

    move-object/from16 v36, v14

    and-int/lit16 v14, v13, 0x320

    or-int/2addr v1, v14

    int-to-short v1, v1

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v29, 0x165

    aget-byte v14, v14, v29

    int-to-byte v14, v14

    invoke-static {v13, v1, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v13, 0x0

    aput-object v1, v15, v13

    invoke-virtual {v12, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_23

    if-eqz v10, :cond_39

    .line 2500
    sget v8, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v12, v8, 0x2d

    and-int/lit8 v8, v8, 0x2d

    const/4 v13, 0x1

    shl-int/2addr v8, v13

    add-int/2addr v12, v8

    rem-int/lit16 v8, v12, 0x80

    sput v8, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v8, 0x2

    rem-int/2addr v12, v8

    if-eqz v12, :cond_36

    const/4 v8, 0x1

    goto :goto_33

    :cond_36
    const/4 v8, 0x0

    :goto_33
    if-eq v8, v13, :cond_37

    goto :goto_34

    :cond_37
    const/4 v8, 0x0

    .line 3609
    :try_start_3b
    array-length v12, v8
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_8
    .catchall {:try_start_3b .. :try_end_3b} :catchall_15

    :goto_34
    :try_start_3c
    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x75

    aget-byte v8, v8, v12

    int-to-byte v8, v8

    or-int/lit16 v12, v8, 0x320

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x165

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v8, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x47

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    const/16 v13, 0x1c9

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x1a3

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v4, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_14

    goto :goto_35

    :catchall_14
    move-exception v0

    move-object v1, v0

    :try_start_3d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_38

    throw v2

    :cond_38
    throw v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_8
    .catchall {:try_start_3d .. :try_end_3d} :catchall_15

    :catchall_15
    move-exception v0

    move-object v1, v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    goto/16 :goto_3c

    :catch_8
    move-exception v0

    move-object v1, v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    goto/16 :goto_3b

    :cond_39
    :goto_35
    const/16 v8, 0x400

    :try_start_3e
    new-array v8, v8, [B
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_22

    move/from16 v12, v39

    :goto_36
    if-lez v12, :cond_3e

    .line 3755
    sget v13, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v14, v13, 0x7d

    or-int/lit8 v13, v13, 0x7d

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v13, 0x2

    rem-int/2addr v14, v13

    .line 3618
    :try_start_3f
    array-length v13, v8

    .line 3619
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v13
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_22

    const/4 v14, 0x3

    :try_start_40
    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v15, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v26, 0x1

    aput-object v14, v15, v26

    aput-object v8, v15, v13

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x75

    aget-byte v13, v13, v14
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_19

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0x3b2

    move/from16 v37, v10

    and-int/lit16 v10, v13, 0x3b2

    or-int/2addr v10, v14

    int-to-short v10, v10

    :try_start_41
    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v25, 0x2cf

    aget-byte v14, v14, v25

    int-to-byte v14, v14

    invoke-static {v13, v10, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x17

    aget-byte v13, v13, v14
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_18

    int-to-byte v13, v13

    xor-int/lit16 v14, v13, 0xfa

    move-object/from16 v39, v9

    and-int/lit16 v9, v13, 0xfa

    or-int/2addr v9, v14

    int-to-short v9, v9

    :try_start_42
    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v40, 0x312

    aget-byte v14, v14, v40

    int-to-byte v14, v14

    invoke-static {v13, v9, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/16 v27, 0x0

    aput-object v13, v14, v27

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x1

    aput-object v13, v14, v26

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v13, v14, v16

    invoke-virtual {v10, v9, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v3, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_17

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3a

    const/16 v10, 0xb

    goto :goto_37

    :cond_3a
    const/16 v10, 0x1c

    :goto_37
    const/16 v13, 0xb

    if-eq v10, v13, :cond_3b

    goto/16 :goto_39

    .line 2500
    :cond_3b
    sget v10, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v13, v10, 0x7

    const/4 v14, 0x1

    shl-int/2addr v13, v14

    xor-int/lit8 v10, v10, 0x7

    sub-int/2addr v13, v10

    rem-int/lit16 v10, v13, 0x80

    sput v10, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v10, 0x2

    rem-int/2addr v13, v10

    const/4 v13, 0x3

    :try_start_43
    new-array v14, v13, [Ljava/lang/Object;

    .line 3622
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v10

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x1

    aput-object v13, v14, v15

    aput-object v8, v14, v10

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x75

    aget-byte v10, v10, v13

    int-to-byte v10, v10

    xor-int/lit16 v13, v10, 0x2c0

    and-int/lit16 v15, v10, 0x2c0

    or-int/2addr v13, v15

    int-to-short v13, v13

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v20, 0x3c

    aget-byte v15, v15, v20

    int-to-byte v15, v15

    invoke-static {v10, v13, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x43

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    xor-int/lit16 v15, v13, 0xf1

    move-object/from16 v40, v8

    and-int/lit16 v8, v13, 0xf1

    or-int/2addr v8, v15

    int-to-short v8, v8

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v30, 0xc1

    aget-byte v15, v15, v30

    int-to-byte v15, v15

    invoke-static {v13, v8, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x3

    new-array v15, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/16 v27, 0x0

    aput-object v13, v15, v27

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x1

    aput-object v13, v15, v26

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v13, v15, v16

    invoke-virtual {v10, v8, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_16

    neg-int v8, v9

    xor-int/lit8 v8, v8, -0x1

    sub-int/2addr v12, v8

    const/4 v8, 0x1

    sub-int/2addr v12, v8

    move/from16 v10, v37

    move-object/from16 v9, v39

    move-object/from16 v8, v40

    goto/16 :goto_36

    :catchall_16
    move-exception v0

    move-object v1, v0

    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3c

    throw v2

    :cond_3c
    throw v1

    :catchall_17
    move-exception v0

    goto :goto_38

    :catchall_18
    move-exception v0

    move-object/from16 v39, v9

    goto :goto_38

    :catchall_19
    move-exception v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    :goto_38
    move-object v1, v0

    .line 3619
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3d

    throw v2

    :cond_3d
    throw v1
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_24

    :cond_3e
    move-object/from16 v39, v9

    move/from16 v37, v10

    .line 3628
    :goto_39
    :try_start_45
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x75

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    xor-int/lit16 v8, v3, 0x2c0

    and-int/lit16 v9, v3, 0x2c0

    or-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x3c

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x15

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x24a

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0xc1

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_21

    :try_start_46
    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x75

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x372

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0xc

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x47

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    xor-int/lit16 v10, v9, 0x148

    and-int/lit16 v12, v9, 0x148

    or-int/2addr v10, v12

    int-to-short v10, v10

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x312

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_20

    .line 3629
    :try_start_47
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x75

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    or-int/lit16 v8, v3, 0x2c0

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x3c

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0xe1

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x26c

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0xc1

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1f

    .line 3641
    :try_start_48
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0x24

    aget-byte v1, v1, v3

    neg-int v1, v1

    int-to-byte v1, v1

    const/16 v3, 0x102

    int-to-short v3, v3

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0xba

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v1, v3, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3642
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x6a

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x1e9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x31a

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v8, v9, v10

    invoke-virtual {v1, v3, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_24

    .line 3646
    :try_start_49
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x75

    aget-byte v3, v3, v9

    int-to-byte v3, v3

    or-int/lit16 v9, v3, 0x320

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x165

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v3, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x15

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v10, 0x2a0

    int-to-short v10, v10

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0xf

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_1e

    const/4 v9, 0x0

    :try_start_4a
    aput-object v3, v8, v9
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_24

    .line 3755
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v3, v3, 0x26

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v9, 0x2

    rem-int/2addr v3, v9

    .line 3646
    :try_start_4b
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x75

    aget-byte v3, v3, v9

    int-to-byte v3, v3

    xor-int/lit16 v9, v3, 0x320

    and-int/lit16 v12, v3, 0x320

    or-int/2addr v9, v12

    int-to-short v9, v9

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x165

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v3, v9, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x15

    aget-byte v9, v9, v12

    int-to-byte v9, v9

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0xf

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1d

    const/4 v9, 0x1

    :try_start_4c
    aput-object v3, v8, v9

    const/4 v3, 0x0

    .line 3649
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v3, 0x2

    aput-object v9, v8, v3

    .line 3646
    invoke-virtual {v1, v10, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_24

    .line 3755
    sget v8, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v8, v8, 0x21

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr v8, v3

    .line 3655
    :try_start_4d
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x75

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    xor-int/lit16 v8, v3, 0x320

    and-int/lit16 v9, v3, 0x320

    or-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x165

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x24

    aget-byte v8, v8, v9

    neg-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x245

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x132

    aget-byte v10, v10, v12

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_1c

    .line 3656
    :try_start_4e
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x75

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    or-int/lit16 v4, v3, 0x320

    int-to-short v4, v4

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x165

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    invoke-static {v3, v4, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x24

    aget-byte v4, v4, v8

    neg-int v4, v4

    int-to-byte v4, v4

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x132

    aget-byte v8, v8, v10

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v4, v9, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1b

    .line 3661
    :try_start_4f
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    if-nez v3, :cond_57

    .line 3663
    const-class v3, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_28

    :try_start_50
    const-class v4, Ljava/lang/Class;

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x15

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x22e

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x1f

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1a

    :try_start_51
    sput-object v3, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    goto/16 :goto_4a

    :catchall_1a
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3f

    throw v2

    :cond_3f
    throw v1

    :catchall_1b
    move-exception v0

    move-object v1, v0

    .line 3656
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_40

    throw v2

    :cond_40
    throw v1

    :catchall_1c
    move-exception v0

    move-object v1, v0

    .line 3655
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_41

    throw v2

    :cond_41
    throw v1
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_28

    :catchall_1d
    move-exception v0

    move-object v1, v0

    .line 3646
    :try_start_52
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_42

    throw v2

    :cond_42
    throw v1

    :catchall_1e
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_43

    throw v2

    :cond_43
    throw v1

    :catchall_1f
    move-exception v0

    move-object v1, v0

    .line 3629
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_44

    throw v2

    :cond_44
    throw v1

    :catchall_20
    move-exception v0

    move-object v1, v0

    .line 3628
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_45

    throw v2

    :cond_45
    throw v1

    :catchall_21
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_46

    throw v2

    :cond_46
    throw v1
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_24

    :catchall_22
    move-exception v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    goto :goto_3a

    :catchall_23
    move-exception v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    move-object v1, v0

    .line 3603
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_47

    throw v2

    :cond_47
    throw v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_9
    .catchall {:try_start_53 .. :try_end_53} :catchall_24

    :catchall_24
    move-exception v0

    :goto_3a
    move-object v1, v0

    goto/16 :goto_3c

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 3614
    :goto_3b
    :try_start_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xfc

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    const/16 v5, 0x198

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0xc1

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4e

    int-to-byte v3, v3

    const/16 v5, 0x102

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x149

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_24

    const/4 v3, 0x2

    :try_start_55
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x0

    aput-object v2, v5, v1

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v2, 0x75

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x2eb

    int-to-short v2, v2

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x2cf

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    const-class v2, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v2, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_25

    :catchall_25
    move-exception v0

    move-object v1, v0

    :try_start_56
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_48

    throw v2

    :cond_48
    throw v1
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_24

    .line 3655
    :goto_3c
    :try_start_57
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0x75

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    xor-int/lit16 v3, v2, 0x320

    and-int/lit16 v5, v2, 0x320

    or-int/2addr v3, v5

    int-to-short v3, v3

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x165

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v2, v3, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x24

    aget-byte v3, v3, v5

    neg-int v3, v3

    int-to-byte v3, v3

    const/16 v5, 0x245

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x132

    aget-byte v6, v6, v8

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_27

    .line 3656
    :try_start_58
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0x75

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    xor-int/lit16 v3, v2, 0x320

    and-int/lit16 v4, v2, 0x320

    or-int/2addr v3, v4

    int-to-short v3, v3

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x165

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x24

    aget-byte v3, v3, v4

    neg-int v3, v3

    int-to-byte v3, v3

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x132

    aget-byte v4, v4, v6

    neg-int v4, v4

    int-to-byte v4, v4

    invoke-static {v3, v5, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_26

    .line 3657
    :try_start_59
    throw v1

    :catchall_26
    move-exception v0

    move-object v1, v0

    .line 3656
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_49

    throw v2

    :cond_49
    throw v1

    :catchall_27
    move-exception v0

    move-object v1, v0

    .line 3655
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4a

    throw v2

    :cond_4a
    throw v1
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_28

    :catchall_28
    move-exception v0

    goto :goto_3d

    :catchall_29
    move-exception v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    :goto_3d
    move-object v1, v0

    goto/16 :goto_29

    :cond_4b
    move-object/from16 v39, v9

    move/from16 v37, v10

    move-object/from16 v36, v14

    .line 3679
    :try_start_5a
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3680
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_3e

    const/4 v4, 0x1

    :try_start_5b
    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v7, v4

    .line 3682
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x75

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x165

    aget-byte v4, v4, v8

    int-to-short v4, v4

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x77

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v1, v4, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x75

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    xor-int/lit16 v9, v4, 0x3b2

    and-int/lit16 v10, v4, 0x3b2

    or-int/2addr v9, v10

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x2cf

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v4, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_3d

    :try_start_5c
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x75

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    xor-int/lit16 v7, v4, 0x1e2

    and-int/lit16 v8, v4, 0x1e2

    or-int/2addr v7, v8

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x42

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_3c

    const/16 v7, 0x400

    :try_start_5d
    new-array v7, v7, [B
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_3e

    const/4 v8, 0x0

    :goto_3e
    const/4 v9, 0x1

    :try_start_5e
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v10, v9

    .line 3688
    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x75

    aget-byte v9, v9, v12

    int-to-byte v9, v9

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x165

    aget-byte v12, v12, v13

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x77

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v9, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x17

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    xor-int/lit16 v13, v12, 0xfa

    and-int/lit16 v14, v12, 0xfa

    or-int/2addr v13, v14

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x312

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-virtual {v9, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_3b

    if-lez v9, :cond_4c

    const/4 v10, 0x0

    goto :goto_3f

    :cond_4c
    const/4 v10, 0x1

    :goto_3f
    if-eqz v10, :cond_4e

    :cond_4d
    const/4 v14, 0x3

    goto/16 :goto_42

    :cond_4e
    int-to-long v12, v8

    .line 3689
    :try_start_5f
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_3e

    cmp-long v10, v12, v14

    if-gez v10, :cond_4f

    const/4 v10, 0x0

    goto :goto_40

    :cond_4f
    const/4 v10, 0x1

    :goto_40
    const/4 v12, 0x1

    if-eq v10, v12, :cond_4d

    const/4 v10, 0x3

    :try_start_60
    new-array v13, v10, [Ljava/lang/Object;

    .line 3691
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v14, 0x2

    aput-object v10, v13, v14

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v12

    aput-object v7, v13, v10

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x75

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    xor-int/lit16 v12, v10, 0x1e2

    and-int/lit16 v14, v10, 0x1e2

    or-int/2addr v12, v14

    int-to-short v12, v12

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x42

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    invoke-static {v10, v12, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x43

    aget-byte v12, v12, v14

    int-to-byte v12, v12

    or-int/lit16 v14, v12, 0xf1

    int-to-short v14, v14

    sget-object v15, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v30, 0xc1

    aget-byte v15, v15, v30

    int-to-byte v15, v15

    invoke-static {v12, v14, v15}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_2b

    const/4 v14, 0x3

    :try_start_61
    new-array v15, v14, [Ljava/lang/Class;

    const-class v18, [B

    const/16 v27, 0x0

    aput-object v18, v15, v27

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v26, 0x1

    aput-object v18, v15, v26

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x2

    aput-object v18, v15, v16

    invoke-virtual {v10, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v4, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_2a

    neg-int v9, v9

    neg-int v9, v9

    xor-int v10, v8, v9

    and-int/2addr v8, v9

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    add-int/2addr v8, v10

    goto/16 :goto_3e

    :catchall_2a
    move-exception v0

    goto :goto_41

    :catchall_2b
    move-exception v0

    const/4 v14, 0x3

    :goto_41
    move-object v1, v0

    :try_start_62
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_50

    throw v2

    :cond_50
    throw v1
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_28

    .line 3694
    :goto_42
    :try_start_63
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x75

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    xor-int/lit16 v7, v3, 0x1e2

    and-int/lit16 v8, v3, 0x1e2

    or-int/2addr v7, v8

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x42

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v3, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/4 v8, 0x6

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x384

    and-int/lit16 v9, v7, 0x384

    or-int/2addr v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x1a3

    aget-byte v9, v9, v10

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_3a

    .line 3698
    :try_start_64
    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x75

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_2d

    const/16 v9, 0x165

    :try_start_65
    aget-byte v8, v8, v9

    int-to-short v8, v8

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x77

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0xe1

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    const/16 v10, 0x26c

    int-to-short v10, v10

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0xc1

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v8, v10, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_2c

    goto :goto_44

    :catchall_2c
    move-exception v0

    goto :goto_43

    :catchall_2d
    move-exception v0

    const/16 v9, 0x165

    :goto_43
    move-object v1, v0

    :try_start_66
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_51

    throw v7

    :cond_51
    throw v1
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_66} :catch_a
    .catchall {:try_start_66 .. :try_end_66} :catchall_28

    .line 3755
    :catch_a
    :goto_44
    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v7, v1, 0x80

    sput v7, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v7, 0x2

    rem-int/2addr v1, v7

    .line 3704
    :try_start_67
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x75

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    xor-int/lit16 v7, v1, 0x1e2

    and-int/lit16 v8, v1, 0x1e2

    or-int/2addr v7, v8

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x42

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    invoke-static {v1, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0xe1

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x26c

    int-to-short v8, v8

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0xc1

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2e

    goto :goto_45

    :catchall_2e
    move-exception v0

    move-object v1, v0

    :try_start_68
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_52

    throw v4

    :cond_52
    throw v1
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_68} :catch_b
    .catchall {:try_start_68 .. :try_end_68} :catchall_28

    .line 3708
    :catch_b
    :goto_45
    :try_start_69
    const-class v1, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_3e

    :try_start_6a
    const-class v4, Ljava/lang/Class;

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x15

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x22e

    int-to-short v8, v8

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x1f

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_39

    .line 3713
    :try_start_6b
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x24

    aget-byte v4, v4, v7

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v7, 0x96

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x43

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    .line 3714
    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x75

    aget-byte v7, v7, v10

    int-to-byte v7, v7

    const/16 v10, 0x52

    int-to-short v10, v10

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x2cf

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v7, v10, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v8, v12

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x75

    aget-byte v7, v7, v12

    int-to-byte v7, v7

    const/16 v12, 0x1a0

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0xba

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v7, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v8, v12

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_3e

    :try_start_6c
    new-array v7, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v7, v12

    .line 3716
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x75

    aget-byte v3, v3, v12

    int-to-byte v3, v3

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x2cf

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    invoke-static {v3, v10, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x43

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    xor-int/lit16 v12, v10, 0x3a5

    and-int/lit16 v13, v10, 0x3a5

    or-int/2addr v12, v13

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x312

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v10, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const-class v12, [B

    const/4 v15, 0x0

    aput-object v12, v13, v15

    invoke-virtual {v3, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_38

    :try_start_6d
    aput-object v3, v8, v15

    const/4 v3, 0x1

    aput-object v1, v8, v3

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_3e

    .line 3729
    :try_start_6e
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x24

    aget-byte v4, v4, v7

    neg-int v4, v4

    int-to-byte v4, v4

    or-int/lit16 v7, v4, 0x10c

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v10, 0x47

    aget-byte v8, v8, v10

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3730
    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x42

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    const/16 v8, 0x312

    int-to-short v8, v8

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x2c

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v7, 0x1

    .line 3731
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3733
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3734
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 3736
    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x77

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    const/16 v12, 0x3a8

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x3c

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    invoke-static {v10, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v12, 0x1

    .line 3737
    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3739
    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x77

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    const/16 v13, 0x254

    int-to-short v13, v13

    sget-object v18, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v20, 0x6a

    aget-byte v9, v18, v20

    int-to-byte v9, v9

    invoke-static {v12, v13, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x1

    .line 3740
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3742
    invoke-virtual {v10, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 3743
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3745
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 3748
    new-instance v12, Ljava/util/ArrayList;

    check-cast v9, Ljava/util/List;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3750
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 3751
    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 3753
    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 3754
    invoke-static {v9, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_f
    .catchall {:try_start_6e .. :try_end_6e} :catchall_3e

    const/4 v14, 0x0

    :goto_46
    if-ge v14, v13, :cond_54

    .line 3609
    sget v20, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v40, v20, 0x55

    and-int/lit8 v20, v20, 0x55

    const/16 v26, 0x1

    shl-int/lit8 v20, v20, 0x1

    add-int v15, v40, v20

    move/from16 v20, v13

    rem-int/lit16 v13, v15, 0x80

    sput v13, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v13, 0x2

    rem-int/2addr v15, v13

    if-nez v15, :cond_53

    .line 3757
    :try_start_6f
    invoke-static {v7, v14}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v9, v14, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    and-int/lit8 v13, v14, 0x2c

    or-int/lit8 v14, v14, 0x2c

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x3d

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v14, v13

    goto :goto_47

    :cond_53
    invoke-static {v7, v14}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v9, v14, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_c
    .catchall {:try_start_6f .. :try_end_6f} :catchall_28

    or-int/lit8 v13, v14, 0x66

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    xor-int/lit8 v14, v14, 0x66

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x64

    add-int/lit8 v14, v13, -0x1

    :goto_47
    move/from16 v13, v20

    const/16 v15, 0x3c

    goto :goto_46

    :catch_c
    move-exception v0

    move-object v2, v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    goto/16 :goto_54

    .line 3760
    :cond_54
    :try_start_70
    invoke-virtual {v10, v4, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3761
    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_f
    .catchall {:try_start_70 .. :try_end_70} :catchall_3e

    .line 3771
    :try_start_71
    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_3e

    if-nez v1, :cond_55

    const/16 v1, 0x62

    goto :goto_48

    :cond_55
    const/16 v1, 0x5c

    :goto_48
    const/16 v4, 0x62

    if-eq v1, v4, :cond_56

    goto :goto_49

    .line 2500
    :cond_56
    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v4, v1, 0x7

    and-int/lit8 v1, v1, 0x7

    const/4 v7, 0x1

    shl-int/2addr v1, v7

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v1, 0x2

    rem-int/2addr v4, v1

    .line 3773
    :try_start_72
    sput-object v3, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_3e

    :goto_49
    move-object v1, v3

    :cond_57
    :goto_4a
    if-eqz v19, :cond_58

    const/4 v3, 0x1

    goto :goto_4b

    :cond_58
    const/4 v3, 0x0

    :goto_4b
    const/4 v4, 0x1

    if-eq v3, v4, :cond_59

    .line 2507
    :try_start_73
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x75

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0x1a0

    int-to-short v4, v4

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0xba

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2508
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x6a

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x391

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x372

    aget-byte v8, v8, v9

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_28

    .line 2512
    :try_start_74
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v5, v4, v10

    .line 2513
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_74 .. :try_end_74} :catch_d
    .catchall {:try_start_74 .. :try_end_74} :catchall_28

    :goto_4c
    const/16 v10, 0x15

    goto/16 :goto_4e

    :catch_d
    move-exception v0

    move-object v3, v0

    .line 2520
    :try_start_75
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3
    :try_end_75
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75 .. :try_end_75} :catch_e
    .catchall {:try_start_75 .. :try_end_75} :catchall_28

    :catch_e
    const/4 v5, 0x0

    goto :goto_4c

    .line 2483
    :cond_59
    :try_start_76
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0x24

    aget-byte v3, v3, v4

    neg-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x102

    int-to-short v4, v4

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0xba

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    invoke-static {v3, v4, v7}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2484
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x6a

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x391

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x372

    aget-byte v8, v8, v9

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x75

    aget-byte v7, v7, v9

    int-to-byte v7, v7

    const/16 v9, 0x1a0

    int-to-short v9, v9

    sget-object v10, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0xba

    aget-byte v10, v10, v12

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2487
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    .line 2488
    const-class v5, Lcom/appsflyer/internal/AFc1fSDK;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_3e

    :try_start_77
    const-class v7, Ljava/lang/Class;

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_36

    const/16 v10, 0x15

    :try_start_78
    aget-byte v9, v9, v10

    int-to-byte v9, v9

    const/16 v12, 0x22e

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0x1f

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v9, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_35

    const/4 v7, 0x1

    :try_start_79
    aput-object v5, v8, v7

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_34

    if-eqz v5, :cond_5a

    const/16 v4, 0xc

    goto :goto_4d

    :cond_5a
    const/4 v4, 0x5

    :goto_4d
    const/16 v7, 0xc

    if-eq v4, v7, :cond_5b

    goto :goto_4e

    .line 282
    :cond_5b
    sget v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v4, v4, 0x5a

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v7, 0x2

    rem-int/2addr v4, v7

    if-eqz v4, :cond_5c

    .line 2499
    :try_start_7a
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x3ce9

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x4029

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x3ecb

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/Object;

    .line 2500
    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_2f

    goto :goto_4e

    :catchall_2f
    move-exception v0

    move-object v1, v0

    const/16 v9, 0xe1

    goto/16 :goto_59

    .line 2499
    :cond_5c
    :try_start_7b
    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0xe1

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    const/16 v7, 0x26c

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0xc1

    aget-byte v8, v8, v9

    int-to-byte v8, v8

    invoke-static {v4, v7, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 2500
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_34

    :goto_4e
    if-eqz v5, :cond_62

    .line 3755
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v3, v3, 0x7

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    .line 2531
    :try_start_7c
    move-object v6, v5

    check-cast v6, Ljava/lang/Class;

    .line 2536
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0xe1

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0xc1

    int-to-short v5, v4

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/4 v7, 0x6

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    invoke-static {v3, v5, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 2541
    const-class v3, Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v4, v7

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v3, v4, v7

    .line 2542
    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 2543
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_34

    if-nez v19, :cond_5d

    const/4 v1, 0x2

    goto :goto_4f

    :cond_5d
    const/4 v1, 0x0

    :goto_4f
    if-eq v1, v4, :cond_5e

    const/4 v1, 0x0

    goto :goto_50

    .line 3755
    :cond_5e
    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v8, v1, 0x3b

    or-int/lit8 v1, v1, 0x3b

    add-int/2addr v8, v1

    rem-int/lit16 v1, v8, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v8, v4

    const/4 v1, 0x1

    .line 2544
    :goto_50
    :try_start_7d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/16 v4, 0x1bb1

    const/16 v1, 0x1bde

    new-array v1, v1, [B

    .line 2554
    const-class v3, Lcom/appsflyer/internal/AFc1fSDK;

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x30d

    aget-byte v7, v7, v8

    or-int/lit8 v8, v7, 0x1

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    xor-int/2addr v7, v9

    sub-int/2addr v8, v7

    int-to-byte v7, v8

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v9, 0x2e

    aget-byte v8, v8, v9

    int-to-short v8, v8

    sget-object v9, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x1d

    aget-byte v9, v9, v12

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    .line 2555
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_34

    .line 2500
    sget v7, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v8, v7, 0x5

    and-int/lit8 v7, v7, 0x5

    const/4 v9, 0x1

    shl-int/2addr v7, v9

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    :try_start_7e
    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    .line 2555
    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x75

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    const/16 v9, 0x1d3

    int-to-short v9, v9

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v12, v12, v8

    int-to-byte v12, v12

    invoke-static {v3, v9, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v12, v12, v8

    int-to-byte v8, v12

    or-int/lit16 v12, v8, 0x3b2

    int-to-short v12, v12

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x2cf

    aget-byte v14, v14, v15

    int-to-byte v14, v14

    invoke-static {v8, v12, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v13, v12

    invoke-virtual {v3, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_33

    const/4 v7, 0x1

    :try_start_7f
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v12

    .line 2557
    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v12, 0x75

    aget-byte v7, v7, v12

    int-to-byte v7, v7

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v13, v13, v12

    int-to-byte v12, v13

    invoke-static {v7, v9, v12}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v13, 0x17

    aget-byte v12, v12, v13

    int-to-byte v12, v12

    const/16 v13, 0xb9

    int-to-short v13, v13

    sget-object v14, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v15, 0x372

    aget-byte v14, v14, v15

    neg-int v14, v14

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const-class v13, [B

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-virtual {v7, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_32

    .line 2558
    :try_start_80
    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v8, 0x75

    aget-byte v7, v7, v8

    int-to-byte v7, v7

    sget-object v12, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v12, v12, v8

    int-to-byte v8, v12

    invoke-static {v7, v9, v8}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_31

    const/16 v9, 0xe1

    :try_start_81
    aget-byte v8, v8, v9

    int-to-byte v8, v8

    const/16 v12, 0x26c

    int-to-short v12, v12

    sget-object v13, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v14, 0xc1

    aget-byte v13, v13, v14

    int-to-byte v13, v13

    invoke-static {v8, v12, v13}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_30

    .line 2562
    :try_start_82
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move/from16 v10, v37

    move-object/from16 v12, v38

    move-object/from16 v9, v39

    move-object/from16 v8, v42

    goto/16 :goto_2b

    :catchall_30
    move-exception v0

    goto :goto_51

    :catchall_31
    move-exception v0

    const/16 v9, 0xe1

    :goto_51
    move-object v1, v0

    .line 2558
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5f

    throw v2

    :cond_5f
    throw v1

    :catchall_32
    move-exception v0

    const/16 v9, 0xe1

    move-object v1, v0

    .line 2557
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_60

    throw v2

    :cond_60
    throw v1

    :catchall_33
    move-exception v0

    const/16 v9, 0xe1

    move-object v1, v0

    .line 2555
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_61

    throw v2

    :cond_61
    throw v1

    :catchall_34
    move-exception v0

    const/16 v9, 0xe1

    goto/16 :goto_58

    :cond_62
    const/16 v9, 0xe1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 2567
    const-class v2, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 2568
    invoke-virtual {v6, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2569
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    if-nez v19, :cond_63

    const/4 v1, 0x1

    goto :goto_52

    :cond_63
    const/4 v1, 0x0

    .line 2570
    :goto_52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    move-object/from16 v2, v39

    const/4 v4, 0x0

    const/16 v5, 0x75

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v34, 0x1

    goto/16 :goto_5f

    :catchall_35
    move-exception v0

    const/16 v9, 0xe1

    goto :goto_53

    :catchall_36
    move-exception v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    :goto_53
    move-object v1, v0

    .line 2488
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_64

    throw v2

    :cond_64
    throw v1

    :catch_f
    move-exception v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v2, v0

    .line 3767
    :goto_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xfc

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    const/16 v5, 0x19c

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0xc1

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x4e

    int-to-byte v1, v1

    const/16 v4, 0x102

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x149

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_45

    const/4 v3, 0x2

    :try_start_83
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    aput-object v1, v4, v2

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v2, 0x75

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x2eb

    int-to-short v2, v2

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x2cf

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    const-class v2, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v2, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_37

    :catchall_37
    move-exception v0

    move-object v1, v0

    :try_start_84
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_65

    throw v2

    :cond_65
    throw v1

    :catchall_38
    move-exception v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 3716
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_66

    throw v2

    :cond_66
    throw v1

    :catchall_39
    move-exception v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 3708
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_67

    throw v2

    :cond_67
    throw v1

    :catchall_3a
    move-exception v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 3694
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_68

    throw v2

    :cond_68
    throw v1

    :catchall_3b
    move-exception v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 3688
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_69

    throw v2

    :cond_69
    throw v1

    :catchall_3c
    move-exception v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 3682
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6a

    throw v2

    :cond_6a
    throw v1

    :catchall_3d
    move-exception v0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6b

    throw v2

    :cond_6b
    throw v1

    :catchall_3e
    move-exception v0

    goto/16 :goto_57

    :catchall_3f
    move-exception v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 2457
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6c

    throw v2

    :cond_6c
    throw v1

    :catchall_40
    move-exception v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 2454
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6d

    throw v2

    :cond_6d
    throw v1

    :catchall_41
    move-exception v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6e

    throw v2

    :cond_6e
    throw v1

    :catchall_42
    move-exception v0

    move-object/from16 v39, v9

    move/from16 v37, v10

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6f

    throw v2

    :cond_6f
    throw v1

    :catchall_43
    move-exception v0

    goto/16 :goto_56

    :catchall_44
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v39, v9

    move/from16 v37, v10

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 2437
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_70

    throw v2

    :cond_70
    throw v1

    :catchall_45
    move-exception v0

    goto :goto_58

    :catchall_46
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v39, v9

    move/from16 v37, v10

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 2420
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_71

    throw v2

    :cond_71
    throw v1

    :catchall_47
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v39, v9

    move/from16 v37, v10

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 2419
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_72

    throw v2

    :cond_72
    throw v1

    :catchall_48
    move-exception v0

    move-object/from16 v42, v8

    move-object/from16 v39, v9

    move/from16 v37, v10

    const/16 v9, 0xe1

    const/16 v10, 0x15

    move-object v1, v0

    .line 2418
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_73

    throw v2

    :cond_73
    throw v1
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_45

    :catchall_49
    move-exception v0

    goto :goto_55

    :catchall_4a
    move-exception v0

    move-object/from16 v28, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v34, v5

    :goto_55
    move-object/from16 v42, v8

    :goto_56
    move-object/from16 v39, v9

    move/from16 v37, v10

    :goto_57
    const/16 v9, 0xe1

    const/16 v10, 0x15

    :goto_58
    move-object v1, v0

    :goto_59
    add-int/lit8 v2, v11, 0x1

    move v3, v2

    move-object/from16 v2, v39

    .line 254
    :goto_5a
    :try_start_85
    array-length v4, v2

    if-ge v3, v4, :cond_74

    const/4 v4, 0x1

    goto :goto_5b

    :cond_74
    const/4 v4, 0x0

    :goto_5b
    const/4 v5, 0x1

    if-eq v4, v5, :cond_75

    const/4 v3, 0x0

    goto :goto_5d

    .line 256
    :cond_75
    aget-boolean v4, v2, v3
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_10

    if-eqz v4, :cond_76

    const/4 v4, 0x1

    goto :goto_5c

    :cond_76
    const/4 v4, 0x0

    :goto_5c
    if-eqz v4, :cond_7a

    .line 2500
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v4, v3, 0x17

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    xor-int/lit8 v3, v3, 0x17

    sub-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    const/4 v3, 0x1

    :goto_5d
    if-nez v3, :cond_77

    const/16 v3, 0x5a

    goto :goto_5e

    :cond_77
    const/16 v3, 0x60

    :goto_5e
    const/16 v4, 0x60

    if-ne v3, v4, :cond_78

    const/4 v4, 0x0

    .line 271
    :try_start_86
    sput-object v4, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    .line 272
    sput-object v4, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    const/16 v5, 0x75

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto/16 :goto_5f

    .line 266
    :cond_78
    sget-object v2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v3, 0xfc

    aget-byte v2, v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x15e

    int-to-short v3, v3

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x75

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v2
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_10

    const/4 v3, 0x2

    :try_start_87
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x0

    aput-object v2, v4, v1

    sget-object v1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0x75

    aget-byte v1, v1, v5

    int-to-byte v1, v1

    const/16 v2, 0x2eb

    int-to-short v2, v2

    sget-object v3, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0x2cf

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v2, v8

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_4b

    :catchall_4b
    move-exception v0

    move-object v1, v0

    :try_start_88
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_79

    throw v2

    :cond_79
    throw v1

    :cond_7a
    const/4 v4, 0x0

    const/16 v5, 0x75

    const/16 v6, 0x2cf

    const/4 v7, 0x2

    const/4 v8, 0x0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5a

    :cond_7b
    move-object/from16 v28, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move/from16 v34, v5

    move-object/from16 v42, v8

    move-object v2, v9

    move/from16 v37, v10

    const/4 v4, 0x0

    const/16 v5, 0x75

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v9, 0xe1

    const/16 v10, 0x15

    :goto_5f
    xor-int/lit8 v1, v11, 0x6d

    and-int/lit8 v3, v11, 0x6d

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    add-int/2addr v1, v3

    or-int/lit8 v3, v1, -0x6c

    shl-int/2addr v3, v6

    xor-int/lit8 v1, v1, -0x6c

    sub-int v11, v3, v1

    move-object v9, v2

    move-object/from16 v1, v28

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v5, v34

    move/from16 v10, v37

    move-object/from16 v8, v42

    const/4 v4, 0x4

    const/16 v6, 0x15

    const/4 v7, 0x0

    const/16 v13, 0x165

    const/16 v14, 0x75

    const/4 v15, 0x1

    goto/16 :goto_15

    :cond_7c
    :goto_60
    return-void

    :catchall_4c
    move-exception v0

    move-object v1, v0

    .line 151
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7d

    throw v2

    :cond_7d
    throw v1

    :catchall_4d
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7e

    throw v2

    :cond_7e
    throw v1

    :catchall_4e
    move-exception v0

    move-object v1, v0

    .line 147
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7f

    throw v2

    :cond_7f
    throw v1
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_88} :catch_10

    :catch_10
    move-exception v0

    move-object v1, v0

    .line 282
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_62

    :goto_61
    throw v2

    :goto_62
    goto :goto_61

    :array_0
    .array-data 1
        -0x30t
        -0x36t
        0x39t
        -0x1t
        -0x6ct
        -0x6t
        -0x8t
        -0x63t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(I)I
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v1, v0, 0xd

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0xd

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v3, v1, 0x7d

    shl-int/2addr v3, v2

    xor-int/lit8 v1, v1, 0x7d

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x57

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sget v3, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    and-int/lit8 v4, v3, 0x4b

    or-int/lit8 v3, v3, 0x4b

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v4, v4, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0xe1

    aget-byte p0, p0, v4

    int-to-byte p0, p0

    const/16 v5, 0x20b

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/4 v7, 0x6

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {p0, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v6, 0xb0

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x14f

    int-to-short v6, v6

    sget-object v7, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    aget-byte v4, v7, v4

    int-to-byte v4, v4

    invoke-static {v5, v6, v4}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v1

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    and-int/lit8 v2, v0, 0x2f

    or-int/lit8 v0, v0, 0x2f

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v0, 0x42

    if-eqz v2, :cond_1

    const/16 v2, 0x42

    goto :goto_1

    :cond_1
    const/16 v2, 0x5f

    :goto_1
    if-eq v2, v0, :cond_2

    return p0

    :cond_2
    const/16 v0, 0x54

    :try_start_1
    div-int/2addr v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p0
.end method

.method public static AFInAppEventType(ICI)Ljava/lang/Object;
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    const/16 v4, 0x12

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    :goto_1
    sget v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v4, v4, 0x1f

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v4, v2

    sget v4, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    or-int/lit8 v5, v4, 0x1d

    shl-int/2addr v5, v1

    xor-int/lit8 v4, v4, 0x1d

    sub-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/2addr v5, v2

    const/4 v4, 0x3

    :try_start_1
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 p1, 0xe1

    aget-byte p0, p0, p1

    int-to-byte p0, p0

    const/16 p1, 0x20b

    int-to-short p1, p1

    sget-object p2, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/4 v6, 0x6

    aget-byte p2, p2, v6

    int-to-byte p2, p2

    invoke-static {p0, p1, p2}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ClassLoader;

    invoke-static {p0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object p1, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 p2, 0xa

    aget-byte p1, p1, p2

    int-to-byte p1, p1

    xor-int/lit16 p2, p1, 0x2c6

    and-int/lit16 v6, p1, 0x2c6

    or-int/2addr p2, v6

    int-to-short p2, p2

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x31a

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {p1, p2, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, p2, v3

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v4, p2, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, p2, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    sget p1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    and-int/lit8 p2, p1, 0x2b

    or-int/lit8 p1, p1, 0x2b

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/2addr p2, v2

    if-nez p2, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eq v3, v1, :cond_3

    return-object p0

    :cond_3
    const/4 p1, 0x0

    :try_start_2
    array-length p1, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    throw p1

    :cond_4
    throw p0
.end method

.method public static AFKeystoreWrapper(Ljava/lang/Object;)I
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    or-int/lit8 v1, v0, 0x71

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x71

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v0, Lcom/appsflyer/internal/AFc1fSDK;->afErrorLogForExcManagerOnly:Ljava/lang/Object;

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v1, v1, 0x5c

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v1, v1, 0x2

    sget v1, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v1, v1, 0x2

    :try_start_0
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    sget-object p0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v4, 0xe1

    aget-byte p0, p0, v4

    int-to-byte p0, p0

    const/16 v4, 0x20b

    int-to-short v4, v4

    sget-object v5, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/4 v6, 0x6

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {p0, v4, v5}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->getLevel:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    sget-object v4, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v5, 0xa

    aget-byte v4, v4, v5

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x2c6

    and-int/lit16 v6, v4, 0x2c6

    or-int/2addr v5, v6

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v7, 0x31a

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFc1fSDK;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    xor-int/lit8 v1, v0, 0x39

    and-int/lit8 v0, v0, 0x39

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v1, v1, 0x2

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method static init$0()V
    .locals 6

    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    add-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "ISO-8859-1"

    const-string v4, "1_\u00a3K\u00cd\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00cc8\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ce\u0010\u0001\u0002\u00f4\u000e\u0002\u001c\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\n\u00ec\u00164\u00c3\u000c\u00f4\u0008:\u00dc\u00db\u0007\u0000\u0010\u00f9\u00ef\u0004\u0001\u000e\u00f8\u00fb4\u00d2\u0001\u0005\u0004\u0007\u0003\u00ee\u000c\u00fb\u0002\n\u00ec\u00164\u00c1\u0006\u00fbB\u00ed\u00ca\u0006\u0010$\u00ce\u0010\u0001\u0002\u00f4\u00f4\u000b\u00f3\u0004\u0007\u00067\u00c0\u00fdF\u00ed\u00ce\r\u00fe\tA\u00cf\u0012\u00f4\u0000\u000b\u00fb\u0002\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e91\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00e6\u00dc\"\u00e9\u00f9\u00ff\u00fe\u00fa6\u00e0\u00ee6\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u000e\u0005\u00fe\u001f\u00d2\n\u0001\u00f4\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00ef\u00fc\u00e43\u00cc\u0014\u0010\u00fa(\u00ab\u0003\u00f2/\u00de\u00fe\u0008\u00f30\u00dc\u00f8\u00fc\u000b\u0000\u00ee*\u00ea\u0006\n\u00f6\u0010\u0003\u00f22\u00e3\u00ff\u00fc\u0004\"\u00dc\u00f8\u000e\u0005\u00fe\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00eb\u00e0\u00ee3\u00de\u00fe\u0008\u00f5\u000c\u0000\u0007\u00fd\u0003\u00ff\u00fc\u0004\u0004\u00f6\u00f7\u000e\u00ff>\u00bc\u00fb\u0007\u0000\u0010\u00f9@\u00ed\u00e2\u00ef\u000f\"\u00e0\u00ee6\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u0003\u00f22\u00d5\u000c\u0000#\u00e3\u00ff\u00fc\u0004\"\u00dc\u00f8\u00fb\u000c\u000c\u00fc\u00fe\u00dc.\u00d2\u0001,\u00d0\u0012\u00f8\u00fb!\u00dc\n\u000c\u0016\u00fa\u0018\u00f9\u00bb\u0000P\u00bb\u0006\u00f6\u0001\u000b\u0002\u00ff\u00f9\u00f9T\u00b5\u0008\u0000\u00f3L\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00ef\u00fc\u00e43\u00c9\u0017\u0010\u00fa(\u0001\u0016\u00fb\u0017\u00f9\u0016\u00fd\u0015\u00f9\u0016\u00f9\u0019\u00f9\n\u00ec\u00164\u00c3\u000c\u00f4\u0008:\u00ec\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ce\u00f2\u0001C\u00ee\u00d2\u0001*\u00dc\u00fe\u000e\u0002\u00f6\u00fa\u000f\u00f2#\u00ee\u0005\u00fe\u0016\u00e2\u0003\u00f4\n\u00ec\u00164\u00c6\u00fbB\u00eb\u00e4\u00ee\u0014\u0019\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u00fe\u000f\u00fe!\u00e0\u00ee\n\u00ec\u00164\u00c6\u00fbB\u00ed\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e9+\u00db\u0002\u0005\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u00f5\u0003@\u00ce\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4E\u00c6\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6?\u00ee\u00fc\u00e43\u00c9\u0017\u0010\u00fa(\u0001\t\u0003\u00fa\u0003\u00f22\u00d8\u000c\u00ef\u0001(\u00de\u000f\u00fe\u0000\u00f4\u00cc\u0004\u00ee\u00143\u00cc\u0004\u00ee\u00143\u0000\u00fa\u0008\u00f2\u0010\u0003\u00f2/\u0003\u0010\u00fa\u00ed\u0017\u00fc\u00fb\u000e\u00ee\u000c\u00f4\u0012\u001a\u00e4\u0008\u00f1\u0012\u00f0\u00fa*\u00f0\u00ee\r$\u00da\u0008\u00f9\t\u00f8\u00fb\u0002\u00f8\u00fe\u00fd\u000f\u00cd\u00f5\u0003?\u00cf\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4D\u00c7\u00fc\u00fb\u0010\u00f4\u0005\u000e\u00f6>\u00cd7\n\u00ec\u00164\u00c6\u00fbB\u00bb\u0008\u00fe\r\u00fc\u00f8\u0003\u00f2%\u00df\u0004\u0000\u000c\u00f4\u00ff\u00fc\u0003\u00f24\u00e0\u00f0\u0005\u0004\u00f8\u0002\u0010\u0016\u00f0\u00ee\r\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ce\u00f2\u0001C\u00ee\u00df\u00f0\u000c\u00f4\u000e\u00f6\u00fc&\u00ed\u00f7\u000e\u0005\u00fe\u0016\u00f6\u00f8\u0011\u0017\u00ea\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\u0017\u00db\u0002\u0005\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5\u0003\u00f4\u0018\u00e6\n\u00f6\u0010\n\u00ec\u00164\u00c6\u00fbB\u00e6\u00fb\u000b\u00ce\u0016\u00ff\u00f6\u00fd\u000c\u00fb\u0002\u00f4\u000b\u00f3\u0004\u0007\u00067\u00bb\u0010\u00ee\u0005G\u00db\u00f0\u00ee\u0005 \u00e2\u000c\u00fe\u00fa\u0010\u00ee\r\u001d\u00e4\u00f7\u0000\u0003\u00f2,\u00dc\u0006\u00f6\u000c\t\u00f6,\u00d2\u0001\u0005\u0004\u0007\u0003\u00ee\u000c\u00fb\u0002\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\u00f5\u0003\u00fe\u0005\u0008\u00ee%\u00e6*\u00d5\u0012\u00ff\u00f0\u000c\u00fb\u0002\u0016\u00fe\u0014\u00f9\u00f4\u000b\u00f3\u0004\u0007\u00067\u00ba\u0002\u000c\u00fe?\u00db\u00dc\n\u000c\u0002\u000f\u00f6\u00f6\u00f8\u0011\u00ef\u0004\u0001\u000e\u00f8\u00fb!\u00ec\u00fd\t\u0019\u00e5\u00fe\u0001\u0004\u00f7\n\u00ec\u00164\u00c6\u00fbB\u00e9\u00de\u00fe\u0008\"\u00e0\u00f3\u0011\u00f2\n\u00fa\u00fd\u0006\u00fe\u0006.\u00ca\u0006\u0010%\u00d0\u0001\u0012\u00e9\u00fe\u000f\u00fe\"\u00d8\u000c\u00ef\u0001\u00f5\u0003@\u00ce\u00f2\u0001\u00fe\u000e\u00fb\u00f4\u0015\u00f4\u0006\u0012\u00f2\u000e\u00ee\u000c\u00f4\u0012\u001a\u00e4\u0008\u00f1\u0012\u00f0\u00fa6\u00dc\u00f8\u000e\u0003\u00f0\u0006\u00fe\n\u0005\u00f3\n\u00ec\u00164\u00c6\u00fbB\u00e6\u00dc\u00ff\u00fc\u0002\"\u00e0\u0003\u000e\u0005\u00f5"

    const/16 v5, 0x3d6

    if-eq v0, v1, :cond_1

    new-array v0, v5, [B

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v0, 0x37

    :goto_1
    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->$$b:I

    goto :goto_2

    :cond_1
    new-array v0, v5, [B

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/AFc1fSDK;->$$a:[B

    const/16 v0, 0x7d

    goto :goto_1

    :goto_2
    sget v0, Lcom/appsflyer/internal/AFc1fSDK;->$10:I

    xor-int/lit8 v2, v0, 0x47

    and-int/lit8 v0, v0, 0x47

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/appsflyer/internal/AFc1fSDK;->$11:I

    rem-int/lit8 v2, v2, 0x2

    return-void
.end method
