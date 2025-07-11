.class public Lcom/netease/download/woffset/WoffsetProxy;
.super Ljava/lang/Object;
.source "WoffsetProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WoffsetProxy"

.field private static mWoffsetProxy:Lcom/netease/download/woffset/WoffsetProxy;


# instance fields
.field private mHasInit:Z

.field private mParamsQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mHasInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/download/woffset/WoffsetProxy;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static getInstances()Lcom/netease/download/woffset/WoffsetProxy;
    .locals 1

    .line 44
    sget-object v0, Lcom/netease/download/woffset/WoffsetProxy;->mWoffsetProxy:Lcom/netease/download/woffset/WoffsetProxy;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/netease/download/woffset/WoffsetProxy;

    invoke-direct {v0}, Lcom/netease/download/woffset/WoffsetProxy;-><init>()V

    sput-object v0, Lcom/netease/download/woffset/WoffsetProxy;->mWoffsetProxy:Lcom/netease/download/woffset/WoffsetProxy;

    .line 47
    :cond_0
    sget-object v0, Lcom/netease/download/woffset/WoffsetProxy;->mWoffsetProxy:Lcom/netease/download/woffset/WoffsetProxy;

    return-object v0
.end method

.method private start()V
    .locals 2

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [start] start"

    .line 78
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/woffset/WoffsetProxy$1;

    invoke-direct {v1, p0}, Lcom/netease/download/woffset/WoffsetProxy$1;-><init>(Lcom/netease/download/woffset/WoffsetProxy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "donwloader woffset"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 2

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [init] start"

    .line 57
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mHasInit:Z

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/netease/download/woffset/WoffsetProxy;->mHasInit:Z

    .line 61
    invoke-direct {p0}, Lcom/netease/download/woffset/WoffsetProxy;->start()V

    :cond_0
    return-void
.end method

.method public put(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 2

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [put] start"

    .line 66
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_0

    const-string v1, "WoffsetProxy [put] call"

    .line 69
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "WoffsetProxy [put] mCallQueue is null"

    .line 73
    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "WoffsetProxy"

    const-string v1, "WoffsetProxy [reset] start"

    .line 51
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mHasInit:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/netease/download/woffset/WoffsetProxy;->mParamsQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public write2FileOffset(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 9

    const-string v0, "WoffsetProxy [write2File] IOException3"

    const-string v1, "WoffsetProxy"

    const-string v2, "WoffsetProxy [write2File] start"

    .line 128
    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WoffsetProxy [write2File] srcPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", desPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", woffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-gez v2, :cond_0

    goto/16 :goto_e

    .line 139
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "WoffsetProxy [write2File] \u6e90\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 142
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 146
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 149
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 153
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WoffsetProxy [write2File] IOException1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 v4, 0x0

    .line 167
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const v6, 0x8000

    .line 168
    :try_start_2
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 170
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rwd"

    invoke-direct {v7, p2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    :try_start_3
    invoke-virtual {v7, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 172
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 174
    :goto_1
    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    .line 175
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 177
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 180
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WoffsetProxy [write2File] \u5199\u5165\u6210\u529f\uff0c\u5220\u9664\u6587\u4ef6 = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x1

    const/4 v3, 0x1

    .line 198
    :cond_4
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v5, :cond_5

    .line 202
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    if-eqz v4, :cond_a

    .line 206
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catchall_0
    move-exception p1

    move-object p2, v4

    move-object v4, v7

    goto/16 :goto_a

    :catch_2
    move-exception p1

    move-object p2, v4

    move-object v4, v7

    goto :goto_3

    :catch_3
    move-exception p1

    move-object p2, v4

    move-object v4, v7

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object p2, v4

    goto/16 :goto_a

    :catch_4
    move-exception p1

    move-object p2, v4

    goto :goto_3

    :catch_5
    move-exception p1

    move-object p2, v4

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p2, v4

    move-object v5, p2

    goto/16 :goto_a

    :catch_6
    move-exception p1

    move-object p2, v4

    move-object v5, p2

    .line 191
    :goto_3
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "WoffsetProxy [write2File] IOException2"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_6

    .line 198
    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_4

    :catch_7
    move-exception p1

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 202
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_7
    if-eqz p2, :cond_a

    .line 206
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_9

    .line 210
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_8
    move-exception p1

    move-object p2, v4

    move-object v5, p2

    .line 187
    :goto_6
    :try_start_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "WoffsetProxy [write2File] FileNotFoundException"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v4, :cond_8

    .line 198
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7

    :catch_9
    move-exception p1

    goto :goto_8

    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 202
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_9
    if-eqz p2, :cond_a

    .line 206
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_9

    .line 210
    :goto_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :cond_a
    :goto_9
    return v3

    :catchall_3
    move-exception p1

    :goto_a
    if-eqz v4, :cond_b

    .line 198
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_b

    :catch_a
    move-exception p2

    goto :goto_c

    :cond_b
    :goto_b
    if-eqz v5, :cond_c

    .line 202
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_c
    if-eqz p2, :cond_d

    .line 206
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_d

    .line 210
    :goto_c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 212
    :cond_d
    :goto_d
    throw p1

    :cond_e
    :goto_e
    const-string p1, "WoffsetProxy [write2File] param error"

    .line 135
    invoke-static {v1, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
