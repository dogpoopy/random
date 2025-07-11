.class public Lcom/netease/environment/OooO0O0/OooO00o;
.super Ljava/lang/Object;
.source "InterceptAction.java"


# static fields
.field private static final OooO00o:Ljava/lang/String; = "OooO00o"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lcom/netease/environment/OooO0O0/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "intercept words fast mode"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v1, "time out"

    const/16 v2, 0x64

    const-string v3, "-1"

    if-eqz v0, :cond_0

    :try_start_1
    const-string p0, "I_5"

    .line 3
    invoke-static {v2, v1, v3, p0}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v4, ""

    .line 9
    :try_start_2
    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/environment/regex/Pattern;

    .line 12
    invoke-virtual {v0, p1}, Lcom/netease/environment/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/netease/environment/regex/Matcher;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/netease/environment/regex/Matcher;->find()Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/netease/environment/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xc9

    const-string v6, "intercept"

    const-string v7, "I_1"

    .line 16
    invoke-static {v4, v6, v5, v7, v0}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 19
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "I_2"

    .line 20
    invoke-static {v2, v1, v3, v0}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v0

    .line 23
    :goto_2
    :try_start_4
    sget-object v5, Lcom/netease/environment/OooO0O0/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception when run in intercept words, pattern key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " content: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and exception:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 p0, 0xc8

    const-string p1, "pass"

    const-string v0, "I_3"

    .line 26
    invoke-static {p0, p1, v3, v0}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    const-string p1, "fast"

    .line 28
    invoke-static {p0, p1}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 29
    sget-object p1, Lcom/netease/environment/OooO0O0/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v0, "exception when run in intercept words fast mode"

    invoke-static {p1, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "I_4"

    .line 31
    invoke-static {p0, p1}, Lcom/netease/environment/OooO0oo/OooO0oO;->OooO00o(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
