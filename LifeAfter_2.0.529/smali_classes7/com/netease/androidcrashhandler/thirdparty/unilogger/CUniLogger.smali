.class public Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;
.super Ljava/lang/Object;
.source "CUniLogger.java"


# static fields
.field public static final source:Ljava/lang/String; = "crashhunter"

.field private static uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUniLoggerEnv()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createNewUniLoggerInstance(Landroid/content/Context;)V
    .locals 2

    const-string v0, "trace"

    const-string v1, "init UniLogger"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;->getInstance()Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;

    move-result-object v0

    const-string v1, "crashhunter"

    invoke-virtual {v0, p0, v1}, Lcom/netease/ntunisdk/unilogger/UniLoggerProxy;->createNewUniLoggerInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/ntunisdk/unilogger/UniLogger;

    move-result-object p0

    sput-object p0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/unilogger/UniLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/unilogger/UniLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/unilogger/UniLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setGameid(Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/unilogger/UniLogger;->setGameid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setRoleId(Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/unilogger/UniLogger;->setRoleId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUdid(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/unilogger/UniLogger;->setUdid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setUid(Ljava/lang/String;)V
    .locals 1

    .line 64
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/unilogger/UniLogger;->setUid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/unilogger/UniLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->checkUniLoggerEnv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/netease/androidcrashhandler/thirdparty/unilogger/CUniLogger;->uniLogger:Lcom/netease/ntunisdk/unilogger/UniLogger;

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/unilogger/UniLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
