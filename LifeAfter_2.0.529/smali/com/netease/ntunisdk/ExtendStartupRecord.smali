.class public Lcom/netease/ntunisdk/ExtendStartupRecord;
.super Ljava/lang/Object;
.source "ExtendStartupRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/ExtendStartupRecord$ExtAppObserver;
    }
.end annotation


# static fields
.field private static final APP_TIME_INTERVAL_BG_TO_FG_MS:Ljava/lang/String; = "APP_TIME_INTERVAL_BG_TO_FG_MS"

.field private static final APP_TIME_INTERVAL_CURRENT_LAUNCH_MS:Ljava/lang/String; = "APP_TIME_INTERVAL_CURRENT_LAUNCH_MS"

.field private static final APP_TIME_INTERVAL_FIRST_LAUNCH_MS:Ljava/lang/String; = "APP_TIME_INTERVAL_FIRST_LAUNCH_MS"

.field private static final KEY_FIRST_MS:Ljava/lang/String; = "FIRST_MS"

.field private static final KEY_IS_FIRST:Ljava/lang/String; = "IS_FIRST"

.field private static final TAG:Ljava/lang/String; = "ExtendStartupRecord"

.field private static isFirst:Z

.field private static sharedPreferences:Landroid/content/SharedPreferences;

.field private static time1:J

.field private static time2_1:J

.field private static time2_2:J

.field private static unsetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onAttachBaseContext(Landroid/content/Context;)V
    .locals 6

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/ntunisdk/ExtendStartupRecord;->time1:J

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachBaseContext, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/netease/ntunisdk/ExtendStartupRecord;->time1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendStartupRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Lcom/netease/ntunisdk/ExtendStartupRecord$ExtAppObserver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/netease/ntunisdk/ExtendStartupRecord$ExtAppObserver;-><init>(Lcom/netease/ntunisdk/ExtendStartupRecord$1;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/netease/ntunisdk/ExtendStartupRecord;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    sget-object p0, Lcom/netease/ntunisdk/ExtendStartupRecord;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "IS_FIRST"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/netease/ntunisdk/ExtendStartupRecord;->isFirst:Z

    .line 43
    sget-object p0, Lcom/netease/ntunisdk/ExtendStartupRecord;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 45
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/netease/ntunisdk/ExtendStartupRecord;->unsetMap:Ljava/util/HashMap;

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttachBaseContext-end, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/netease/ntunisdk/ExtendStartupRecord;->time1:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static onLifecycleResume()V
    .locals 13

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLifecycleResume, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExtendStartupRecord"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-wide v4, Lcom/netease/ntunisdk/ExtendStartupRecord;->time1:J

    const-string v2, " | "

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    cmp-long v10, v8, v4

    if-gez v10, :cond_1

    sub-long/2addr v0, v4

    .line 102
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 103
    sput-wide v8, Lcom/netease/ntunisdk/ExtendStartupRecord;->time1:J

    .line 104
    sget-boolean v4, Lcom/netease/ntunisdk/ExtendStartupRecord;->isFirst:Z

    const-string v5, "FIRST_MS"

    const-string v6, "APP_TIME_INTERVAL_FIRST_LAUNCH_MS"

    if-eqz v4, :cond_0

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v2, Lcom/netease/ntunisdk/ExtendStartupRecord;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    long-to-int v2, v0

    .line 108
    invoke-static {v6, v2}, Lcom/netease/ntunisdk/ExtendStartupRecord;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v2, Lcom/netease/ntunisdk/ExtendStartupRecord;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {v6, v3}, Lcom/netease/ntunisdk/ExtendStartupRecord;->setPropInt(Ljava/lang/String;I)V

    :goto_0
    long-to-int v1, v0

    const-string v0, "APP_TIME_INTERVAL_CURRENT_LAUNCH_MS"

    .line 116
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ExtendStartupRecord;->setPropInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 118
    :cond_1
    sget-wide v4, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_1:J

    cmp-long v10, v8, v4

    if-ltz v10, :cond_2

    sget-wide v4, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_2:J

    cmp-long v10, v8, v4

    if-gez v10, :cond_4

    .line 119
    :cond_2
    sget-wide v4, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_1:J

    cmp-long v10, v8, v4

    if-gez v10, :cond_3

    sget-wide v10, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_2:J

    cmp-long v12, v4, v10

    if-gtz v12, :cond_3

    goto :goto_1

    :cond_3
    sget-wide v4, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_2:J

    :goto_1
    sub-long/2addr v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 120
    sput-wide v8, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_2:J

    sput-wide v8, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_1:J

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v1, v0

    const-string v0, "APP_TIME_INTERVAL_BG_TO_FG_MS"

    .line 124
    invoke-static {v0, v1}, Lcom/netease/ntunisdk/ExtendStartupRecord;->setPropInt(Ljava/lang/String;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method static onLifecycleStart()V
    .locals 3

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_2:J

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLifecycleStart, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendStartupRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static onRestart()V
    .locals 3

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_1:J

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestart, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/netease/ntunisdk/ExtendStartupRecord;->time2_1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtendStartupRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static rewrite()V
    .locals 4

    .line 68
    sget-object v0, Lcom/netease/ntunisdk/ExtendStartupRecord;->unsetMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lcom/netease/ntunisdk/ExtendStartupRecord;->unsetMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 70
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/ExtendStartupRecord;->unsetMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method static setPropInt(Ljava/lang/String;I)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    .line 54
    sget-object p0, Lcom/netease/ntunisdk/ExtendStartupRecord;->unsetMap:Ljava/util/HashMap;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 55
    sget-object p0, Lcom/netease/ntunisdk/ExtendStartupRecord;->unsetMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 56
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/netease/ntunisdk/base/GamerInterface;->setPropInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 58
    :cond_0
    sget-object p0, Lcom/netease/ntunisdk/ExtendStartupRecord;->unsetMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    :cond_1
    const-string v0, "ExtendStartupRecord"

    const-string v1, "null == SdkMgr.getInst()"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget-object v0, Lcom/netease/ntunisdk/ExtendStartupRecord;->unsetMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
