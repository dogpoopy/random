.class public Lcom/netease/environment/OooO0oO/OooO0OO;
.super Ljava/lang/Object;
.source "ReviewNicknameCallable.java"

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OooO0OO"

    .line 2
    iput-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO00o:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO0O0:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO0OO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/environment/OooO0oO/OooO0OO;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO0OO:Ljava/lang/String;

    const/16 v1, 0x64

    const-string v2, "-1"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v3, "fast mode"

    invoke-static {v0, v3}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO0O0:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0O0(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, ""

    .line 17
    :try_start_1
    check-cast v3, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/environment/regex/Pattern;

    .line 20
    iget-object v4, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/environment/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/netease/environment/regex/Matcher;

    move-result-object v3

    .line 21
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/netease/environment/regex/Matcher;->find()Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    .line 23
    invoke-virtual {v3}, Lcom/netease/environment/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xca

    const-string v6, "shield"

    const-string v7, "N_8"

    .line 24
    invoke-static {v4, v6, v5, v7, v3}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 27
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "time out"

    const-string v4, "N_9"

    .line 28
    invoke-static {v1, v3, v2, v4}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v3

    .line 31
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception when run in nickName, pattern key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " content: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and exception:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xc8

    const-string v1, "pass"

    const-string v3, "N_10"

    .line 34
    invoke-static {v0, v1, v2, v3}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    const-string v1, "fast"

    .line 37
    invoke-static {v0, v1}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/netease/environment/OooO0oO/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v2, "exception when run in fast mode"

    invoke-static {v1, v2}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    throw v0

    :cond_6
    :goto_3
    const-string v0, "param is null or empty"

    const-string v3, "N_7"

    .line 40
    invoke-static {v1, v0, v2, v3}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
