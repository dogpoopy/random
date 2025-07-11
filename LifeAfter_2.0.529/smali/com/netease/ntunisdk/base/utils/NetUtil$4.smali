.class final Lcom/netease/ntunisdk/base/utils/NetUtil$4;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/NetUtil;->wpost_http_https(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$strJson:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$headers:Ljava/util/Map;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$strJson:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "UTF-8"

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$url:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 398
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v3, 0x0

    .line 399
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 400
    sget v6, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 401
    sget v6, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v6, "POST"

    .line 402
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Content-type"

    const-string v7, "application/json;charset=utf-8"

    .line 403
    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v6, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$headers:Ljava/util/Map;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 406
    iget-object v6, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$headers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 407
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 412
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 413
    iget-object v7, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$strJson:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 414
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 415
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 417
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x249

    if-eq v6, v7, :cond_1

    .line 418
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 420
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 421
    invoke-static {v6}, Lcom/netease/ntunisdk/base/utils/NetUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 422
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_2

    .line 433
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v4

    move-object v1, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v5, v1

    .line 429
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    .line 433
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v8, v1

    .line 437
    :goto_2
    invoke-static {v2, v5}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$100(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$url:Ljava/lang/String;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;-><init>(Lcom/netease/ntunisdk/base/utils/NetUtil$4;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$200(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetMethodListener;)V

    return-void

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    if-eqz v0, :cond_5

    .line 474
    invoke-interface {v0, v8}, Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    :cond_5
    return-void

    :goto_3
    if-eqz v3, :cond_6

    .line 433
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 435
    :cond_6
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
