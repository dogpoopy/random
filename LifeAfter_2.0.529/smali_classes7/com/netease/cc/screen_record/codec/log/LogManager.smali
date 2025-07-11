.class public Lcom/netease/cc/screen_record/codec/log/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field private static volatile mInstance:Lcom/netease/cc/screen_record/codec/log/LogManager;


# instance fields
.field private logFilePath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/cc/screen_record/codec/log/LogManager;
    .locals 2

    .line 14
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/LogManager;->mInstance:Lcom/netease/cc/screen_record/codec/log/LogManager;

    if-nez v0, :cond_1

    .line 15
    const-class v0, Lcom/netease/cc/screen_record/codec/log/LogManager;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/netease/cc/screen_record/codec/log/LogManager;->mInstance:Lcom/netease/cc/screen_record/codec/log/LogManager;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/netease/cc/screen_record/codec/log/LogManager;

    invoke-direct {v1}, Lcom/netease/cc/screen_record/codec/log/LogManager;-><init>()V

    sput-object v1, Lcom/netease/cc/screen_record/codec/log/LogManager;->mInstance:Lcom/netease/cc/screen_record/codec/log/LogManager;

    .line 19
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/LogManager;->mInstance:Lcom/netease/cc/screen_record/codec/log/LogManager;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;I)V
    .locals 2

    .line 28
    invoke-static {p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->setLogLevel(I)V

    const-string p2, ""

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 36
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez p2, :cond_3

    return-void

    .line 45
    :cond_3
    invoke-static {p1}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->setLogPath(Ljava/lang/String;)V

    return-void
.end method
