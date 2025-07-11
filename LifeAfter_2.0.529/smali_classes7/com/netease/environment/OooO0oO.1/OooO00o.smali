.class public Lcom/netease/environment/OooO0oO/OooO00o;
.super Landroid/os/AsyncTask;
.source "InitialTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private OooO0O0:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "OooO00o"

    .line 2
    iput-object v0, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO0O0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs OooO00o([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9

    const-string p1, "http://"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0OO;->OooO00o()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO0OO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    iget-object v4, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before encode init param:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/netease/environment/OooO0oo/OooO0O0;->OooO0O0([B)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x19000

    if-le v4, v5, :cond_1

    .line 12
    iget-object v3, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO0oO(Landroid/content/Context;)V

    const-string v3, ""

    .line 15
    :cond_1
    iget-object v4, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after encode init param:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v2, v3}, Lcom/netease/environment/OooO0Oo/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 20
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "url_one_z"

    .line 21
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    iget-object v6, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the regex url is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v5}, Lcom/netease/environment/OooO0oo/OooO0o;->OooO00o(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 24
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "https://"

    .line 25
    invoke-virtual {v5, p1, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0o()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v3}, Lcom/netease/environment/OooO0OO/OooO0O0;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object v6, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the native regex url is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/netease/environment/OooO0Oo/OooO00o;->OooO00o(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v5, "the regex file is out of date"

    invoke-static {p1, v5}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v5, "the regex file is latest"

    invoke-static {p1, v5}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const-string p1, "rstr"

    const-string v5, "***"

    .line 37
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0oO(Ljava/lang/String;)V

    const-string p1, "t2s"

    const/4 v5, 0x1

    .line 38
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0o0(Z)V

    const-string p1, "f2h"

    .line 39
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0o(Z)V

    const-string p1, "un"

    .line 40
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0O0(Z)V

    const-string p1, "sig"

    .line 41
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0Oo(Z)V

    const-string p1, "lu"

    const/4 v5, 0x0

    .line 42
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0oO(Z)V

    const-string p1, "drpf"

    const-string v5, "drpf-dep87.proxima.nie.netease.com"

    .line 43
    invoke-virtual {v4, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO0OO(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 45
    :catch_0
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to parse init result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_1
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO0OO()V

    .line 50
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO0O0:Landroid/content/Context;

    invoke-static {p1}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO0oO(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 53
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get regex url cost time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "getUrl"

    .line 54
    invoke-static {p1, v4, v5}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;J)V

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/netease/environment/OooO0oO/OooO00o;->OooO00o([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
