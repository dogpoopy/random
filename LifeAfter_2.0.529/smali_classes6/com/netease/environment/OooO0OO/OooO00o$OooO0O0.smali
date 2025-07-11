.class Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;
.super Ljava/lang/Object;
.source "LogConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/environment/OooO0OO/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OooO0O0"
.end annotation


# instance fields
.field OooO00o:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    return-void
.end method

.method private OooO00o(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 21
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private OooO00o()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v1, "com.netease.ntunisdk.base.SdkMgr"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getInst"

    const/4 v3, 0x0

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "getPropStr"

    const/4 v5, 0x1

    :try_start_2
    new-array v6, v5, [Ljava/lang/Class;

    .line 11
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    const-string v6, "USERINFO_HOSTID"

    aput-object v6, v4, v3

    .line 12
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "USERINFO_UID"

    aput-object v7, v6, v3

    .line 13
    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "FULL_UIN"

    aput-object v7, v5, v3

    .line 14
    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "server"

    .line 16
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "role_id"

    .line 17
    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "account_id"

    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private OooO0O0()Ljava/lang/String;
    .locals 7

    const-string v0, "role_id"

    const-string v1, "server"

    const-string v2, "account_id"

    .line 1
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    if-nez v3, :cond_0

    .line 2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    .line 5
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    const-string v4, "os_name"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "udid"

    :try_start_1
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0OO()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO0O0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "os_ver"

    :try_start_2
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "extra_info"

    :try_start_3
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0o0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    const-string v4, "type"

    const-string v5, "match"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    const-string v4, "source"

    const-string v5, "netease_p1"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    const-string v4, "project"

    const-string v5, "dep87"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v4, "time"

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v4, "gameid"

    :try_start_5
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v4, "regular_version"

    :try_start_6
    invoke-static {}, Lcom/netease/environment/EnvManager;->getRegularVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v3, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    const-string v4, "sdk_version"

    :try_start_7
    invoke-static {}, Lcom/netease/environment/EnvManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-direct {p0}, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o()Ljava/util/Map;

    move-result-object v3

    .line 18
    iget-object v4, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    invoke-direct {p0, v3, v2}, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v2, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    invoke-direct {p0, v3, v1}, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object v1, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    invoke-direct {p0, v3, v0}, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 23
    :try_start_8
    iget-object v0, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "network"

    :try_start_9
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0OO()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/environment/OooO0oo/OooO;->OooO0O0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO00o:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netease/environment/OooO0OO/OooO00o$OooO0O0;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "u2"

    .line 2
    invoke-static {v0, v1}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
