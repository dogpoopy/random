.class Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/NetUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$1;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/NetUtil$1;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/net/HttpURLConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 108
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 110
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 112
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$httpURLConnectionListener:Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$1;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$httpURLConnectionListener:Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;

    invoke-interface {v0, p1}, Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;->preConnect(Ljava/net/HttpURLConnection;)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/netease/ntunisdk/base/utils/NetUtil;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wget, encoding="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "utf-8"

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 125
    :goto_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 131
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$1;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$1;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    invoke-interface {v1, v0}, Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$1;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$httpURLConnectionListener:Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;

    if-eqz v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$1$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$1;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/utils/NetUtil$1;->val$httpURLConnectionListener:Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;

    invoke-interface {v1, v0, p1}, Lcom/netease/ntunisdk/base/utils/NetUtil$HttpURLConnectionListener;->afterConnect(Ljava/lang/String;Ljava/net/HttpURLConnection;)V

    :cond_4
    return-void
.end method
