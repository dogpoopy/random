.class Lcom/netease/ntunisdk/base/utils/NetUtil$2$1;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/NetUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/NetUtil$2;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$2$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    .line 209
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 211
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 212
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 219
    :goto_0
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/NetUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 220
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$2$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$2;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/NetUtil$2;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$2$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$2;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/NetUtil$2;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    invoke-interface {p1, v0}, Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
