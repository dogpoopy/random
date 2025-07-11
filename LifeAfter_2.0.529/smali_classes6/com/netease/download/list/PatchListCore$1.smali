.class Lcom/netease/download/list/PatchListCore$1;
.super Ljava/lang/Object;
.source "PatchListCore.java"

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/list/PatchListCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/list/PatchListCore;


# direct methods
.method constructor <init>(Lcom/netease/download/list/PatchListCore;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/netease/download/list/PatchListCore$1;->this$0:Lcom/netease/download/list/PatchListCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "PatchListCore [okhttpCallback] [onFailure] start"

    .line 262
    invoke-static {p1}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "PatchListCore [okhttpCallback] [onResponse] start"

    .line 181
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_6

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatchListCore [okhttpCallback] [onResponse] Call Header="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PatchListCore"

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PatchListCore [okhttpCallback] [onResponse] Response Header="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hashCode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", resUrl="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", protocol="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->protocol()Lcom/netease/ntunisdk/okhttp3/Protocol;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 193
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/netease/download/list/PatchListCore$1;->this$0:Lcom/netease/download/list/PatchListCore;

    invoke-static {v5}, Lcom/netease/download/list/PatchListCore;->access$000(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 199
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 201
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 203
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/netease/download/list/PatchListCore$1;->this$0:Lcom/netease/download/list/PatchListCore;

    invoke-static {v6}, Lcom/netease/download/list/PatchListCore;->access$000(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v3

    move-object v3, v0

    move-object/from16 v0, v18

    goto :goto_2

    .line 210
    :cond_3
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v0

    iget-object v4, v1, Lcom/netease/download/list/PatchListCore$1;->this$0:Lcom/netease/download/list/PatchListCore;

    invoke-static {v4}, Lcom/netease/download/list/PatchListCore;->access$100(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/download/downloader/FileHandle;

    .line 211
    invoke-virtual {v0}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 213
    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_4

    .line 214
    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v4

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getLast()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getStart()J

    move-result-wide v7

    sub-long/2addr v5, v7

    move-wide v4, v5

    .line 219
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PatchListCore [okhttpCallback] [onResponse] size111="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/netease/download/downloader/DownloadParams;->createByteBuffer(J)V

    .line 221
    invoke-virtual {v0}, Lcom/netease/download/downloader/FileHandle;->getDownloadParams()Lcom/netease/download/downloader/DownloadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_2
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 228
    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PatchListCore [okhttpCallback] [onResponse] contentLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/netease/ntunisdk/okhttp3/Response;->body()Lcom/netease/ntunisdk/okhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/ntunisdk/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 232
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->isRammode()Z

    move-result v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-nez v5, :cond_6

    .line 235
    :goto_3
    invoke-virtual {v6, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    if-eq v0, v7, :cond_5

    .line 236
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v9

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->getTaskMergeAllSizes()J

    move-result-wide v10

    int-to-long v12, v0

    iget-object v5, v1, Lcom/netease/download/list/PatchListCore$1;->this$0:Lcom/netease/download/list/PatchListCore;

    invoke-static {v5}, Lcom/netease/download/list/PatchListCore;->access$200(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;

    move-result-object v14

    iget-object v5, v1, Lcom/netease/download/list/PatchListCore$1;->this$0:Lcom/netease/download/list/PatchListCore;

    invoke-static {v5}, Lcom/netease/download/list/PatchListCore;->access$000(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v9 .. v17}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v3, v4, v8, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    .line 240
    :cond_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 241
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 242
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 245
    :goto_4
    invoke-virtual {v6, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    if-eq v5, v7, :cond_7

    .line 246
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getInstances()Lcom/netease/download/listener/DownloadListenerProxy;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerProxy;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;

    move-result-object v9

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/netease/download/downloader/TaskHandle;->getTaskMergeAllSizes()J

    move-result-wide v10

    int-to-long v12, v5

    iget-object v14, v1, Lcom/netease/download/list/PatchListCore$1;->this$0:Lcom/netease/download/list/PatchListCore;

    invoke-static {v14}, Lcom/netease/download/list/PatchListCore;->access$200(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/netease/download/list/PatchListCore$1;->this$0:Lcom/netease/download/list/PatchListCore;

    invoke-static {v15}, Lcom/netease/download/list/PatchListCore;->access$000(Lcom/netease/download/list/PatchListCore;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/netease/download/downloader/TaskHandle;->getDownloadId()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/netease/download/downloader/TaskHandleOp;->getInstance()Lcom/netease/download/downloader/TaskHandleOp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/TaskHandleOp;->getTaskHandle()Lcom/netease/download/downloader/TaskHandle;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/TaskHandle;->getNtesOrbitId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v9 .. v17}, Lcom/netease/download/listener/DownloadListenerProxy$DownloadListenerHandler;->sendProgressMsg(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v4, v8, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v5

    goto :goto_4

    .line 251
    :cond_7
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    move v8, v3

    .line 253
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6587\u4ef6\u5b58\u50a8\u8def\u5f84  count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    return-void
.end method
