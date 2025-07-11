.class public Lcom/netease/ntunisdk/unilogger/network/OkHttpProxy;
.super Ljava/lang/Object;
.source "OkHttpProxy.java"


# static fields
.field public static okHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exec(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Response;
    .locals 3

    const-string v0, "UniLogger"

    .line 16
    sget-object v1, Lcom/netease/ntunisdk/unilogger/network/OkHttpProxy;->okHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 17
    invoke-static {}, Lcom/netease/ntunisdk/okhttp/SharedClient;->get()Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/netease/ntunisdk/unilogger/network/OkHttpProxy;->okHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    .line 21
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkHttpProxy net [exec] url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/okhttp3/Request;->url()Lcom/netease/ntunisdk/okhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/ntunisdk/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/netease/ntunisdk/unilogger/network/OkHttpProxy;->okHttpClient:Lcom/netease/ntunisdk/okhttp3/OkHttpClient;

    invoke-virtual {v1, p0}, Lcom/netease/ntunisdk/okhttp3/OkHttpClient;->newCall(Lcom/netease/ntunisdk/okhttp3/Request;)Lcom/netease/ntunisdk/okhttp3/Call;

    move-result-object p0

    .line 23
    invoke-interface {p0}, Lcom/netease/ntunisdk/okhttp3/Call;->execute()Lcom/netease/ntunisdk/okhttp3/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "net OkHttpProxy net [exec] Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/unilogger/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
