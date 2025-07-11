.class Lcom/netease/mpay/oversea/ib;
.super Ljava/lang/Object;
.source "UniGuestModel.java"

# interfaces
.implements Lcom/netease/mpay/oversea/m6$c;


# static fields
.field private static l:Lcom/netease/mpay/oversea/ib;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Z

.field h:J

.field private i:J

.field private j:Z

.field k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ib;->k:Z

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/netease/mpay/oversea/ib;->j:Z

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/m6;->a(Landroid/content/Context;)V

    .line 7
    invoke-static {p0}, Lcom/netease/mpay/oversea/m6;->b(Lcom/netease/mpay/oversea/m6$c;)V

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/ib;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/netease/mpay/oversea/ib;->a:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ib;->k:Z

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/netease/mpay/oversea/ib;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ib;->l:Lcom/netease/mpay/oversea/ib;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/mpay/oversea/ib;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/mpay/oversea/ib;->l:Lcom/netease/mpay/oversea/ib;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/ib;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/ib;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/mpay/oversea/ib;->l:Lcom/netease/mpay/oversea/ib;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/mpay/oversea/ib;->l:Lcom/netease/mpay/oversea/ib;

    return-object p0
.end method

.method private b()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/netease/mpay/oversea/m6;->a(Lcom/netease/mpay/oversea/m6$c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .line 9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "hasLocalGuest"

    .line 11
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ib;->k:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 12
    iget-object v2, p0, Lcom/netease/mpay/oversea/ib;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session"

    .line 13
    iget-object v2, p0, Lcom/netease/mpay/oversea/ib;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hasLogin"

    .line 14
    iget-boolean v2, p0, Lcom/netease/mpay/oversea/ib;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "recovery_code"

    .line 15
    iget-object v2, p0, Lcom/netease/mpay/oversea/ib;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "login_channel"

    .line 16
    iget-object v2, p0, Lcom/netease/mpay/oversea/ib;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_channel"

    .line 17
    iget-object v2, p0, Lcom/netease/mpay/oversea/ib;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    .line 18
    iget-object v2, p0, Lcom/netease/mpay/oversea/ib;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "ad"

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "aid"

    .line 20
    iget-wide v2, p0, Lcom/netease/mpay/oversea/ib;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "modifyTimestamp"

    .line 21
    iget-wide v2, p0, Lcom/netease/mpay/oversea/ib;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "0"

    .line 26
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "uid"

    .line 27
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ib;->a:Ljava/lang/String;

    const-string p1, "session"

    .line 28
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ib;->b:Ljava/lang/String;

    const-string p1, "hasLogin"

    .line 29
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ib;->g:Z

    const-string p1, "recovery_code"

    .line 30
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ib;->c:Ljava/lang/String;

    const-string p1, "login_channel"

    .line 31
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ib;->d:Ljava/lang/String;

    const-string p1, "app_channel"

    .line 32
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ib;->e:Ljava/lang/String;

    const-string p1, "sdk_version"

    .line 33
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ib;->f:Ljava/lang/String;

    const-string p1, "aid"

    .line 34
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/mpay/oversea/ib;->h:J

    const-string p1, "modifyTimestamp"

    .line 35
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/mpay/oversea/ib;->i:J

    .line 36
    iget-object p1, p0, Lcom/netease/mpay/oversea/ib;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/netease/mpay/oversea/ib;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/netease/mpay/oversea/ib;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/ib;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ib;->b()V

    :cond_0
    const-string v0, "{}"

    .line 4
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/ib;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/ib;->k:Z

    .line 6
    new-instance v0, Lcom/netease/mpay/oversea/ib$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ib$a;-><init>(Lcom/netease/mpay/oversea/ib;)V

    invoke-static {v0}, Lcom/netease/mpay/oversea/s;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/mpay/oversea/ib;->i:J

    .line 2
    invoke-static {p0}, Lcom/netease/mpay/oversea/m6;->c(Lcom/netease/mpay/oversea/m6$c;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/ib;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
