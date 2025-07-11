.class public final Lcom/appsflyer/internal/AFf1jSDK;
.super Lcom/appsflyer/internal/AFf1pSDK;
.source ""


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static afDebugLog:I = 0x1

.field private static afErrorLog:[I

.field private static afVerboseLog:I


# instance fields
.field private final afInfoLog:Ljava/lang/String;

.field private final afWarnLog:Lcom/appsflyer/internal/AFg1qSDK;

.field private final force:Lcom/appsflyer/internal/AFd1rSDK;

.field private final v:Lcom/appsflyer/internal/AFd1lSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFf1jSDK;->afErrorLog:[I

    return-void

    :array_0
    .array-data 4
        -0x5db3e7a4
        0x2168ac08
        0x2c517602
        0x531b12c2
        0x1497fe28
        -0x6959a6cc
        0x8ad6a69
        0x35d2c506
        0x430fe2d9
        0x2ecd72c1
        -0x1fac45ae
        -0x4d54fb4a
        0xf31220e
        0xa5b0f54
        0x5aa858a0
        -0x21775ab
        -0x1456c06
        -0x25dbf7e2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 2

    .line 44
    new-instance v0, Lcom/appsflyer/internal/AFg1pSDK;

    .line 45
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v1

    .line 1025
    iget-object v1, v1, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 45
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1pSDK;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, v0, p2, p1}, Lcom/appsflyer/internal/AFf1pSDK;-><init>(Lcom/appsflyer/internal/AFa1pSDK;Lcom/appsflyer/internal/AFd1nSDK;Ljava/lang/String;)V

    .line 49
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFd1rSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1jSDK;->force:Lcom/appsflyer/internal/AFd1rSDK;

    .line 50
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->v()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFf1jSDK;->v:Lcom/appsflyer/internal/AFd1lSDK;

    .line 51
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1jSDK;->afInfoLog:Ljava/lang/String;

    .line 52
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1nSDK;->d()Lcom/appsflyer/internal/AFg1qSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFf1jSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1qSDK;

    return-void
.end method

.method private static a([II[Ljava/lang/Object;)V
    .locals 15

    move-object v0, p0

    .line 3115
    new-instance v1, Lcom/appsflyer/internal/AFj1tSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFj1tSDK;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [C

    .line 3118
    array-length v3, v0

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 3119
    sget-object v5, Lcom/appsflyer/internal/AFf1jSDK;->afErrorLog:[I

    const-wide v6, -0x14ba8d02124e5e0bL    # -5.509064420944311E208

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    array-length v9, v5

    new-array v10, v9, [I

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_1

    .line 3172
    sget v12, Lcom/appsflyer/internal/AFf1jSDK;->$10:I

    add-int/lit8 v12, v12, 0x29

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/AFf1jSDK;->$11:I

    rem-int/2addr v12, v4

    if-nez v12, :cond_0

    aget v12, v5, v11

    int-to-long v12, v12

    div-long/2addr v12, v6

    long-to-int v13, v12

    aput v13, v10, v11

    mul-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3119
    :cond_0
    aget v12, v5, v11

    int-to-long v12, v12

    xor-long/2addr v12, v6

    long-to-int v13, v12

    aput v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v10

    :cond_2
    array-length v5, v5

    new-array v5, v5, [I

    .line 3120
    sget-object v9, Lcom/appsflyer/internal/AFf1jSDK;->afErrorLog:[I

    const/16 v10, 0x5d

    if-eqz v9, :cond_3

    const/16 v11, 0x5d

    goto :goto_1

    :cond_3
    const/16 v11, 0x3a

    :goto_1
    if-eq v11, v10, :cond_4

    goto :goto_3

    :cond_4
    array-length v10, v9

    new-array v11, v10, [I

    .line 3172
    sget v12, Lcom/appsflyer/internal/AFf1jSDK;->$10:I

    add-int/lit8 v12, v12, 0x77

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lcom/appsflyer/internal/AFf1jSDK;->$11:I

    rem-int/2addr v12, v4

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_5

    .line 3120
    aget v13, v9, v12

    int-to-long v13, v13

    xor-long/2addr v13, v6

    long-to-int v14, v13

    aput v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    move-object v9, v11

    :goto_3
    array-length v6, v5

    invoke-static {v9, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3122
    iput v8, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    :goto_4
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    array-length v7, v0

    const/4 v9, 0x1

    if-ge v6, v7, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x1

    :goto_5
    if-eq v6, v9, :cond_8

    .line 3124
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    aget v6, v0, v6

    const/16 v7, 0x10

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v8

    .line 3125
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    aget v6, v0, v6

    int-to-char v6, v6

    aput-char v6, v2, v9

    .line 3126
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    add-int/2addr v6, v9

    aget v6, v0, v6

    shr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 3127
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    add-int/2addr v6, v9

    aget v6, v0, v6

    int-to-char v6, v6

    const/4 v10, 0x3

    aput-char v6, v2, v10

    .line 3131
    aget-char v6, v2, v8

    shl-int/2addr v6, v7

    aget-char v11, v2, v9

    add-int/2addr v6, v11

    iput v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3132
    aget-char v6, v2, v4

    shl-int/2addr v6, v7

    aget-char v11, v2, v10

    add-int/2addr v6, v11

    iput v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3135
    invoke-static {v5}, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper([I)V

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v7, :cond_7

    .line 3140
    iget v11, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    aget v12, v5, v6

    xor-int/2addr v11, v12

    iput v11, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3141
    iget v11, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    invoke-static {v11}, Lcom/appsflyer/internal/AFj1tSDK;->values(I)I

    move-result v11

    iget v12, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    xor-int/2addr v11, v12

    iput v11, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3143
    iget v11, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3144
    iget v12, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    iput v12, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3145
    iput v11, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 3147
    :cond_7
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3148
    iget v11, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    iput v11, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    .line 3149
    iput v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3151
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    aget v11, v5, v7

    xor-int/2addr v6, v11

    iput v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    .line 3152
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    const/16 v11, 0x11

    aget v12, v5, v11

    xor-int/2addr v6, v12

    iput v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    new-array v6, v4, [I

    .line 3155
    iget v12, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    aput v12, v6, v8

    iget v12, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    aput v12, v6, v9

    .line 3157
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v8

    .line 3158
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->valueOf:I

    int-to-char v6, v6

    aput-char v6, v2, v9

    .line 3159
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    ushr-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v4

    .line 3160
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper:I

    int-to-char v6, v6

    aput-char v6, v2, v10

    .line 3163
    invoke-static {v5}, Lcom/appsflyer/internal/AFj1tSDK;->AFKeystoreWrapper([I)V

    .line 3166
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    mul-int/lit8 v6, v6, 0x2

    aget-char v7, v2, v8

    aput-char v7, v3, v6

    .line 3167
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v9

    aget-char v7, v2, v9

    aput-char v7, v3, v6

    .line 3168
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    aget-char v7, v2, v4

    aput-char v7, v3, v6

    .line 3169
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v10

    aget-char v7, v2, v10

    aput-char v7, v3, v6

    .line 3122
    iget v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    add-int/2addr v6, v4

    iput v6, v1, Lcom/appsflyer/internal/AFj1tSDK;->AFInAppEventType:I

    .line 3172
    sget v6, Lcom/appsflyer/internal/AFf1jSDK;->$11:I

    add-int/2addr v6, v11

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFf1jSDK;->$10:I

    rem-int/2addr v6, v4

    goto/16 :goto_4

    :cond_8
    new-instance v0, Ljava/lang/String;

    move/from16 v1, p1

    invoke-direct {v0, v3, v8, v1}, Ljava/lang/String;-><init>([CII)V

    aput-object v0, p2, v8

    return-void
.end method

.method private afInfoLog()V
    .locals 4

    .line 143
    sget v0, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "[register] Successfully registered for Uninstall Tracking"

    const-string v3, "sentRegisterRequestToAF"

    .line 142
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->w:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-interface {v0, v3, v1}, Lcom/appsflyer/internal/AFd1xSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)V

    .line 143
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    sget v0, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method


# virtual methods
.method protected final AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 1

    sget p1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method protected final AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 8

    .line 66
    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFf1pSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFa1pSDK;)V

    .line 67
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1jSDK;->v:Lcom/appsflyer/internal/AFd1lSDK;

    .line 2025
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf()Lcom/appsflyer/internal/AFb1vSDK;

    move-result-object v1

    if-eqz v0, :cond_b

    .line 73
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1vSDK;->values()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 81
    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v5, "app_version_code"

    .line 82
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    const-string v5, "app_version_name"

    .line 83
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 85
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "app_name"

    .line 86
    invoke-virtual {p1, v5, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 88
    iget-wide v5, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string v1, "yyyy-MM-dd_HHmmssZ"

    .line 3020
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "installDate"

    .line 90
    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFb1vSDK;->valueOf(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v3, "Exception while collecting application version info."

    .line 92
    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1jSDK;->afWarnLog:Lcom/appsflyer/internal/AFg1qSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/appsflyer/internal/AFg1qSDK;->values(Ljava/util/Map;)V

    .line 96
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1pSDK;->AFInAppEventType()Ljava/util/Map;

    move-result-object v1

    const-string v3, "ivc"

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 121
    sget v5, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v5, v5, 0x47

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v5, v3

    const-string v5, "appUserId"

    .line 100
    invoke-virtual {p1, v5, v1}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    :cond_0
    const/4 v1, 0x3

    :try_start_1
    const-string v5, "model"

    .line 104
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    const/4 v5, 0x4

    new-array v5, v5, [I

    const v6, -0x6cf69bbd

    aput v6, v5, v4

    const v6, 0x7bc62cac

    aput v6, v5, v2

    const v6, -0x50b4ab5e

    aput v6, v5, v3

    const v6, -0x47197f3d

    aput v6, v5, v1

    .line 105
    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v2}, Lcom/appsflyer/internal/AFf1jSDK;->a([II[Ljava/lang/Object;)V

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v2, v5}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    const-string v5, "Exception while collecting device brand and model."

    .line 107
    invoke-static {v5, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v5, "deviceTrackingDisabled"

    invoke-virtual {v2, v5, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v6, 0x20

    const/16 v7, 0x21

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_2

    :cond_1
    const/16 v2, 0x21

    :goto_2
    if-eq v2, v6, :cond_2

    goto :goto_3

    .line 131
    :cond_2
    sget v2, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v2, v3

    const-string v2, "true"

    .line 112
    invoke-virtual {p1, v5, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 114
    :goto_3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 131
    sget v2, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/2addr v2, v3

    .line 3028
    iget-object v2, v0, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    const-string v5, "amazon_aid"

    .line 116
    invoke-virtual {p1, v5, v2}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 3033
    iget-object v0, v0, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Ljava/lang/Boolean;

    .line 117
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "amazon_aid_limit"

    invoke-virtual {p1, v2, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 119
    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "advertiserId"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3f

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/16 v7, 0x3f

    :goto_4
    const/4 v6, 0x0

    if-eq v7, v5, :cond_7

    .line 131
    sget v5, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/2addr v5, v1

    rem-int/lit16 v1, v5, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr v5, v3

    const/16 v1, 0x34

    if-nez v5, :cond_5

    const/16 v5, 0x34

    goto :goto_5

    :cond_5
    const/16 v5, 0xc

    .line 121
    :goto_5
    invoke-virtual {p1, v2, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    if-eq v5, v1, :cond_6

    goto :goto_6

    :cond_6
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 131
    throw p1

    .line 123
    :cond_7
    :goto_6
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->unregisterClient:Lcom/appsflyer/internal/AFg1zSDK;

    .line 3065
    iget-object v0, v0, Lcom/appsflyer/internal/AFg1zSDK;->registerClient:Ljava/lang/String;

    const-string v1, "devkey"

    .line 123
    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 124
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1jSDK;->v:Lcom/appsflyer/internal/AFd1lSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1pSDK;->w:Lcom/appsflyer/internal/AFd1xSDK;

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFb1lSDK;->values(Lcom/appsflyer/internal/AFd1lSDK;Lcom/appsflyer/internal/AFd1xSDK;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 125
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1jSDK;->afInfoLog:Ljava/lang/String;

    const-string v1, "af_gcm_token"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 126
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1pSDK;->w:Lcom/appsflyer/internal/AFd1xSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1, v4}, Lcom/appsflyer/internal/AFd1xSDK;->valueOf(Ljava/lang/String;I)I

    move-result v0

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch_counter"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    .line 129
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1jSDK;->force:Lcom/appsflyer/internal/AFd1rSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1rSDK;->values()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "channel"

    .line 131
    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFa1pSDK;->AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/Object;)Lcom/appsflyer/internal/AFa1pSDK;

    :cond_8
    sget p1, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/2addr p1, v3

    if-nez p1, :cond_9

    :try_start_3
    array-length p1, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    throw p1

    :cond_9
    return-void

    :cond_a
    const-string p1, "CustomerUserId not set, Tracking is disabled"

    .line 74
    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 75
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomerUserId not set, register is not sent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context is not provided, can\'t send register request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final unregisterClient()Z
    .locals 3

    .line 138
    sget v0, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/lit8 v0, v0, 0x2

    sget v0, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x48

    if-nez v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v0, 0x17

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return v2
.end method

.method public final valueOf()V
    .locals 5

    .line 57
    invoke-super {p0}, Lcom/appsflyer/internal/AFf1pSDK;->valueOf()V

    .line 1107
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1tSDK;->AFLogger:Lcom/appsflyer/internal/AFe1pSDK;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_2

    .line 60
    :cond_1
    sget v3, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    add-int/lit8 v3, v3, 0x7d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1pSDK;->isSuccessful()Z

    move-result v0

    :try_start_0
    array-length v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    .line 59
    :cond_2
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1pSDK;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eq v1, v2, :cond_4

    goto :goto_2

    .line 60
    :cond_4
    :goto_1
    sget v0, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1jSDK;->afInfoLog()V

    if-nez v0, :cond_5

    :try_start_1
    array-length v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method protected final values(Lcom/appsflyer/internal/AFa1pSDK;)V
    .locals 2

    sget p1, Lcom/appsflyer/internal/AFf1jSDK;->afVerboseLog:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFf1jSDK;->afDebugLog:I

    const/4 v0, 0x2

    rem-int/2addr p1, v0

    const/16 v1, 0x1c

    if-nez p1, :cond_0

    const/16 v0, 0x1c

    :cond_0
    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x42

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method
