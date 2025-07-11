.class public Lcom/netease/advertSdk/base/AdvertU3d;
.super Ljava/lang/Object;
.source "AdvertU3d.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertU3d"

.field private static inst:Lcom/netease/advertSdk/base/AdvertMgr;

.field private static instU3d:Lcom/netease/advertSdk/base/AdvertU3d;

.field private static unityPlayClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyInst()V
    .locals 2

    const-string v0, "AdvertU3d"

    const-string v1, "AdvertU3d destroy!"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    return-void
.end method

.method public static getInst()Lcom/netease/advertSdk/base/AdvertMgr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    if-nez v0, :cond_0

    const-string v0, "AdvertU3d"

    const-string v1, "AdvertU3d init!"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v0

    invoke-static {}, Lcom/netease/advertSdk/base/AdvertU3d;->getUnityPlayerClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/advertSdk/base/AdvertMgr;->init(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v0

    sput-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    .line 40
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->inst:Lcom/netease/advertSdk/base/AdvertMgr;

    return-object v0
.end method

.method public static getInstU3d()Lcom/netease/advertSdk/base/AdvertU3d;
    .locals 1

    .line 28
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->instU3d:Lcom/netease/advertSdk/base/AdvertU3d;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/netease/advertSdk/base/AdvertU3d;

    invoke-direct {v0}, Lcom/netease/advertSdk/base/AdvertU3d;-><init>()V

    sput-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->instU3d:Lcom/netease/advertSdk/base/AdvertU3d;

    .line 31
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->instU3d:Lcom/netease/advertSdk/base/AdvertU3d;

    return-object v0
.end method

.method private static getUnityPlayerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->unityPlayClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.unity3d.player.UnityPlayer"

    .line 22
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->unityPlayClass:Ljava/lang/Class;

    .line 24
    :cond_0
    sget-object v0, Lcom/netease/advertSdk/base/AdvertU3d;->unityPlayClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 54
    invoke-static {p0, p1, v0}, Lcom/netease/advertSdk/base/AdvertU3d;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AdvertU3d"

    if-eqz v0, :cond_0

    const-string p0, "chnlDtl is null"

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    invoke-static {p2}, Lcom/netease/advertSdk/base/JsonUtils;->jsonStringToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    const-string p2, "=====AdvertU3d.trackEvent"

    .line 74
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 79
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "param : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/netease/advertSdk/base/AdvertMgr;->getInst()Lcom/netease/advertSdk/base/AdvertMgr;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p0, v2, v3, v0}, Lcom/netease/advertSdk/base/AdvertMgr;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
