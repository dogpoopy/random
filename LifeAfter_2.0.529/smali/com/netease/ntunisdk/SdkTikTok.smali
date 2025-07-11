.class public Lcom/netease/ntunisdk/SdkTikTok;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkTikTok.java"


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "0.2.0.2"

.field private static final TAG:Ljava/lang/String; = "SdkTikTok"

.field public static tiktokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const-string p1, "INNER_MODE_SECOND_CHANNEL"

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkTikTok;->setPropInt(Ljava/lang/String;I)V

    const-string p1, "INNER_MODE_NO_PAY"

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkTikTok;->setPropInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method

.method protected doSepcialConfigVal(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "TIKTOK_CLIENT_KEY"

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/SdkTikTok;->doConfigVal(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 5

    const-string v0, "SdkTikTok"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 261
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "isInstalledAndSupportedShare"

    .line 262
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    sget-object p1, Lcom/netease/ntunisdk/SdkTikTok;->tiktokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    invoke-interface {p1}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->isAppInstalled()Z

    move-result p1

    const-string v1, "TIKTOK_IS_INSTALLED"

    .line 267
    invoke-virtual {p0, v1, p1}, Lcom/netease/ntunisdk/SdkTikTok;->setPropInt(Ljava/lang/String;I)V

    .line 269
    sget-object v1, Lcom/netease/ntunisdk/SdkTikTok;->tiktokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    invoke-interface {v1}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->isAppSupportShare()Z

    move-result v1

    const-string v2, "TIKTOK_SHARE_IS_SUPPORTED"

    .line 272
    invoke-virtual {p0, v2, v1}, Lcom/netease/ntunisdk/SdkTikTok;->setPropInt(Ljava/lang/String;I)V

    const-string v2, "SdkTikTok"

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAppSupportAuthorization:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SdkTikTok"

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAppSupportShare:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkTikTok;->extendFuncCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "SdkTikTok"

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SdkTikTok"

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendFunc exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "tiktok"

    return-object v0
.end method

.method public getFileUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkTikTok;->myCtx:Landroid/content/Context;

    .line 227
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".unidouyin.fileprovider"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-static {p1, p2, v0}, Lcom/netease/ntunisdk/UniDouYinFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "com.zhiliaoapp.musically"

    const/4 v1, 0x1

    .line 229
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string v0, "com.ss.android.ugc.trill"

    .line 231
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 233
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkTikTok;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 67
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTikTok;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkTikTok;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 77
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTikTok;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.2.0.2"

    return-object v0
.end method

.method protected getUniSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.2.0.2"

    return-object v0
.end method

.method public hasPlatform(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "TikTok"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SdkTikTok"

    const-string v0, "api\u4e0d\u4e3a\u7a7a"

    .line 247
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object p1, Lcom/netease/ntunisdk/SdkTikTok;->tiktokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    if-eqz p1, :cond_0

    const-string p1, "SdkTikTok"

    const-string v0, "\u8fd4\u56de\u662f\u5426\u5b89\u88c5"

    .line 249
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object p1, Lcom/netease/ntunisdk/SdkTikTok;->tiktokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    invoke-interface {p1}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->isAppInstalled()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 4

    const-string v0, "FEATURE_HAS_SHARE"

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkTikTok;->setFeature(Ljava/lang/String;Z)V

    const-string v0, "SdkTikTok"

    const-string v1, "init..."

    .line 46
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TIKTOK_CLIENT_KEY"

    .line 47
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTikTok;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkTikTok"

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientkey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->init(Lcom/bytedance/sdk/open/tiktok/TikTokOpenConfig;)Z

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTikTok;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/open/tiktok/TikTokOpenApiFactory;->create(Landroid/app/Activity;)Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/SdkTikTok;->tiktokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    const/4 v0, 0x0

    .line 52
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 2

    const-string v0, "UIN"

    const-string v1, "TikTokSharesdkUid"

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkTikTok;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SESSION"

    const-string v1, "TikTokSharesdkSession"

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkTikTok;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LOGIN_STAT"

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkTikTok;->setPropInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkTikTok;->loginDone(I)V

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 5

    const-string v0, "SdkTikTok"

    const-string v1, "share..."

    .line 125
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SdkTikTok"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shareInfo\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "SdkTikTok"

    const-string v0, "shareInfo is null"

    .line 128
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkTikTok;->shareFinished(Z)V

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getText()Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getImage()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareThumb()Landroid/graphics/Bitmap;

    .line 139
    new-instance v2, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;

    invoke-direct {v2}, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;-><init>()V

    const-string v3, "TYPE_IMAGE"

    .line 142
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "SdkTikTok"

    const-string v1, "Tiktok share Image!"

    .line 143
    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;

    invoke-direct {v0}, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;-><init>()V

    .line 170
    iput-object p1, v0, Lcom/bytedance/sdk/open/tiktok/base/ImageObject;->mImagePaths:Ljava/util/ArrayList;

    .line 171
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    invoke-direct {p1}, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;-><init>()V

    .line 172
    iput-object v0, p1, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;->mMediaObject:Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;

    .line 173
    iput-object p1, v2, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mMediaContent:Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    .line 175
    sget-object p1, Lcom/netease/ntunisdk/SdkTikTok;->tiktokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->share(Lcom/bytedance/sdk/open/tiktok/share/Share$Request;)Z

    goto :goto_1

    :cond_1
    const-string v0, "TYPE_VIDEO"

    .line 176
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "SdkTikTok"

    const-string v0, "Tiktok share Video!"

    .line 178
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_2

    .line 182
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkTikTok;->myCtx:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/SdkTikTok;->getFileUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SdkTikTok"

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/open/tiktok/base/VideoObject;

    invoke-direct {v0}, Lcom/bytedance/sdk/open/tiktok/base/VideoObject;-><init>()V

    .line 200
    iput-object p1, v0, Lcom/bytedance/sdk/open/tiktok/base/VideoObject;->mVideoPaths:Ljava/util/ArrayList;

    .line 201
    new-instance p1, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    invoke-direct {p1}, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;-><init>()V

    .line 202
    iput-object v0, p1, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;->mMediaObject:Lcom/bytedance/sdk/open/tiktok/base/IMediaObject;

    .line 203
    iput-object p1, v2, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mMediaContent:Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    const-string p1, "ss"

    .line 204
    iput-object p1, v2, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mState:Ljava/lang/String;

    .line 214
    sget-object p1, Lcom/netease/ntunisdk/SdkTikTok;->tiktokOpenApi:Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;->share(Lcom/bytedance/sdk/open/tiktok/share/Share$Request;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected specialShareChannel(Lcom/netease/ntunisdk/base/ShareInfo;)Ljava/lang/String;
    .locals 1

    .line 238
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result p1

    const/16 v0, 0x131

    if-ne p1, v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkTikTok;->getChannel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method
