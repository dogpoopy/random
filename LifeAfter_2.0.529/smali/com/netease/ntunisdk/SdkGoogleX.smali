.class public Lcom/netease/ntunisdk/SdkGoogleX;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkGoogleX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkGoogleX$SignOutCallback;,
        Lcom/netease/ntunisdk/SdkGoogleX$CheckAccountCallback;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "google"

.field private static final SDK_VERSION:Ljava/lang/String; = "3.0"

.field private static final TAG:Ljava/lang/String; = "SdkGoogleX"


# instance fields
.field private mApi:Lcom/netease/ntunisdk/google/Api;

.field private mHasFriends:Z

.field private preExeTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mHasFriends:Z

    .line 45
    invoke-static {}, Lcom/netease/ntunisdk/google/ApiManager;->getApi()Lcom/netease/ntunisdk/google/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    .line 46
    invoke-interface {p1}, Lcom/netease/ntunisdk/google/Api;->hasFriends()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mHasFriends:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/util/List;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendListCallback(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/SdkGoogleX;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->requestEmailFromGoogleAccountCallback(Ljava/lang/String;)V

    return-void
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 51
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private queryFriendList(IZ)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "queryFriendList"

    .line 282
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    invoke-interface {v1}, Lcom/netease/ntunisdk/google/Api;->hasFriends()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "no friends api"

    .line 284
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$6;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$6;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/netease/ntunisdk/google/Api;->queryFriendList(Landroid/app/Activity;IZLcom/netease/ntunisdk/google/OnQueryFriendListCallBack;)V

    return-void
.end method

.method private queryFriendListCallback(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/ntunisdk/base/AccountInfo;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "methodId"

    const-string v1, "queryFriendList"

    .line 308
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/base/AccountInfo;

    .line 311
    invoke-static {v1}, Lcom/netease/ntunisdk/base/AccountInfo;->obj2Json(Lcom/netease/ntunisdk/base/AccountInfo;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "results"

    .line 313
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 303
    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryAvailablesInviteesFinished(Ljava/util/List;)V

    goto :goto_1

    .line 300
    :cond_3
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendListInGameFinished(Ljava/util/List;)V

    goto :goto_1

    .line 297
    :cond_4
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendListFinished(Ljava/util/List;)V

    :catch_0
    :goto_1
    return-void
.end method

.method private requestEmailFromGoogleAccount()V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "requestEmailFromGoogleAccount"

    .line 372
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$9;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$9;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/google/Api;->requestEmailFromGoogleAccount(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method

.method private requestEmailFromGoogleAccountCallback(Ljava/lang/String;)V
    .locals 3

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestEmailFromGoogleAccountCallback, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkGoogleX"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "methodId"

    const-string v2, "requestEmailFromGoogleAccount"

    .line 386
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v1, "email"

    .line 388
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "error"

    const-string v1, "invalid sign-in account"

    .line 391
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->extendFuncCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 396
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private showProfile(Ljava/lang/String;)V
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$8;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$8;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/netease/ntunisdk/google/Api;->showProfile(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method

.method private signOut()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$10;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$10;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/google/Api;->logout(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method


# virtual methods
.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "checkOrder"

    .line 124
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->sdkInstMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->sdkInstMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/base/SdkBase;

    .line 136
    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/base/SdkBase;->checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "sdkInstMap\u4e3a\u7a7a\u6216size()\u5c0f\u4e8e1"

    .line 126
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 127
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 128
    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderErrReason(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method public displayAchievement()V
    .locals 6

    const-string v0, "SdkGoogleX"

    const-string v1, "displayAchievement"

    .line 243
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4b0

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    const-string v1, "cool down."

    .line 245
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    .line 249
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/google/Api;->displayAchievement(Landroid/app/Activity;)V

    return-void
.end method

.method public displayLeaderboard(Ljava/lang/String;)V
    .locals 6

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayLeaderboard, leaderboardId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkGoogleX"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4b0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const-string p1, "cool down."

    .line 210
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 213
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->preExeTime:J

    .line 214
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$4;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$4;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/netease/ntunisdk/google/Api;->displayLeaderboard(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method

.method public exit()V
    .locals 0

    .line 184
    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->exit()V

    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendFunc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkGoogleX"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "methodId"

    .line 347
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "requestEmailFromGoogleAccount"

    .line 348
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->requestEmailFromGoogleAccount()V

    goto :goto_0

    :cond_0
    const-string v2, "signOutGoogleAccount"

    .line 351
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->signOut()V

    goto :goto_0

    :cond_1
    const-string v2, "queryFriendList"

    .line 354
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x3

    const/4 v0, 0x1

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    goto :goto_0

    :cond_2
    const-string v2, "showProfile"

    .line 357
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "playerId"

    .line 358
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 360
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/SdkGoogleX;->showProfile(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "playerId invalid."

    .line 362
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 367
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "google"

    return-object v0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SESSION"

    .line 107
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "not_login"

    return-object v0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UIN"

    .line 116
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0"

    return-object v0
.end method

.method public getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 10

    const-string v0, "SdkGoogleX"

    const-string v1, "init"

    .line 64
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FEATURE_HAS_LOGOUT"

    const/4 v2, 0x1

    .line 65
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "FEATURE_HAS_GOOGLEGAMESERVICE"

    .line 66
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "FEATURE_HAS_RANK"

    .line 67
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    const-string v1, "FEATURE_HAS_ACHIEVEMENT"

    .line 68
    invoke-virtual {p0, v1, v2}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    .line 69
    iget-boolean v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mHasFriends:Z

    const-string v3, "FEATURE_HAS_FRIEND"

    invoke-virtual {p0, v3, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->setFeature(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkGoogleX;->getChannel()Ljava/lang/String;

    move-result-object v1

    const-string v3, "google_web_app_client_id"

    .line 71
    invoke-direct {p0, v3}, Lcom/netease/ntunisdk/SdkGoogleX;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "google_sc_app_id"

    .line 72
    invoke-direct {p0, v4}, Lcom/netease/ntunisdk/SdkGoogleX;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "google_sc_app_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    .line 76
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v7, v5

    :goto_0
    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    const-string v5, "google_app_id must be a long integer, please do modify Unipack settings"

    .line 80
    invoke-static {v0, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    const-string v5, "ERROR: google_app_id must be a long integer"

    invoke-static {v0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v2, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v0, v2, v4, v3, v1}, Lcom/netease/ntunisdk/google/Api;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    return-void
.end method

.method public login()V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, " start login"

    .line 89
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$1;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$1;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/google/Api;->login(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method

.method public logout()V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "logout"

    .line 142
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$2;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$2;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/google/Api;->logout(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method

.method public openManager()V
    .locals 0

    return-void
.end method

.method public queryAvailablesInvitees()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 278
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    return-void
.end method

.method public queryFriendList()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 268
    invoke-direct {p0, v0, v1}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    return-void
.end method

.method public queryFriendListInGame()V
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, v0, v0}, Lcom/netease/ntunisdk/SdkGoogleX;->queryFriendList(IZ)V

    return-void
.end method

.method public queryMyAccount()V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "queryMyAccount"

    .line 325
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$7;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$7;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/google/Api;->queryMyAccount(Landroid/app/Activity;Lcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method

.method public sdkOnActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "sdkOnActivityResult"

    .line 56
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/netease/ntunisdk/google/Api;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 0

    return-void
.end method

.method public upLoadUserInfo()V
    .locals 0

    return-void
.end method

.method public updateAchievement(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "updateAchievement"

    .line 227
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "achievenmentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/netease/ntunisdk/SdkGoogleX$5;

    invoke-direct {v2, p0}, Lcom/netease/ntunisdk/SdkGoogleX$5;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/netease/ntunisdk/google/Api;->updateAchievement(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method

.method public updateEvent(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "SdkGoogleX"

    const-string v1, "updateEvent"

    .line 260
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incrementAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v1, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0, v1, p1, p2}, Lcom/netease/ntunisdk/google/Api;->updateEvent(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public updateRank(Ljava/lang/String;D)V
    .locals 8

    const-string v0, "SdkGoogleX"

    const-string v1, "updateRank"

    .line 192
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkGoogleX;->mApi:Lcom/netease/ntunisdk/google/Api;

    iget-object v0, p0, Lcom/netease/ntunisdk/SdkGoogleX;->myCtx:Landroid/content/Context;

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    new-instance v7, Lcom/netease/ntunisdk/SdkGoogleX$3;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/SdkGoogleX$3;-><init>(Lcom/netease/ntunisdk/SdkGoogleX;)V

    move-object v4, p1

    move-wide v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/netease/ntunisdk/google/Api;->updateRank(Landroid/app/Activity;Ljava/lang/String;DLcom/netease/ntunisdk/google/CallBack;)V

    return-void
.end method
