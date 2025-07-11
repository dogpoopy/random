.class final Lcom/netease/ntunisdk/base/utils/NetUtil$2;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/NetUtil;->wgetIncludeNewLine(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$2;->val$urlStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$2;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "gzip"

    const-string v1, "wgetIncludeNewLine error:"

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 169
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$2;->val$urlStr:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v6, "Accept-Encoding"

    .line 172
    invoke-virtual {v5, v6, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget v6, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 174
    sget v6, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 175
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 181
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0x249

    if-eq v6, v7, :cond_1

    .line 182
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 184
    :goto_1
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/NetUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v7

    .line 185
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_2

    .line 192
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    if-eqz v0, :cond_3

    .line 196
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 199
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    move v3, v6

    move-object v4, v8

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    move-object v4, v5

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_6

    :catch_1
    move-exception v6

    move-object v10, v2

    move-object v2, v0

    move-object v0, v6

    move-object v6, v5

    move-object v5, v10

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v6, v5

    move-object v5, v2

    move-object v2, v4

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v4

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v5, v2

    move-object v2, v4

    move-object v6, v2

    .line 188
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v6, :cond_4

    .line 192
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v2, :cond_5

    .line 196
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 199
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    move-object v2, v5

    .line 205
    :goto_5
    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$100(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$2;->val$urlStr:Ljava/lang/String;

    new-instance v1, Lcom/netease/ntunisdk/base/utils/NetUtil$2$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/utils/NetUtil$2$1;-><init>(Lcom/netease/ntunisdk/base/utils/NetUtil$2;)V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$200(Ljava/lang/String;Lcom/netease/ntunisdk/base/utils/WgetMethodListener;)V

    return-void

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$2;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    if-eqz v0, :cond_7

    .line 228
    invoke-interface {v0, v4}, Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    :cond_7
    return-void

    :catchall_3
    move-exception v0

    move-object v4, v6

    :goto_6
    if-eqz v4, :cond_8

    .line 192
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v2, :cond_9

    .line 196
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v2

    .line 199
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_9
    :goto_7
    throw v0
.end method
