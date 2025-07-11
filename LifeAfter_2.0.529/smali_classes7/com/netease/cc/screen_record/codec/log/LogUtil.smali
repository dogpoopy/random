.class public Lcom/netease/cc/screen_record/codec/log/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final INFO:I = 0x2

.field public static final NO_LOG:I = 0x5

.field public static final VERBOSE:I = 0x0

.field public static final WARNING:I = 0x3

.field private static mInstance:Lcom/netease/cc/screen_record/codec/log/LogUtil; = null

.field private static mLogFile:Ljava/lang/String; = null

.field private static mLogFileEnable:Z = false

.field private static mLogLevel:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 62
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 58
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFileEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, p0, v0, p1}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 94
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 90
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFileEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-static {v1, p0, v0, p1}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;
    .locals 2

    .line 27
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mInstance:Lcom/netease/cc/screen_record/codec/log/LogUtil;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mInstance:Lcom/netease/cc/screen_record/codec/log/LogUtil;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/netease/cc/screen_record/codec/log/LogUtil;

    invoke-direct {v1}, Lcom/netease/cc/screen_record/codec/log/LogUtil;-><init>()V

    sput-object v1, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mInstance:Lcom/netease/cc/screen_record/codec/log/LogUtil;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mInstance:Lcom/netease/cc/screen_record/codec/log/LogUtil;

    return-object v0
.end method

.method private getPrefixName()Ljava/lang/String;
    .locals 7

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "[ minify ]"

    if-eqz v0, :cond_5

    .line 104
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    :try_start_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 109
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .line 71
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFileEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INFO"

    invoke-static {v1, p0, v0, p1}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 43
    sput p0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    return-void
.end method

.method public static setLogPath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    sput-boolean v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFileEnable:Z

    .line 39
    sput-object p0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFile:Ljava/lang/String;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 53
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 48
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFileEnable:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERBOSE"

    invoke-static {v1, p0, v0, p1}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 80
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFileEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 76
    sget v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    sget-boolean v0, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFileEnable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object v0

    invoke-direct {v0}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WARNING"

    invoke-static {v1, p0, v0, p1}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 84
    sget p2, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogLevel:I

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    .line 85
    invoke-static {}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getInstance()Lcom/netease/cc/screen_record/codec/log/LogUtil;

    move-result-object p2

    invoke-direct {p2}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->getPrefixName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WARNING"

    invoke-static {v0, p0, p2, p1}, Lcom/netease/cc/screen_record/codec/log/LogUtil;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, ": "

    .line 140
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    sget-object v2, Lcom/netease/cc/screen_record/codec/log/LogUtil;->mLogFile:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 141
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.sss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 142
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
