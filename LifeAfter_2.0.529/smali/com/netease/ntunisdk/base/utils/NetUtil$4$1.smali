.class Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;
.super Ljava/lang/Object;
.source "NetUtil.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/utils/WgetMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/NetUtil$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$4;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/NetUtil$4;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 441
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 443
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->CONNECTION_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 444
    sget v0, Lcom/netease/ntunisdk/base/utils/NetUtil;->SO_TIMEOUT:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v0, "POST"

    .line 445
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-type"

    const-string v1, "application/json;charset=utf-8"

    .line 446
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 450
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 455
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$4;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$strJson:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 457
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 458
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 461
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 462
    invoke-static {p1}, Lcom/netease/ntunisdk/base/utils/NetUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 463
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/netease/ntunisdk/base/utils/NetUtil$4$1;->this$0:Lcom/netease/ntunisdk/base/utils/NetUtil$4;

    iget-object v0, v0, Lcom/netease/ntunisdk/base/utils/NetUtil$4;->val$cb:Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/utils/WgetDoneCallback;->ProcessResult(Ljava/lang/String;)V

    .line 469
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method
