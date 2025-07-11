.class public Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
.super Ljava/lang/Thread;
.source "ANRWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;,
        Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;,
        Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANR_INTERCEPTOR:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

.field private static final DEFAULT_ANR_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

.field private static final DEFAULT_ANR_TIMEOUT:I = 0x1388

.field private static final DEFAULT_INTERRUPTION_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;


# instance fields
.field private _anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

.field private _anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

.field private _ignoreDebugger:Z

.field private _interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

.field private _logThreadsWithoutStackTrace:Z

.field private _namePrefix:Ljava/lang/String;

.field private volatile _reported:Z

.field private volatile _tick:J

.field private final _ticker:Ljava/lang/Runnable;

.field private final _timeoutInterval:I

.field private final _uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$1;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$1;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    .line 48
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$2;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$2;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    .line 54
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$3;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$3;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1388

    .line 86
    invoke-direct {p0, v0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 60
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    .line 61
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    .line 62
    sget-object v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_uiHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    .line 69
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ignoreDebugger:Z

    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    .line 72
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    .line 74
    new-instance v0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$4;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$4;-><init>(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ticker:Ljava/lang/Runnable;

    .line 97
    iput p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_timeoutInterval:I

    return-void
.end method

.method static synthetic access$002(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;J)J
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/netease/androidcrashhandler/anr/ANRWatchDog;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    return p1
.end method


# virtual methods
.method public getTimeoutInterval()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_timeoutInterval:I

    return v0
.end method

.method public run()V
    .locals 10

    const-string v0, "trace"

    const-string v1, "ANRWatchDog [run] start"

    .line 222
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "|ANR-WatchDog|"

    .line 223
    invoke-virtual {p0, v1}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->setName(Ljava/lang/String;)V

    .line 226
    iget v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_timeoutInterval:I

    int-to-long v1, v1

    .line 227
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 228
    iget-wide v3, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-nez v8, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 229
    :goto_1
    iget-wide v8, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    add-long/2addr v8, v1

    iput-wide v8, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    if-eqz v3, :cond_2

    .line 231
    iget-object v3, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_uiHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ticker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_2
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    iget-wide v3, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    cmp-long v8, v3, v6

    if-eqz v8, :cond_0

    iget-boolean v3, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    if-nez v3, :cond_0

    .line 245
    iget-wide v3, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    .line 247
    iget-boolean v8, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ignoreDebugger:Z

    if-nez v8, :cond_4

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const-string v3, "ANRWatchdog"

    const-string v4, "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))"

    .line 248
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iput-boolean v5, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    goto :goto_0

    .line 253
    :cond_4
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    invoke-interface {v1, v3, v4}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;->intercept(J)J

    move-result-wide v1

    cmp-long v8, v1, v6

    if-lez v8, :cond_5

    goto :goto_0

    .line 259
    :cond_5
    iget-object v8, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 260
    iget-boolean v9, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    invoke-static {v3, v4, v8, v9}, Lcom/netease/androidcrashhandler/anr/ANRError;->New(JLjava/lang/String;Z)Lcom/netease/androidcrashhandler/anr/ANRError;

    move-result-object v3

    goto :goto_2

    .line 263
    :cond_6
    invoke-static {v3, v4}, Lcom/netease/androidcrashhandler/anr/ANRError;->NewMainOnly(J)Lcom/netease/androidcrashhandler/anr/ANRError;

    move-result-object v3

    .line 266
    :goto_2
    iget-wide v8, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_tick:J

    cmp-long v4, v8, v6

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    if-nez v4, :cond_0

    .line 269
    :try_start_1
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    invoke-interface {v1, v3}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;->onAppNotResponding(Lcom/netease/androidcrashhandler/anr/ANRError;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :catch_0
    iget v1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_timeoutInterval:I

    int-to-long v1, v1

    .line 275
    iput-boolean v5, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_reported:Z

    goto :goto_0

    :catch_1
    move-exception v1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR-WatchDog InterruptedException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    invoke-interface {v0, v1}, Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;->onInterrupted(Ljava/lang/InterruptedException;)V

    :cond_7
    return-void
.end method

.method public setANRInterceptor(Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    .line 132
    sget-object p1, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    goto :goto_0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrInterceptor:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRInterceptor;

    :goto_0
    return-object p0
.end method

.method public setANRListener(Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    .line 116
    sget-object p1, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    goto :goto_0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_anrListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$ANRListener;

    :goto_0
    return-object p0
.end method

.method public setIgnoreDebugger(Z)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_ignoreDebugger:Z

    return-object p0
.end method

.method public setInterruptionListener(Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    .line 148
    sget-object p1, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    goto :goto_0

    .line 150
    :cond_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_interruptionListener:Lcom/netease/androidcrashhandler/anr/ANRWatchDog$InterruptionListener;

    :goto_0
    return-object p0
.end method

.method public setLogThreadsWithoutStackTrace(Z)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    return-object p0
.end method

.method public setReportAllThreads()Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 1

    const-string v0, ""

    .line 187
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportMainThreadOnly()Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 1

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportThreadNamePrefix(Ljava/lang/String;)Lcom/netease/androidcrashhandler/anr/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/netease/androidcrashhandler/anr/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method
