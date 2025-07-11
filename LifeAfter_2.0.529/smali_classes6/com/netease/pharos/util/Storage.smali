.class public Lcom/netease/pharos/util/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field private static final HASH:Ljava/lang/String; = "_hash"

.field private static final Pharos_Storage:Ljava/lang/String; = "pharos_storage"

.field private static final TAG:Ljava/lang/String; = "_tag"

.field private static sInstance:Lcom/netease/pharos/util/Storage;


# instance fields
.field private hasInit:Z

.field private mPharosSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    .line 17
    invoke-virtual {p0}, Lcom/netease/pharos/util/Storage;->init()V

    return-void
.end method

.method public static getInstance()Lcom/netease/pharos/util/Storage;
    .locals 2

    .line 21
    sget-object v0, Lcom/netease/pharos/util/Storage;->sInstance:Lcom/netease/pharos/util/Storage;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/netease/pharos/util/Storage;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/netease/pharos/util/Storage;->sInstance:Lcom/netease/pharos/util/Storage;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/netease/pharos/util/Storage;

    invoke-direct {v1}, Lcom/netease/pharos/util/Storage;-><init>()V

    sput-object v1, Lcom/netease/pharos/util/Storage;->sInstance:Lcom/netease/pharos/util/Storage;

    .line 26
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/util/Storage;->sInstance:Lcom/netease/pharos/util/Storage;

    return-object v0
.end method


# virtual methods
.method public clearHash(Ljava/lang/String;)Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/netease/pharos/util/Storage;->init()V

    .line 102
    iget-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 104
    iput-boolean v1, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    .line 106
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_hash"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public clearTag(Ljava/lang/String;)Z
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/netease/pharos/util/Storage;->init()V

    .line 67
    iget-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 69
    iput-boolean v1, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    .line 71
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_tag"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public getHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/netease/pharos/util/Storage;->init()V

    .line 79
    iget-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    return-object v1

    .line 84
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_hash"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/netease/pharos/util/Storage;->init()V

    .line 45
    iget-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    return-object v1

    .line 50
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_tag"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized init()V
    .locals 3

    monitor-enter p0

    .line 32
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 33
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netease/pharos/PharosProxy;->getInstance()Lcom/netease/pharos/PharosProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/PharosProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "pharos_storage"

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    .line 39
    iput-boolean v1, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveHash(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/netease/pharos/util/Storage;->init()V

    .line 89
    iget-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 91
    iput-boolean v1, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveHash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_tag"

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_hash"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public saveTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/netease/pharos/util/Storage;->init()V

    .line 55
    iget-boolean v0, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/Storage;->mPharosSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 57
    iput-boolean v1, p0, Lcom/netease/pharos/util/Storage;->hasInit:Z

    .line 59
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_tag"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method
