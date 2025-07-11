.class public Lcom/netease/environment/OooO0oO/OooO0O0;
.super Ljava/lang/Object;
.source "ReviewCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private OooO0O0:Landroid/content/Context;

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:Ljava/lang/String;

.field private OooO0o0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OooO0O0"

    .line 2
    iput-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0OO:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0Oo:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0o0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "message"

    .line 13
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace message from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace message to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOO0O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 20
    :catch_0
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v1, "fail to parse the result returned by replace message"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public OooO00o(Ljava/lang/String;I)Z
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check break code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    return v1

    :cond_0
    const-string p1, "message"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "time out"

    .line 8
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v1

    .line 12
    :catch_0
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string p2, "fail to parse the result returned by check break"

    invoke-static {p1, p2}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public OooO0O0(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 8
    :catch_0
    iget-object p1, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string p2, "fail to parse the result returned by check code"

    invoke-static {p1, p2}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/environment/OooO0oO/OooO0O0;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/environment/OooO0o/OooO00o;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0OO:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "channel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/netease/environment/OooO0O0/OooO0Oo;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xca

    .line 19
    invoke-virtual {p0, v2, v3}, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    .line 25
    :cond_1
    iget-object v4, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0:Landroid/content/Context;

    invoke-static {v4}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 26
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 28
    iget-object v2, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0:Landroid/content/Context;

    iget-object v4, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0OO:Ljava/lang/String;

    invoke-static {v2, v4, v0}, Lcom/netease/environment/OooO0O0/OooO0OO;->OooO00o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p0, v2, v3}, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const/16 v3, 0xce

    if-eqz v0, :cond_6

    .line 37
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 39
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0O0/OooO00o;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xc9

    .line 41
    invoke-virtual {p0, v0, v4}, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0(Ljava/lang/String;I)Z

    move-result v5

    .line 43
    invoke-virtual {p0, v2, v3}, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 47
    invoke-virtual {p0, v2}, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v3, :cond_4

    return-object v2

    .line 53
    :cond_4
    invoke-virtual {p0, v0, v4}, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v0

    :cond_5
    move-object v2, v0

    goto :goto_0

    .line 58
    :cond_6
    invoke-virtual {p0, v2, v3}, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO00o(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v2

    .line 64
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0Oo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 65
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 69
    :cond_8
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0O0;->OooO0O0:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0O0/OooO0O0;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_1
    return-object v2

    :cond_a
    :goto_2
    const/16 v0, 0x64

    const-string v1, "param is null or empty"

    const-string v2, "-1"

    const-string v3, "V_7"

    .line 70
    invoke-static {v0, v1, v2, v3}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
