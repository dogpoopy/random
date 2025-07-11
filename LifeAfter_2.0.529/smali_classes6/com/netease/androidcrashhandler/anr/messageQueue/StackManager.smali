.class public Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;
.super Ljava/lang/Object;
.source "StackManager.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "trace"

.field private static volatile mHandler:Landroid/os/Handler;

.field private static volatile mHandlerThread:Landroid/os/HandlerThread;

.field private static sStackManager:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;


# instance fields
.field private final mDataLock:[B

.field private final mLock:[B

.field private mNativeStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPointTime:J

.field private mStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needNativeStackTrace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->needNativeStackTrace:Z

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mPointTime:J

    new-array v1, v0, [B

    .line 21
    iput-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mLock:[B

    .line 24
    new-instance v1, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;-><init>(I)V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    .line 25
    new-instance v1, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    invoke-direct {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;-><init>(I)V

    iput-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mNativeStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    new-array v0, v0, [B

    .line 26
    iput-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mDataLock:[B

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "trace_stack"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)[B
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mLock:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mPointTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)[B
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mDataLock:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mNativeStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->sStackManager:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->sStackManager:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->sStackManager:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    return-object v0
.end method


# virtual methods
.method public disableNativeStackTrace()V
    .locals 2

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->needNativeStackTrace:Z

    .line 186
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->needNativeStackTrace:Z

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setTargetThreadUnwind(Z)V

    return-void
.end method

.method public enableNativeStackTrace()V
    .locals 2

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->needNativeStackTrace:Z

    .line 181
    invoke-static {}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->getInstance()Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->needNativeStackTrace:Z

    invoke-virtual {v0, v1}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setTargetThreadUnwind(Z)V

    return-void
.end method

.method public getJavaMainThreadStackTrack()Ljava/lang/String;
    .locals 6

    const-string v0, "trace"

    const-string v1, "StackManager [getJavaMainThreadStackTrack] start"

    .line 56
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    :try_start_0
    invoke-static {}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->getInstence()Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/androidcrashhandler/thirdparty/lifecycle/Lifecycle;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "StackManager [printTrack] \u65e0\u6cd5\u6355\u83b7\u5806\u6808"

    .line 63
    invoke-static {v0, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    array-length v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v2, v3

    const-string v5, "#"

    .line 67
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "#NotForeground"

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeStackTrace(J)Ljava/lang/String;
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mDataLock:[B

    monitor-enter v0

    :try_start_0
    const-string v1, "trace"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackManager [msg] map size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mNativeStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    invoke-virtual {v3}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mNativeStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "trace"

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackManager [msg] get native stack trace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mNativeStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_0
    const-string v1, "trace"

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackManager [msg] fail match stack trace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getStackTrace(J)Ljava/lang/String;
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mDataLock:[B

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "trace"

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackManager [msg] get stack trace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mStackTraceMap:Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$LimitMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :cond_0
    const-string v1, "trace"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StackManager [msg] fail match stack trace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isNeedNativeStackTrace()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->needNativeStackTrace:Z

    return v0
.end method

.method public messageEnd(JJ)V
    .locals 0

    .line 144
    iget-object p3, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mLock:[B

    monitor-enter p3

    .line 146
    :try_start_0
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mPointTime:J

    .line 147
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public messageStart(JJ)V
    .locals 0

    .line 136
    iget-object p3, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mLock:[B

    monitor-enter p3

    .line 138
    :try_start_0
    iput-wide p1, p0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->mPointTime:J

    .line 139
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "StackManager [start] start"

    .line 83
    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/LooperMessageLoggingManager;->registerCallback(Lcom/netease/androidcrashhandler/anr/messageQueue/MessageCallback;)V

    .line 85
    new-instance v0, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager$1;-><init>(Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;)V

    const-string v1, "StackManager"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V

    return-void
.end method
