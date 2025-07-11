.class public Lcom/netease/download/util/SpUtil;
.super Ljava/lang/Object;
.source "SpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/util/SpUtil$PreferenceUnit;
    }
.end annotation


# static fields
.field private static final COMMON_SP_NAME:Ljava/lang/String; = "download_info"

.field private static final TAG:Ljava/lang/String; = "SpUtil"

.field private static sAppContext:Landroid/content/Context;

.field private static sInstance:Lcom/netease/download/util/SpUtil;


# instance fields
.field private sMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/download/util/SpUtil$PreferenceUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/netease/download/util/SpUtil;->sAppContext:Landroid/content/Context;

    .line 42
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/download/util/SpUtil;->sMap:Ljava/util/Map;

    return-void
.end method

.method private get(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 89
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/download/util/SpUtil;->getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/download/util/SpUtil$PreferenceUnit;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p3
.end method

.method public static getInstance()Lcom/netease/download/util/SpUtil;
    .locals 1

    .line 47
    sget-object v0, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/download/util/SpUtil;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Lcom/netease/download/util/SpUtil;->initialize(Landroid/content/Context;)V

    .line 52
    :cond_0
    sget-object v0, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    return-object v0
.end method

.method private getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;
    .locals 2

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/netease/download/util/SpUtil;->sMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/util/SpUtil$PreferenceUnit;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/netease/download/util/SpUtil$PreferenceUnit;

    sget-object v1, Lcom/netease/download/util/SpUtil;->sAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/netease/download/util/SpUtil$PreferenceUnit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/netease/download/util/SpUtil;->sMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 31
    sget-object v0, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/netease/download/util/SpUtil;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/netease/download/util/SpUtil;

    invoke-direct {v1, p0}, Lcom/netease/download/util/SpUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/download/util/SpUtil;->sInstance:Lcom/netease/download/util/SpUtil;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private remove(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/netease/download/util/SpUtil;->getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/download/util/SpUtil$PreferenceUnit;->editor:Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_0

    .line 81
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/netease/download/util/SpUtil;->getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/download/util/SpUtil$PreferenceUnit;->editor:Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p4, :cond_0

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/download/util/SpUtil;->getPreference(Ljava/lang/Object;)Lcom/netease/download/util/SpUtil$PreferenceUnit;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/download/util/SpUtil$PreferenceUnit;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLong(Ljava/lang/Object;Ljava/lang/String;J)J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/download/util/SpUtil;->get(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "SpUtil"

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-wide p3

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/download/util/SpUtil;->get(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLong(Ljava/lang/Object;Ljava/lang/String;JZ)V
    .locals 0

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netease/download/util/SpUtil;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/download/util/SpUtil;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
