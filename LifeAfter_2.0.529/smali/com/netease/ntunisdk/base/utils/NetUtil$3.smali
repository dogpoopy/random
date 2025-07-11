.class final Lcom/netease/ntunisdk/base/utils/NetUtil$3;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/NetUtil;->wpost(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

.field final synthetic val$strJson:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$strJson:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "UniSDK Base"

    const-string v1, "UTF-8"

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 253
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v4, 0x0

    .line 257
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 258
    sget v7, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 259
    sget v7, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v7, "POST"

    .line 260
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v7, "Content-type"

    const-string v8, "application/json;charset=utf-8"

    .line 261
    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 264
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 265
    iget-object v8, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$strJson:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 266
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 267
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 269
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x249

    if-eq v7, v8, :cond_0

    .line 270
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    .line 272
    :cond_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 273
    invoke-static {v7}, Lcom/netease/ntunisdk/base/utils/NetUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 274
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content:"

    .line 277
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_1

    .line 288
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v5

    move-object v2, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v6, v2

    .line 284
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    .line 288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v9, v2

    .line 292
    :goto_1
    invoke-static {v3, v6}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$100(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$url:Ljava/lang/String;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/NetUtil$3$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/NetUtil$3$1;-><init>(Lcom/netease/ntunisdk/base/utils/NetUtil$3;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$200(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetMethodListener;)V

    return-void

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    if-eqz v0, :cond_4

    .line 326
    invoke-interface {v0, v9}, Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    :cond_4
    return-void

    :goto_2
    if-eqz v4, :cond_5

    .line 288
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 290
    :cond_5
    throw v0
.end method
