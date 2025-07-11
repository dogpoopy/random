.class public Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;
.super Ljava/lang/Object;
.source "TikTokOpenApiImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/open/tiktok/api/TikTokOpenApi;


# static fields
.field private static final API_TYPE_LOGIN:I = 0x0

.field private static final API_TYPE_SHARE:I = 0x1

.field private static final LOCAL_ENTRY_ACTIVITY:Ljava/lang/String; = "tiktokapi.TikTokEntryActivity"

.field private static final MUSICALLY_PACKAGE:Ljava/lang/String; = "com.zhiliaoapp.musically"

.field private static final REMOTE_SHARE_ACTIVITY:Ljava/lang/String; = "share.SystemShareActivity"

.field private static final TIKTOK_PACKAGE:Ljava/lang/String; = "com.ss.android.ugc.trill"

.field private static final TYPE_AUTH_HANDLER:I = 0x1

.field private static final TYPE_SHARE_HANDLER:I = 0x2

.field private static final US_CONTRY_CODE:Ljava/lang/String; = "US"


# instance fields
.field private authImpl:Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;

.field private handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthcheckApis:[Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

.field private mContext:Landroid/content/Context;

.field private final mSharecheckApis:[Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

.field private shareImpl:Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->handlerMap:Ljava/util/Map;

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->mContext:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->shareImpl:Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;

    .line 59
    iput-object p2, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->authImpl:Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;

    .line 60
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->handlerMap:Ljava/util/Map;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/open/tiktok/authorize/handler/SendAuthDataHandler;

    invoke-direct {v2}, Lcom/bytedance/sdk/open/tiktok/authorize/handler/SendAuthDataHandler;-><init>()V

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object p2, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->handlerMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/open/tiktok/share/ShareDataHandler;

    invoke-direct {v2}, Lcom/bytedance/sdk/open/tiktok/share/ShareDataHandler;-><init>()V

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-array p2, v1, [Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    new-instance v0, Lcom/bytedance/sdk/open/tiktok/helper/MusicallyCheckHelperImpl;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/open/tiktok/helper/MusicallyCheckHelperImpl;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    aput-object v0, p2, v2

    new-instance v0, Lcom/bytedance/sdk/open/tiktok/helper/TikTokCheckHelperImpl;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/open/tiktok/helper/TikTokCheckHelperImpl;-><init>(Landroid/content/Context;)V

    aput-object v0, p2, p3

    iput-object p2, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->mAuthcheckApis:[Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    .line 68
    new-array p2, v1, [Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    new-instance v0, Lcom/bytedance/sdk/open/tiktok/helper/MusicallyCheckHelperImpl;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/open/tiktok/helper/MusicallyCheckHelperImpl;-><init>(Landroid/content/Context;)V

    aput-object v0, p2, v2

    new-instance v0, Lcom/bytedance/sdk/open/tiktok/helper/TikTokCheckHelperImpl;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/open/tiktok/helper/TikTokCheckHelperImpl;-><init>(Landroid/content/Context;)V

    aput-object v0, p2, p3

    iput-object p2, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->mSharecheckApis:[Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    return-void
.end method

.method private getSupportApiAppInfo(I)Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 190
    :pswitch_0
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->mSharecheckApis:[Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 191
    invoke-interface {v2}, Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;->isAppSupportShare()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->mAuthcheckApis:[Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 184
    invoke-interface {v2}, Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;->isAppSupportAuthorization()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendWebAuthRequest(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;)Z
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->authImpl:Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;

    const-class v1, Lcom/bytedance/sdk/open/tiktok/ui/TikTokWebAuthorizeActivity;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->authorizeWeb(Ljava/lang/Class;Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public authorize(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;)Z
    .locals 8

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->getSupportApiAppInfo(I)Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->authImpl:Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;

    invoke-interface {v0}, Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;->getRemoteAuthEntryActivity()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tiktokapi.TikTokEntryActivity"

    const-string v6, "opensdk-oversea-external"

    const-string v7, "0.2.0.2"

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/open/tiktok/authorize/AuthImpl;->authorizeNative(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->sendWebAuthRequest(Lcom/bytedance/sdk/open/tiktok/authorize/model/Authorization$Request;)Z

    move-result p1

    return p1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.2.0.2"

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 81
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;->onErrorIntent(Landroid/content/Intent;)V

    return v0

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 86
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;->onErrorIntent(Landroid/content/Intent;)V

    return v0

    :cond_2
    const-string p1, "_bytedance_params_type"

    .line 90
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "_aweme_open_sdk_params_type"

    .line 92
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    :cond_3
    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    .line 102
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->handlerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;

    invoke-interface {v0, p1, v1, p2}, Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;->handle(ILandroid/os/Bundle;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z

    move-result p1

    return p1

    .line 100
    :pswitch_0
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->handlerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;

    invoke-interface {v0, p1, v1, p2}, Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;->handle(ILandroid/os/Bundle;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z

    move-result p1

    return p1

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->handlerMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;

    invoke-interface {v0, p1, v1, p2}, Lcom/bytedance/sdk/open/tiktok/common/handler/IDataHandler;->handle(ILandroid/os/Bundle;Lcom/bytedance/sdk/open/tiktok/common/handler/IApiEventHandler;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isAppInstalled()Z
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->mSharecheckApis:[Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 109
    invoke-interface {v4}, Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;->isAppInstalled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isAppSupportAuthorization()Z
    .locals 2

    const/4 v0, 0x1

    .line 171
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->getSupportApiAppInfo(I)Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppSupportShare()Z
    .locals 2

    const/4 v0, 0x1

    .line 119
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->getSupportApiAppInfo(I)Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShareSupportFileProvider()Z
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->mSharecheckApis:[Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 125
    invoke-interface {v4}, Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;->isShareSupportFileProvider()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public share(Lcom/bytedance/sdk/open/tiktok/share/Share$Request;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->isAppSupportShare()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 140
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->getSupportApiAppInfo(I)Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 141
    iget-object v2, p0, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->shareImpl:Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;

    const-string v3, "tiktokapi.TikTokEntryActivity"

    const-string v5, "share.SystemShareActivity"

    .line 142
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->getSupportApiAppInfo(I)Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/open/tiktok/base/IAPPCheckHelper;->getRemoteAuthEntryActivity()Ljava/lang/String;

    move-result-object v7

    const-string v8, "opensdk-oversea-external"

    const-string v9, "0.2.0.2"

    move-object v6, p1

    .line 141
    invoke-virtual/range {v2 .. v9}, Lcom/bytedance/sdk/open/tiktok/share/ShareImpl;->share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/open/tiktok/share/Share$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public share(Lcom/bytedance/sdk/open/tiktok/share/ShareRequest;)Z
    .locals 0

    .line 150
    invoke-virtual {p1}, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest;->getShareRequest()Lcom/bytedance/sdk/open/tiktok/share/Share$Request;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/impl/TikTokOpenApiImpl;->share(Lcom/bytedance/sdk/open/tiktok/share/Share$Request;)Z

    move-result p1

    return p1
.end method
