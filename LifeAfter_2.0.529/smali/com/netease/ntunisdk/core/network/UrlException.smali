.class public final Lcom/netease/ntunisdk/core/network/UrlException;
.super Ljava/lang/Exception;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error Code: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/netease/ntunisdk/core/network/UrlException;->a:I

    iput-object p2, p0, Lcom/netease/ntunisdk/core/network/UrlException;->b:Ljava/lang/String;

    return-void
.end method

.method public static throwUrlError(Ljava/lang/Error;)V
    .locals 2

    instance-of v0, p0, Ljava/lang/IllegalAccessError;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    const/16 v1, 0xc

    invoke-virtual {p0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static throwUrlException(Ljava/lang/Exception;)V
    .locals 2

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/ntunisdk/core/network/Utils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    new-instance v1, Lcom/netease/ntunisdk/core/network/UrlException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    instance-of v0, p0, Ljava/net/ConnectException;

    const/4 v1, 0x2

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/io/UnsupportedEncodingException;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/net/ProtocolException;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    const/16 v1, 0xc

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    const/16 v1, 0x9

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    const/4 v1, 0x4

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/netease/ntunisdk/core/network/UrlException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/netease/ntunisdk/core/network/UrlException;-><init>(ILjava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/netease/ntunisdk/core/network/UrlException;->a:I

    return v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/network/UrlException;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/core/network/UrlException;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No peer certificate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request method not allowed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Client protocol error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server read error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Server error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported parameter encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
