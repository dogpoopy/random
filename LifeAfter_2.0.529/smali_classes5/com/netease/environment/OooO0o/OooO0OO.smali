.class public Lcom/netease/environment/OooO0o/OooO0OO;
.super Ljava/lang/Object;
.source "RegexGetter.java"


# static fields
.field private static OooO00o:Ljava/lang/String; = "OooO0OO"

.field private static OooO0O0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static OooO0o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static OooO00o(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0Oo:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get sInterceptPatternMap pattern list from memory pcre"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0oO(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get sInterceptPatternMap pattern list from memory jdk"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "intercept"

    .line 7
    invoke-static {p0, v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0Oo:Ljava/util/Map;

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0Oo:Ljava/util/Map;

    return-object p0
.end method

.method private static OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    .line 12
    invoke-static {p0, p1}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, p1, v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static OooO00o(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/netease/environment/OooO0o/OooO0OO$OooO00o;

    invoke-direct {v1}, Lcom/netease/environment/OooO0o/OooO0OO$OooO00o;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 29
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 31
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    const/16 v2, 0x202

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 42
    :try_start_0
    invoke-static {v3, v2}, Lcom/netease/environment/regex/Pattern;->compile(Ljava/lang/String;I)Lcom/netease/environment/regex/Pattern;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "401"

    .line 44
    invoke-static {p1, p2, v6}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "compile"

    .line 45
    invoke-static {v5, v6}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 46
    sget-object v6, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "regex compile error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v5, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to compile pattern of name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " regular:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v4, :cond_0

    .line 50
    invoke-interface {v0, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_1
    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pattern list from file"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static OooO00o(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initPatternPcre type:"

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 65
    sget-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPatternPcre unkonw type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_0
    sput-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o:Ljava/util/Map;

    .line 67
    sget-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sRemindPatternMap:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 68
    :cond_1
    sput-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0:Ljava/util/Map;

    .line 69
    sget-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sReplacePatternMap:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    sput-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0Oo:Ljava/util/Map;

    .line 71
    sget-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sInterceptPatternMap:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0Oo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    sput-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO:Ljava/util/Map;

    .line 73
    sget-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sShieldPatternMap:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_4
    sput-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0O0:Ljava/util/Map;

    .line 75
    sget-object p1, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sNicknamePatternMap:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0O0:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static OooO00o(Lorg/json/JSONObject;)V
    .locals 4

    .line 54
    :try_start_0
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "set pattern list with json object"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "nickname"

    .line 56
    invoke-static {p0, v2}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0O0:Ljava/util/Map;

    const-string v2, "shield"

    .line 57
    invoke-static {p0, v2}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO:Ljava/util/Map;

    const-string v2, "intercept"

    .line 58
    invoke-static {p0, v2}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0Oo:Ljava/util/Map;

    const-string v2, "replace"

    .line 59
    invoke-static {p0, v2}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0:Ljava/util/Map;

    const-string v2, "remind"

    const/4 v3, 0x1

    .line 60
    invoke-static {p0, v2, v3}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o:Ljava/util/Map;

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 62
    invoke-static {v2, v3}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO00o(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to save pattern list on memory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static OooO0O0(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0O0:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get sNicknamePatternMap pattern list from memory pcre"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0oO(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get sNicknamePatternMap pattern list from memory jdk"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nickname"

    .line 7
    invoke-static {p0, v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0O0:Ljava/util/Map;

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0O0:Ljava/util/Map;

    return-object p0
.end method

.method public static OooO0OO(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/netease/environment/OooO0oo/OooO0Oo;->OooO0O0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/environment/OooO0oo/OooO0Oo;->OooO00o(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOO0()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/environment/OooO0oo/OooOO0O;->OooO00o([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to parse json string : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 14
    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v0, "use default regex data"

    invoke-static {p0, v0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p0, Lcom/netease/environment/OooO0o/OooO0O0;

    invoke-direct {p0}, Lcom/netease/environment/OooO0o/OooO0O0;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/netease/environment/OooO0o/OooO0O0;->OooO0OO()Lorg/json/JSONObject;

    move-result-object v0

    :cond_1
    const-string p0, "regex"

    .line 18
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0Oo(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get RemindPatternMap pattern list from memory pcre"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0oO(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get RemindPatternMap pattern list from memory jdk"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "remind"

    invoke-static {p0, v1, v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o:Ljava/util/Map;

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o:Ljava/util/Map;

    return-object p0
.end method

.method public static OooO0o(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get sShieldPatternMap pattern list from memory pcre"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0oO(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get sShieldPatternMap pattern list from memory jdk"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "shield"

    .line 7
    invoke-static {p0, v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO:Ljava/util/Map;

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO:Ljava/util/Map;

    return-object p0
.end method

.method public static OooO0o0(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/environment/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get sReplacePatternMap pattern list from memory pcre"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0oO(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "get sReplacePatternMap pattern list from memory jdk"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "replace"

    .line 7
    invoke-static {p0, v0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0:Ljava/util/Map;

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0:Ljava/util/Map;

    return-object p0
.end method

.method public static OooO0oO(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOOO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "set pattern list with file jdk"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "nickname"

    .line 5
    invoke-static {p0, v2}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0O0:Ljava/util/Map;

    const-string v2, "shield"

    .line 6
    invoke-static {p0, v2}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0OO:Ljava/util/Map;

    const-string v2, "intercept"

    .line 7
    invoke-static {p0, v2}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0Oo:Ljava/util/Map;

    const-string v2, "replace"

    .line 8
    invoke-static {p0, v2}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o0:Ljava/util/Map;

    const-string v2, "remind"

    const/4 v3, 0x1

    .line 9
    invoke-static {p0, v2, v3}, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o(Lorg/json/JSONObject;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO0o:Ljava/util/Map;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string p0, "compile_time"

    .line 11
    invoke-static {p0, v2, v3}, Lcom/netease/environment/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;J)V

    .line 12
    invoke-static {v2, v3}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooO00o(J)V

    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "set pattern list with file pcre"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/netease/environment/OooO0oo/OooO0Oo;->OooO0O0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netease/environment/OooO0OO/OooO0Oo;->OooOO0()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/netease/environment/regex/Pattern;->initLocalMaps(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    const-string v1, "use default regex data"

    invoke-static {v0, v1}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/netease/environment/OooO0o/OooO0O0;

    invoke-direct {v0}, Lcom/netease/environment/OooO0o/OooO0O0;-><init>()V

    .line 19
    invoke-virtual {v0}, Lcom/netease/environment/OooO0o/OooO0O0;->OooO00o()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lcom/netease/environment/OooO0o/OooO0O0;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/netease/environment/regex/Pattern;->initMapsMemory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 24
    sget-object v0, Lcom/netease/environment/OooO0o/OooO0OO;->OooO00o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to save pattern list on memory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/netease/environment/OooO0oo/OooO0oo;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
