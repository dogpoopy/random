.class Lcom/netease/ntunisdk/base/utils/NetUtil$3$1;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/NetUtil$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$3;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/NetUtil$3;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/net/HttpURLConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 296
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 298
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 299
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "POST"

    .line 300
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-type"

    const-string v1, "application/json;charset=utf-8"

    .line 301
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 304
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$3;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$strJson:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 306
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 307
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 310
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 311
    invoke-static {v0}, Lcom/netease/ntunisdk/base/utils/NetUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 312
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UniSDK Base"

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "content:"

    .line 315
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$3;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    if-eqz p1, :cond_0

    .line 318
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$3$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$3;

    iget-object p1, p1, Lcom/netease/ntunisdk/base/utils/NetUtil$3;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    invoke-interface {p1, v3}, Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    .line 321
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method
