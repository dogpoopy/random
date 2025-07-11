.class public Lcom/netease/pharos/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pharos"

.field private static sIsDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-boolean p0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "pharos"

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/pharos/util/LogFileProxy;->isSaveLog()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 51
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/pharos/util/LogFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 84
    sget-boolean p0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "pharos"

    .line 86
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/pharos/util/LogFileProxy;->isSaveLog()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 93
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/pharos/util/LogFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 56
    sget-boolean p0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "pharos"

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/pharos/util/LogFileProxy;->isSaveLog()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 65
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/pharos/util/LogFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static setIsShowLog(Z)V
    .locals 1

    .line 21
    sput-boolean p0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    .line 22
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/pharos/util/LogFileProxy;->setSaveLog(Z)V

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pharos sIsDebug = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pharos"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static stepLog(Ljava/lang/String;)V
    .locals 2

    .line 98
    sget-boolean v0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "pharos"

    const-string v1, "============================================="

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/pharos/util/LogFileProxy;->isSaveLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/netease/pharos/util/LogFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-boolean p0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "pharos"

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/pharos/util/LogFileProxy;->isSaveLog()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 36
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/pharos/util/LogFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    sget-boolean p0, Lcom/netease/pharos/util/LogUtil;->sIsDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "pharos"

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/pharos/util/LogFileProxy;->isSaveLog()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 79
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getInstance()Lcom/netease/pharos/util/LogFileProxy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/pharos/util/LogFileProxy;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
