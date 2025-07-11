.class public Lcom/netease/pushservice/PushServiceInfo;
.super Ljava/lang/Object;
.source "PushServiceInfo.java"


# static fields
.field public static EB:Ljava/lang/String;

.field private static EBconnectUrl:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private charArray:[C

.field public mDevId:Ljava/lang/String;

.field public mPushSrv:Ljava/lang/String;

.field private mbReset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NGPush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/netease/pushservice/PushServiceInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 44
    sput-object v0, Lcom/netease/pushservice/PushServiceInfo;->EB:Ljava/lang/String;

    const-string v0, "unipush.x.easebar.com:50441"

    .line 48
    sput-object v0, Lcom/netease/pushservice/PushServiceInfo;->EBconnectUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unipush.x.netease.com:50441"

    .line 45
    iput-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mPushSrv:Ljava/lang/String;

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mbReset:Z

    const/16 v0, 0x24

    new-array v0, v0, [C

    .line 170
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method private appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 6

    .line 254
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 255
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\\W+"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 257
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    if-lez p3, :cond_0

    .line 259
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 264
    :cond_1
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 267
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/16 v4, 0x5f

    .line 268
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 269
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 270
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 271
    :cond_3
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-gez v4, :cond_4

    .line 273
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 276
    :cond_5
    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createRandom(I[C)Ljava/lang/String;
    .locals 5

    .line 281
    array-length v0, p2

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 286
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 287
    aget-char v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createRandomUUID()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createSpecialUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    array-length v1, v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 182
    iget-object v6, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    int-to-long v7, v1

    rem-long v9, v3, v7

    long-to-int v10, v9

    aget-char v6, v6, v10

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    div-long/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    invoke-direct {p0, v6, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_1
    invoke-direct {p0, v0, v1, v6}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 193
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_2

    .line 195
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    invoke-direct {p0, v3, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_2
    invoke-direct {p0, v0, v1, v3}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 203
    invoke-static {p1}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getUnisdkAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 213
    invoke-static {p1, v2}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getUnisdkDeviceId(Landroid/content/Context;Lcom/netease/pushclient/UnisdkDeviceUtil$GaidCallback;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 214
    invoke-static {p1, v2}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getUnisdkDeviceId(Landroid/content/Context;Lcom/netease/pushclient/UnisdkDeviceUtil$GaidCallback;)Ljava/lang/String;

    move-result-object v1

    .line 216
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    iget-object v1, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    invoke-direct {p0, v3, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/4 v2, -0x6

    .line 220
    invoke-direct {p0, v0, v1, v2}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 227
    invoke-static {p1}, Lcom/netease/pushclient/UnisdkDeviceUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "40:F3:08:3F:FA:D3"

    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "etrl52GTI95035737640F308png781lw"

    return-object p1

    :cond_5
    if-nez p1, :cond_6

    const-string p1, ""

    :cond_6
    const-string v1, "00:00:00"

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    invoke-direct {p0, v3, p1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object p1

    .line 238
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 239
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    invoke-direct {p0, v3, p1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object p1

    .line 242
    :cond_8
    invoke-direct {p0, v0, p1, v2}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 246
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    invoke-direct {p0, v3, p1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-direct {p0, v0, p1, v3}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static readLibraryConfig(Landroid/content/Context;)V
    .locals 6

    const-string v0, "EB"

    const-string v1, "ntunisdk_config"

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    sget-object v4, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    const-string v5, "fail to read ntunisdk_config, try ntunisdk.cfg"

    invoke-static {v4, v5}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    :goto_0
    if-nez v4, :cond_0

    :try_start_1
    const-string v1, "ntunisdk.cfg"

    .line 95
    invoke-virtual {p0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_1
    if-nez v4, :cond_2

    .line 98
    sget-object p0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    const-string v2, "ntunisdk_config/ntunisdk.cfg null"

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 114
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    return-void

    .line 101
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p0, :cond_4

    if-eqz v4, :cond_3

    .line 114
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    return-void

    .line 105
    :cond_4
    :try_start_5
    new-array p0, p0, [B

    .line 106
    invoke-virtual {v4, p0}, Ljava/io/InputStream;->read([B)I

    .line 108
    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, p0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_6

    .line 114
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    nop

    goto :goto_2

    .line 110
    :catch_4
    :try_start_7
    sget-object p0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    const-string v2, "ntunisdk_config/ntunisdk.cfg config not found"

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_5

    .line 114
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_5
    move-object v2, v3

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    .line 121
    sget-object p0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_7
    sget-object p0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "\uff1a"

    .line 128
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "\u201c"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "\u201d"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 129
    :cond_8
    sget-object p0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u5305\u542b\u4e2d\u6587\u7279\u6b8a\u5b57\u7b26"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_9
    new-instance p0, Lorg/json/JSONTokener;

    invoke-direct {p0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 136
    :try_start_9
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 137
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    if-nez v1, :cond_a

    return-void

    .line 141
    :cond_a
    :try_start_a
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 143
    :catch_6
    :try_start_b
    sget-object p0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    const-string v0, "no tag:EB"

    invoke-static {p0, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v3, :cond_b

    .line 146
    sget-object p0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EB--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sput-object v3, Lcom/netease/pushservice/PushServiceInfo;->EB:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_4

    .line 150
    :catch_7
    sget-object p0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    const-string v0, "ntunisdk_config/ntunisdk.cfg config parse to json error"

    invoke-static {p0, v0}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void

    :goto_5
    if-eqz v4, :cond_c

    .line 114
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 118
    :catch_8
    :cond_c
    throw p0
.end method


# virtual methods
.method public createUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/netease/pushservice/PushServiceInfo;->createSpecialUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConnectUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 69
    invoke-static {p1}, Lcom/netease/pushservice/PushServiceInfo;->readLibraryConfig(Landroid/content/Context;)V

    .line 70
    sget-object p1, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectUrl EB--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/pushservice/PushServiceInfo;->EB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/push/utils/PushLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object p1, Lcom/netease/pushservice/PushServiceInfo;->EB:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/netease/pushservice/PushServiceInfo;->EB:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    sget-object p1, Lcom/netease/pushservice/PushServiceInfo;->EBconnectUrl:Ljava/lang/String;

    return-object p1

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/netease/pushservice/PushServiceInfo;->mPushSrv:Ljava/lang/String;

    return-object p1
.end method

.method public getPushSrv()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mPushSrv:Ljava/lang/String;

    return-object v0
.end method

.method public resetUUID()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mbReset:Z

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    return-void
.end method

.method public setPushSrv(Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iput-object p1, p0, Lcom/netease/pushservice/PushServiceInfo;->mPushSrv:Ljava/lang/String;

    :cond_0
    return-void
.end method
