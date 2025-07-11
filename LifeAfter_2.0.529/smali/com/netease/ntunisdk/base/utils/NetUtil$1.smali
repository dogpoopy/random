.class final Lcom/netease/ntunisdk/base/utils/NetUtil$1;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/NetUtil;->wget(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

.field final synthetic val$httpURLConnectionListener:Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$urlStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$httpURLConnectionListener:Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "gzip"

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 59
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$urlStr:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v5, "Accept-Encoding"

    .line 62
    invoke-virtual {v4, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget v5, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 64
    sget v5, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 66
    iget-object v5, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$httpURLConnectionListener:Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;

    if-eqz v5, :cond_0

    .line 67
    invoke-interface {v5, v4}, Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;->preConnect(Ljava/net/HttpURLConnection;)V

    .line 70
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "wget, encoding="

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "utf-8"

    if-eqz v0, :cond_1

    .line 74
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    :goto_0
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x249

    if-eq v5, v6, :cond_2

    .line 80
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 81
    :goto_1
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 82
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    .line 93
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 97
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    move v2, v5

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v3, v4

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_7

    :catch_1
    move-exception v5

    move-object v9, v1

    move-object v1, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v5, v4

    move-object v4, v1

    move-object v1, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v4, v1

    move-object v1, v3

    move-object v5, v1

    .line 89
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_5

    .line 93
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz v1, :cond_6

    .line 97
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_5
    move-object v1, v4

    move-object v4, v5

    .line 104
    :goto_6
    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$100(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$urlStr:Ljava/lang/String;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;-><init>(Lcom/netease/ntunisdk/base/utils/NetUtil$1;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$200(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetMethodListener;)V

    return-void

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    if-eqz v0, :cond_8

    .line 143
    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$httpURLConnectionListener:Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;

    if-eqz v0, :cond_9

    .line 147
    invoke-interface {v0, v3, v4}, Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;->afterConnect(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    :cond_9
    return-void

    :catchall_3
    move-exception v0

    move-object v3, v5

    :goto_7
    if-eqz v3, :cond_a

    .line 93
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    if-eqz v1, :cond_b

    .line 97
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    .line 99
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    :cond_b
    :goto_8
    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method
