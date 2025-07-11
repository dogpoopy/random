.class public Lcom/netease/androidcrashhandler/util/StorageToFileProxy;
.super Ljava/lang/Object;
.source "StorageToFileProxy.java"


# static fields
.field public static final CRASHHUNTER_LOG_FILE_PATH:Ljava/lang/String; = "crashHunter_log"

.field private static sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;


# instance fields
.field private mFile:Ljava/io/File;

.field private mHasInit:Z

.field private mHasStart:Z

.field private mOut:Ljava/io/BufferedWriter;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    .line 21
    iput-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasStart:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 25
    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 27
    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)Ljava/io/BufferedWriter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method public static getInstances()Lcom/netease/androidcrashhandler/util/StorageToFileProxy;
    .locals 1

    .line 36
    sget-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    invoke-direct {v0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;-><init>()V

    sput-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    .line 39
    :cond_0
    sget-object v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->sStorageToFileProxy:Lcom/netease/androidcrashhandler/util/StorageToFileProxy;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2

    .line 106
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    if-nez v0, :cond_0

    const-string p1, "trace"

    const-string v0, "StorageToFileProxy [add] not initialized yet"

    .line 107
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    const-string v0, "trace"

    const-string v1, "StorageToFileProxy [finish] start"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    if-nez v1, :cond_0

    const-string v1, "StorageToFileProxy [finish] not initialized yet"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    if-nez v1, :cond_1

    const-string v1, "StorageToFileProxy [finish] mFile is null , [finish] fail"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_2

    const-string v1, "finish"

    .line 183
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public flush()V
    .locals 5

    const-string v0, "trace"

    const-string v1, "StorageToFileProxy [flush] start"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-boolean v2, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    if-nez v2, :cond_0

    const-string v1, "StorageToFileProxy [flush] not initialized yet"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    if-nez v2, :cond_1

    const-string v1, "StorageToFileProxy [flush] mOut is null"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 201
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StorageToFileProxy [flush] IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public init(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    const-string v0, "trace"

    if-nez p1, :cond_0

    const-string p1, "StorageToFileProxy [init] context is null, [init] fail"

    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_0
    iget-boolean p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    if-eqz p1, :cond_1

    const-string p1, "StorageToFileProxy [init] has init"

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "StorageToFileProxy [init] logFilePath is error"

    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_2
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "StorageToFileProxy [init] delete file"

    .line 63
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "StorageToFileProxy [init] create file"

    .line 68
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :try_start_1
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageToFileProxy [init] createNewFile ="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/netease/androidcrashhandler/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    :cond_4
    :goto_0
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance p3, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mOut:Ljava/io/BufferedWriter;

    .line 81
    iput-boolean v3, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StorageToFileProxy [init] mFile path ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageToFileProxy [init] Exception="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    iget-boolean p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    if-nez p1, :cond_5

    const-string p1, "StorageToFileProxy [init] init fail"

    .line 90
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/16 p1, 0x1f4

    if-ge p2, p1, :cond_6

    const/16 p2, 0x1f4

    .line 98
    :cond_6
    iget-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez p1, :cond_7

    .line 99
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mQueue:Ljava/util/concurrent/BlockingQueue;

    :cond_7
    return-void
.end method

.method public isInit()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    return v0
.end method

.method public start()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mFile:Ljava/io/File;

    const-string v1, "trace"

    if-nez v0, :cond_0

    const-string v0, "StorageToFileProxy [start] mFile is null , [start] fail"

    .line 128
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy;->mHasInit:Z

    if-nez v0, :cond_1

    const-string v0, "StorageToFileProxy [start] not initialized yet"

    .line 133
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_1
    new-instance v0, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;

    invoke-direct {v0, p0}, Lcom/netease/androidcrashhandler/util/StorageToFileProxy$1;-><init>(Lcom/netease/androidcrashhandler/util/StorageToFileProxy;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/CUtil;->runOnNewChildThread(Lcom/netease/androidcrashhandler/util/CUtil$ThreadTask;Ljava/lang/String;)V

    return-void
.end method
