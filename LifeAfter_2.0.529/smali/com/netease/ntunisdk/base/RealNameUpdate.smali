.class public final Lcom/netease/ntunisdk/base/RealNameUpdate;
.super Ljava/lang/Object;
.source "RealNameUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;,
        Lcom/netease/ntunisdk/base/RealNameUpdate$a;,
        Lcom/netease/ntunisdk/base/RealNameUpdate$b;
    }
.end annotation


# direct methods
.method private static a()Ljava/lang/String;
    .locals 3

    .line 27
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "SDK_UNI_UPDATE_URL"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "EB"

    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "https://g0.gsf.easebar.com/feature/"

    goto :goto_1

    :cond_1
    const-string v0, "https://g0.gsf.netease.com/feature/"

    goto :goto_1

    .line 36
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, ""

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "feature/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method static synthetic a([B)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/netease/ntunisdk/base/RealNameUpdate;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V
    .locals 6

    .line 2152
    invoke-static {}, Lcom/netease/ntunisdk/base/RealNameUpdate;->a()Ljava/lang/String;

    move-result-object v0

    .line 2153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "UniSDK RealNameUpdate"

    if-eqz v1, :cond_0

    const-string p0, "null or empty url, gameid feature will not go on"

    .line 2154
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2158
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "JF_GAMEID"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v0, v5

    const-string v3, "%s.json"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".md5?gameid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2160
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feature md5 url:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    new-instance v2, Lcom/netease/ntunisdk/base/RealNameUpdate$b;

    invoke-direct {v2, p0, v0, v5, p1}, Lcom/netease/ntunisdk/base/RealNameUpdate$b;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;ZLcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wgetIncludeNewLine(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void
.end method

.method private static b([B)Ljava/lang/String;
    .locals 9

    :try_start_0
    const-string v0, "MD5"

    .line 167
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 169
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/16 v1, 0x31

    const/4 v3, 0x1

    aput-char v1, v0, v3

    const/16 v1, 0x32

    const/4 v3, 0x2

    aput-char v1, v0, v3

    const/4 v1, 0x3

    const/16 v4, 0x33

    aput-char v4, v0, v1

    const/16 v1, 0x34

    const/4 v4, 0x4

    aput-char v1, v0, v4

    const/4 v1, 0x5

    const/16 v4, 0x35

    aput-char v4, v0, v1

    const/4 v1, 0x6

    const/16 v4, 0x36

    aput-char v4, v0, v1

    const/4 v1, 0x7

    const/16 v4, 0x37

    aput-char v4, v0, v1

    const/16 v1, 0x8

    const/16 v4, 0x38

    aput-char v4, v0, v1

    const/16 v1, 0x9

    const/16 v4, 0x39

    aput-char v4, v0, v1

    const/16 v1, 0xa

    const/16 v4, 0x61

    aput-char v4, v0, v1

    const/16 v1, 0xb

    const/16 v4, 0x62

    aput-char v4, v0, v1

    const/16 v1, 0xc

    const/16 v4, 0x63

    aput-char v4, v0, v1

    const/16 v1, 0xd

    const/16 v4, 0x64

    aput-char v4, v0, v1

    const/16 v1, 0xe

    const/16 v4, 0x65

    aput-char v4, v0, v1

    const/16 v1, 0x66

    const/16 v4, 0xf

    aput-char v1, v0, v4

    .line 1179
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 1181
    array-length v3, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v6, p0, v2

    add-int/lit8 v7, v5, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/2addr v8, v4

    .line 1182
    aget-char v8, v0, v8

    aput-char v8, v1, v5

    add-int/lit8 v5, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    .line 1183
    aget-char v6, v0, v6

    aput-char v6, v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1186
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method static b(Lcom/netease/ntunisdk/base/SdkBase;Lcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V
    .locals 5

    .line 43
    invoke-static {}, Lcom/netease/ntunisdk/base/RealNameUpdate;->a()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "UniSDK RealNameUpdate"

    if-eqz v1, :cond_0

    const-string p0, "null or empty url, update feature will not go on"

    .line 45
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "all.json"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".md5?gameid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "JF_GAMEID"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feature md5 url:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v2, Lcom/netease/ntunisdk/base/RealNameUpdate$b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3, p1}, Lcom/netease/ntunisdk/base/RealNameUpdate$b;-><init>(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;ZLcom/netease/ntunisdk/base/RealNameUpdate$RealNameUpdateListener;)V

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/NetUtil;->wgetIncludeNewLine(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V

    return-void
.end method
