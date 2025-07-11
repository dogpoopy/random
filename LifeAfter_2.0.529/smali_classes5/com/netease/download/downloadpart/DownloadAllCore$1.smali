.class Lcom/netease/download/downloadpart/DownloadAllCore$1;
.super Ljava/lang/Object;
.source "DownloadAllCore.java"

# interfaces
.implements Lcom/netease/ntunisdk/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/downloadpart/DownloadAllCore;

.field final synthetic val$code:I

.field final synthetic val$pParams:Lcom/netease/download/downloader/DownloadParams;


# direct methods
.method constructor <init>(Lcom/netease/download/downloadpart/DownloadAllCore;ILcom/netease/download/downloader/DownloadParams;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllCore;

    iput p2, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->val$code:I

    iput-object p3, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->val$pParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/netease/ntunisdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    const-string p2, "DownloadAllCore"

    const-string v0, "DownloadAllCore [okhttpCallback] [onFailure] start"

    .line 375
    invoke-static {p2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ConfigCore [okhttpCallback] [onFailure] start"

    .line 377
    invoke-static {v0}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigCore [okhttpCallback] [onFailure] Call Header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/ntunisdk/okhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 387
    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 392
    :cond_1
    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-static {p1}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-static {v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->access$100(Lcom/netease/download/downloadpart/DownloadAllCore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {p1, v0, v1}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/16 p1, 0xc8

    if-eq p1, p2, :cond_6

    .line 402
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->val$pParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/download/downloader/FileHandle;

    if-eqz p1, :cond_2

    .line 403
    invoke-virtual {p1}, Lcom/netease/download/downloader/FileHandle;->getErrorcdn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->val$pParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v1

    .line 406
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_3

    .line 409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_4

    .line 414
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/download/downloader/FileHandle;->setErrorcdn(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 420
    invoke-virtual {p1}, Lcom/netease/download/downloader/FileHandle;->getCdnerrorMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    .line 423
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 424
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public onResponse(Lcom/netease/ntunisdk/okhttp3/Call;Lcom/netease/ntunisdk/okhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DownloadAllCore"

    const-string v1, "DownloadAllCore [okhttpCallback] [onResponse] start"

    .line 349
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 357
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadAllCore [okhttpCallback] [onResponse] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->val$code:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") Call processHeader="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", protocol="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->protocol()Lcom/netease/ntunisdk/okhttp3/Protocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/ntunisdk/okhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", request = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/ntunisdk/okhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->val$code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Response processHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hashCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->protocol()Lcom/netease/ntunisdk/okhttp3/Protocol;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/ntunisdk/okhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->code()I

    move-result v1

    .line 361
    invoke-interface {p1}, Lcom/netease/ntunisdk/okhttp3/Call;->request()Lcom/netease/ntunisdk/okhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadAllCore [okhttpCallback] [onResponse] pCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Lcom/netease/ntunisdk/okhttp3/Response;->headers()Lcom/netease/ntunisdk/okhttp3/Headers;

    move-result-object p1

    const-string p2, "content-length"

    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadAllCore [okhttpCallback] [onResponse] totalSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore$1;->this$0:Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-static {v1, p1, p2}, Lcom/netease/download/downloadpart/DownloadAllCore;->access$000(Lcom/netease/download/downloadpart/DownloadAllCore;J)V

    const-string p1, "DownloadAllCore [okhttpCallback] [onResponse] close"

    .line 369
    invoke-static {v0, p1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
