.class public Lcom/netease/ntunisdk/core/logs/LoggingCore;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/netease/ntunisdk/core/logs/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/netease/ntunisdk/core/logs/Logger;

    const-string v1, "NeteaseCore"

    const-string v2, "NeteaseCoreDetail"

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/core/logs/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/ntunisdk/core/logs/LoggingCore;->a:Lcom/netease/ntunisdk/core/logs/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/logs/LoggingCore;->a:Lcom/netease/ntunisdk/core/logs/Logger;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/core/logs/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/logs/LoggingCore;->a:Lcom/netease/ntunisdk/core/logs/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/core/logs/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static detail(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/logs/LoggingCore;->a:Lcom/netease/ntunisdk/core/logs/Logger;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/core/logs/Logger;->detail(Ljava/lang/String;)V

    return-void
.end method

.method public static logStacktrace(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/logs/LoggingCore;->a:Lcom/netease/ntunisdk/core/logs/Logger;

    invoke-virtual {v0, p0}, Lcom/netease/ntunisdk/core/logs/Logger;->logStackTrace(Ljava/lang/Throwable;)V

    return-void
.end method
