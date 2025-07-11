.class public Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;
.super Ljava/lang/Object;
.source "ProtocolProvider.java"


# static fields
.field public static final HAS_ACCEPT:I = 0x1

.field public static final HAS_UPDATE:I = 0x2

.field public static final NO_ACCEPT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "P"


# instance fields
.field private hasAcceptLaunchProtocol:Z

.field private mContext:Landroid/content/Context;

.field private mCurCompactUrl:Ljava/lang/String;

.field private mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

.field private mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

.field private mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

.field private mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789abcdef"

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 60
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 61
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 62
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    .line 63
    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 64
    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 303
    :cond_0
    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/UrlConnectImpl;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "P"

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    .line 309
    :cond_1
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolTextSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save protocol path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", origin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {v2, v0}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "save Protocol success"

    .line 312
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "save Protocol error"

    .line 314
    invoke-static {v3, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_3
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 320
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {p1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "textMd5 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "MD5 match"

    .line 327
    invoke-static {v3, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :catch_0
    :cond_4
    return-object v1

    :cond_5
    return-object v0
.end method

.method private downloadProtocolText(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const-string v0, "FullTextBase64HttpsUrl"

    .line 282
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fullTextBase64Url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Hash"

    .line 287
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "FullTextHttpsUrl"

    .line 291
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 295
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getProtocolFromServer(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 122
    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/utils/UrlConnectImpl;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProtocolFromServer : \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v3

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolTextSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save protocol path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", origin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "save Protocol success"

    .line 133
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "save Protocol error"

    .line 135
    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    :goto_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonException >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v3

    :goto_1
    return-object p1
.end method

.method private getProtocolTextSavePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 479
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "protocol"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 484
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 485
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRequestUrl()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "https://protocol.unisdk.netease.com/release/latest_v89.json"

    :cond_1
    return-object v0
.end method

.method private isAcceptProtocol(Ljava/lang/String;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 382
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAcceptProtocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 385
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "-"

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v4

    .line 391
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curIdVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    const/4 p1, 0x0

    return p1

    .line 398
    :cond_3
    iget-boolean v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->isMinorChange:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    .line 400
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v2, v1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getAcceptedProtocolVersion(Ljava/lang/String;)I

    move-result v2

    .line 412
    iget v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->prevMajorChangeId:I

    if-lez v3, :cond_4

    .line 413
    iget v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->prevMajorChangeId:I

    if-ge v2, v3, :cond_4

    return v4

    .line 418
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 420
    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object p2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {p2, p3, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->acceptProtocol(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 427
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "protocolV : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v4

    :cond_6
    :goto_0
    return v0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 48
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 50
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private parseLocalProtocol(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "VersionId"

    .line 554
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v2, "Id"

    .line 558
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "P"

    invoke-static {v4, v3}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-direct {v3, v1, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;-><init>(ILjava/lang/String;)V

    const-string p1, "i18n"

    .line 564
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 566
    new-instance v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    invoke-direct {v1}, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;-><init>()V

    const-string v5, "unisdk_protocol_title"

    .line 567
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->title:Ljava/lang/String;

    const-string v5, "unisdk_protocol_confirm"

    .line 568
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->confirm:Ljava/lang/String;

    const-string v5, "unisdk_protocol_accept"

    .line 569
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->accept:Ljava/lang/String;

    const-string v5, "unisdk_protocol_reject"

    .line 570
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->reject:Ljava/lang/String;

    .line 571
    iput-object v1, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->globalInfo:Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    :cond_2
    const/4 p1, 0x0

    const-string v1, "IsMinorChange"

    .line 575
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->isMinorChange:Z

    const-string v1, "PrevMajorChangeId"

    .line 578
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->prevMajorChangeId:I

    const-string v1, "FullTextBase64HttpsUrl"

    .line 581
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    new-instance v5, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 584
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 585
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v1, v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    iput-object v0, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    const-string v1, "FullTextUpdateBase64HttpsUrl"

    .line 593
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 596
    new-instance v5, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v7, v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    iput-object v1, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->updateText:Ljava/lang/String;

    :cond_3
    const-string v1, "FullTextThanksBase64HttpsUrl"

    .line 600
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 603
    new-instance v0, Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v5, v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    iput-object v0, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    goto :goto_0

    .line 607
    :cond_4
    iput-object v0, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    .line 610
    :goto_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iput v0, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    const-string v0, "SubProtocol"

    .line 615
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 616
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 617
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    :goto_1
    if-ge p1, v0, :cond_8

    .line 620
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ProtocolUrl"

    .line 621
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 624
    :cond_5
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 626
    :cond_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, v1, v4}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseLocalProtocol(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 629
    iget-object v2, v3, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 632
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    return-object v3

    :cond_9
    return-object v0
.end method

.method private parseProtocolJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "VersionId"

    .line 160
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Id"

    .line 164
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "P"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-direct {v2, v1, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;-><init>(ILjava/lang/String;)V

    const-string p1, "i18n"

    .line 170
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 172
    new-instance v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    invoke-direct {v4}, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;-><init>()V

    const-string v5, "unisdk_protocol_title"

    .line 173
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->title:Ljava/lang/String;

    const-string v5, "unisdk_protocol_confirm"

    .line 174
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->confirm:Ljava/lang/String;

    const-string v5, "unisdk_protocol_accept"

    .line 175
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->accept:Ljava/lang/String;

    const-string v5, "unisdk_protocol_reject"

    .line 176
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;->reject:Ljava/lang/String;

    .line 177
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->globalInfo:Lcom/netease/ntunisdk/external/protocol/data/GlobalInfo;

    :cond_2
    const/4 p1, 0x0

    const-string v4, "IsMinorChange"

    .line 181
    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->isMinorChange:Z

    const-string v4, "PrevMajorChangeId"

    .line 184
    invoke-virtual {p2, v4, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->prevMajorChangeId:I

    const-string v4, "FullTextBase64HttpsUrl"

    .line 187
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Hash"

    .line 188
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-direct {p0, v4, v5}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 191
    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    :cond_3
    const-string v5, "FullTextUpdateBase64HttpsUrl"

    .line 196
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HashUpdate"

    .line 197
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-direct {p0, v5, v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 200
    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    iput-object v5, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->updateText:Ljava/lang/String;

    :cond_4
    const-string v5, "FullTextThanksBase64HttpsUrl"

    .line 203
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HashThanks"

    .line 204
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    invoke-direct {p0, v5, v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 207
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_5
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->reviewText:Ljava/lang/String;

    .line 215
    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v4, v1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getLocalVersion(I)I

    move-result v4

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    const/4 v5, 0x1

    if-lez v4, :cond_7

    if-le v0, v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    .line 236
    :cond_7
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needUpdateProtocol = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_9

    .line 240
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->downloadProtocolText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 text :\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v5, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mTextHandler:Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;

    iget-object v6, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getIssuer()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getGameName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolTextHandler;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2 text :\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 246
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v3, v1, v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->updateLocalVersion(II)V

    .line 247
    iput v0, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    .line 248
    iput-object v4, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v0, "down ProtocolText error"

    .line 250
    invoke-static {v3, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    const-string v0, "SubProtocol"

    .line 255
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 256
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 257
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    :goto_3
    if-ge p1, v0, :cond_b

    .line 260
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "ProtocolUrl"

    .line 261
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-direct {p0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolFromServer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 264
    invoke-direct {p0, v1, v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseProtocolJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 266
    iget-object v3, v2, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->subProtocol:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_b
    return-object v2
.end method


# virtual methods
.method public checkLatestProtocol()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prop requestUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    if-eqz v1, :cond_2

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 100
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    .line 101
    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    :cond_2
    :goto_0
    const-string v1, "start check !! "

    .line 104
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolFromServer(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseProtocolJson(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    return-void

    .line 108
    :cond_3
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;

    invoke-direct {v0}, Lcom/netease/ntunisdk/external/protocol/utils/FetchProtocolException;-><init>()V

    throw v0
.end method

.method public checkNeedShowProtocolByUid(Ljava/lang/String;)I
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->getAcceptedProtocolsByUid(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 362
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    invoke-direct {p0, p1, v3, v0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->isAcceptProtocol(Ljava/lang/String;Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;Ljava/util/List;)I

    move-result v0

    const-string v3, "P"

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "%s is need Update"

    .line 369
    invoke-static {v3, p1, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    .line 367
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "%s isAccept = %b"

    invoke-static {v3, p1, v4}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return v0

    :cond_5
    :goto_3
    return v2
.end method

.method public checkNeedShowProtocolWhenLaunch()Z
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    iget v0, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->id:I

    invoke-virtual {v2, v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->hasUserAcceptProtocol(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseProtocol()Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    return-object v0
.end method

.method public getProtocolText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 455
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolTextSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 456
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "UTF-8"

    .line 458
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public hasAcceptLaunchProtocol()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->hasAcceptLaunchProtocol()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    return v0
.end method

.method public initStore(Landroid/content/Context;)V
    .locals 1

    .line 490
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    return-void
.end method

.method public isProtocolUrlChanged()Z
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadLocalProtocol()V
    .locals 3

    const-string v0, "P"

    const-string v1, "loadLocalProtocol"

    .line 501
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    .line 504
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iput v2, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->version:I

    .line 505
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    const-string v2, "unisdk_protocol_default_txt"

    invoke-static {v0, v2}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->isAssetsFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/external/protocol/utils/FileUtil;->readAssetsFileAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;->text:Ljava/lang/String;

    goto :goto_0

    .line 510
    :cond_0
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    :goto_0
    return-void
.end method

.method public loadLocalProtocolFromFiles()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "load local protocol error!"

    .line 516
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prop requestUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "P"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    goto :goto_0

    .line 521
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    if-eqz v2, :cond_2

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 528
    iput-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    .line 529
    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    :cond_2
    :goto_0
    :try_start_0
    const-string v2, "start check !! "

    .line 534
    invoke-static {v3, v2}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurCompactUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->getProtocolText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-direct {p0, v1, v3}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->parseLocalProtocol(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    if-eqz v1, :cond_3

    return-void

    .line 544
    :cond_3
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 540
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public saveConfirmByUid(Ljava/lang/String;)V
    .locals 2

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mCurrentProtocol:Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;

    if-nez v0, :cond_1

    return-void

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v1, v0, p1}, Lcom/netease/ntunisdk/external/protocol/data/Store;->acceptProtocol(Lcom/netease/ntunisdk/external/protocol/data/ProtocolInfo;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->setAcceptLaunchProtocol()V

    return-void
.end method

.method public setAcceptLaunchProtocol()V
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->hasAcceptLaunchProtocol:Z

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mStore:Lcom/netease/ntunisdk/external/protocol/data/Store;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/external/protocol/data/Store;->setAcceptLaunchProtocol()V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->initStore(Landroid/content/Context;)V

    return-void
.end method

.method public setProp(Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/data/ProtocolProvider;->mProp:Lcom/netease/ntunisdk/external/protocol/data/ProtocolProp;

    return-void
.end method
