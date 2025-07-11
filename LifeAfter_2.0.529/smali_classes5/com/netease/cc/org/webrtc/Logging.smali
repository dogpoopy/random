.class public Lcom/netease/cc/org/webrtc/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/org/webrtc/Logging$Severity;,
        Lcom/netease/cc/org/webrtc/Logging$TraceLevel;,
        Lcom/netease/cc/org/webrtc/Logging$LogListener;
    }
.end annotation


# static fields
.field private static final fallbackLogger:Ljava/util/logging/Logger;

.field private static logListener:Lcom/netease/cc/org/webrtc/Logging$LogListener;

.field private static loggingEnabled:Z

.field private static volatile nativeLibLoaded:Z

.field private static volatile tracingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.netease.cc.org.webrtc.Logging"

    .line 23
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/netease/cc/org/webrtc/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/netease/cc/org/webrtc/Logging;->loggingEnabled:Z

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/netease/cc/org/webrtc/Logging;->logListener:Lcom/netease/cc/org/webrtc/Logging$LogListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 161
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_INFO:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 165
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_ERROR:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 173
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_ERROR:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object p1, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_ERROR:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object p1, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_ERROR:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-static {p2}, Lcom/netease/cc/org/webrtc/Logging;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enableLogThreads()V
    .locals 3

    .line 91
    sget-boolean v0, Lcom/netease/cc/org/webrtc/Logging;->nativeLibLoaded:Z

    if-nez v0, :cond_0

    .line 92
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cannot enable log thread because native lib not loaded."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/netease/cc/org/webrtc/Logging;->nativeEnableLogThreads()V

    return-void
.end method

.method public static enableLogTimeStamps()V
    .locals 3

    .line 99
    sget-boolean v0, Lcom/netease/cc/org/webrtc/Logging;->nativeLibLoaded:Z

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cannot enable log timestamps because native lib not loaded."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_0
    invoke-static {}, Lcom/netease/cc/org/webrtc/Logging;->nativeEnableLogTimeStamps()V

    return-void
.end method

.method public static declared-synchronized enableTracing(Ljava/lang/String;Ljava/util/EnumSet;Lcom/netease/cc/org/webrtc/Logging$Severity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/netease/cc/org/webrtc/Logging$TraceLevel;",
            ">;",
            "Lcom/netease/cc/org/webrtc/Logging$Severity;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/netease/cc/org/webrtc/Logging;

    monitor-enter v0

    .line 111
    :try_start_0
    sget-boolean v1, Lcom/netease/cc/org/webrtc/Logging;->nativeLibLoaded:Z

    if-nez v1, :cond_0

    .line 112
    sget-object p0, Lcom/netease/cc/org/webrtc/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p2, "Cannot enable tracing because native lib not loaded."

    invoke-virtual {p0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v0

    return-void

    .line 116
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/netease/cc/org/webrtc/Logging;->tracingEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 117
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 120
    :try_start_2
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;

    .line 121
    iget v2, v2, Lcom/netease/cc/org/webrtc/Logging$TraceLevel;->level:I

    or-int/2addr v1, v2

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p2}, Lcom/netease/cc/org/webrtc/Logging$Severity;->ordinal()I

    move-result p1

    invoke-static {p0, v1, p1}, Lcom/netease/cc/org/webrtc/Logging;->nativeEnableTracing(Ljava/lang/String;II)V

    const/4 p0, 0x1

    .line 124
    sput-boolean p0, Lcom/netease/cc/org/webrtc/Logging;->tracingEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 193
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 194
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static installEngineLogListener(Lcom/netease/cc/org/webrtc/Logging$LogListener;)V
    .locals 0

    .line 41
    sput-object p0, Lcom/netease/cc/org/webrtc/Logging;->logListener:Lcom/netease/cc/org/webrtc/Logging$LogListener;

    return-void
.end method

.method public static log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 128
    sget-boolean v0, Lcom/netease/cc/org/webrtc/Logging;->loggingEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging;->logListener:Lcom/netease/cc/org/webrtc/Logging$LogListener;

    const-string v1, ": "

    if-eqz v0, :cond_1

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/netease/cc/org/webrtc/Logging$LogListener;->Log(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_1
    sget-boolean v0, Lcom/netease/cc/org/webrtc/Logging;->tracingEnabled:Z

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/Logging$Severity;->ordinal()I

    move-result p0

    invoke-static {p0, p1, p2}, Lcom/netease/cc/org/webrtc/Logging;->nativeLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_2
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging$1;->$SwitchMap$com$netease$cc$org$webrtc$Logging$Severity:[I

    invoke-virtual {p0}, Lcom/netease/cc/org/webrtc/Logging$Severity;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    .line 154
    sget-object p0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    .line 151
    :cond_3
    sget-object p0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    .line 148
    :cond_4
    sget-object p0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    .line 145
    :cond_5
    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 157
    :goto_0
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging;->fallbackLogger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeEnableLogThreads()V
.end method

.method private static native nativeEnableLogTimeStamps()V
.end method

.method private static native nativeEnableTracing(Ljava/lang/String;II)V
.end method

.method private static native nativeLog(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .line 37
    sput-boolean p0, Lcom/netease/cc/org/webrtc/Logging;->loggingEnabled:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 185
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_VERBOSE:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_WARNING:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 179
    sget-object v0, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_WARNING:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-static {v0, p0, p1}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object p1, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_WARNING:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object p1, Lcom/netease/cc/org/webrtc/Logging$Severity;->LS_WARNING:Lcom/netease/cc/org/webrtc/Logging$Severity;

    invoke-static {p2}, Lcom/netease/cc/org/webrtc/Logging;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/netease/cc/org/webrtc/Logging;->log(Lcom/netease/cc/org/webrtc/Logging$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
