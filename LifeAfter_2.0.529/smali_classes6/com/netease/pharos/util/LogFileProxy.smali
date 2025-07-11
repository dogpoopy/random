.class public Lcom/netease/pharos/util/LogFileProxy;
.super Ljava/lang/Object;
.source "LogFileProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pharos"

.field private static sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;

.field private static simpleDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final MAX_CAPACITY:I

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFile:Ljava/io/File;

.field private final mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaveLog:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mSaveLog:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x2800

    .line 34
    iput v0, p0, Lcom/netease/pharos/util/LogFileProxy;->MAX_CAPACITY:I

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 37
    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/pharos/util/LogFileProxy;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/pharos/util/LogFileProxy;->mSaveLog:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/pharos/util/LogFileProxy;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/File;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static getInstance()Lcom/netease/pharos/util/LogFileProxy;
    .locals 2

    .line 45
    sget-object v0, Lcom/netease/pharos/util/LogFileProxy;->sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/netease/pharos/util/LogFileProxy;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/netease/pharos/util/LogFileProxy;->sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/netease/pharos/util/LogFileProxy;

    invoke-direct {v1}, Lcom/netease/pharos/util/LogFileProxy;-><init>()V

    sput-object v1, Lcom/netease/pharos/util/LogFileProxy;->sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;

    .line 50
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/pharos/util/LogFileProxy;->sLogFileProxy:Lcom/netease/pharos/util/LogFileProxy;

    return-object v0
.end method

.method private static getSdf()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 56
    sget-object v0, Lcom/netease/pharos/util/LogFileProxy;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy_MM_dd HH:mm:ss.SSS "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/netease/pharos/util/LogFileProxy;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 59
    :cond_0
    sget-object v0, Lcom/netease/pharos/util/LogFileProxy;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private start()V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogFileProxy [enter] LogThread   mIsPrepared:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRunning:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/util/LogFileProxy;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mSaveLog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/pharos/util/LogFileProxy;->mSaveLog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pharos"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mSaveLog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "LogFileProxy [init] LogThread  start"

    .line 118
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/pharos/util/LogFileProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/pharos/util/LogFileProxy$1;-><init>(Lcom/netease/pharos/util/LogFileProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "logThread"

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2800

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 111
    :cond_1
    invoke-static {}, Lcom/netease/pharos/util/LogFileProxy;->getSdf()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "pharos"

    const-string v1, "LogFileProxy [finish] mFile is null , [finish] fail"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    const-string v1, "finish"

    .line 201
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;I)V
    .locals 4

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "pharos"

    const-string v1, "LogFileProxy [init] start"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string p1, "pharos"

    const-string p2, "LogFileProxy [init] context is null, [init] fail"

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    new-instance v0, Ljava/io/File;

    const-string v2, "pharos_log"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    if-nez p1, :cond_3

    .line 77
    monitor-exit p0

    return-void

    .line 78
    :cond_3
    :try_start_3
    new-instance p1, Ljava/io/File;

    const-string v2, "pharos_result.txt"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 80
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 81
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    goto :goto_0

    .line 83
    :cond_4
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    :goto_0
    const-string v0, "pharos"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogFileProxy [init] mFile path ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/pharos/util/LogFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isPrepared:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    .line 87
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_5

    .line 88
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x2800

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 90
    :cond_5
    iget-object p2, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    invoke-direct {p0}, Lcom/netease/pharos/util/LogFileProxy;->start()V

    goto :goto_1

    .line 94
    :cond_6
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "pharos"

    const-string p2, "LogFileProxy [init] Directory does not exist"

    .line 95
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 98
    :catchall_0
    :try_start_4
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mIsPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "pharos"

    const-string p2, "LogFileProxy [init] mFile does not exist"

    .line 99
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isSaveLog()Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mSaveLog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setSaveLog(Z)V
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/netease/pharos/util/LogFileProxy;->mSaveLog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object p1, p0, Lcom/netease/pharos/util/LogFileProxy;->mSaveLog:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/netease/pharos/util/LogFileProxy;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
