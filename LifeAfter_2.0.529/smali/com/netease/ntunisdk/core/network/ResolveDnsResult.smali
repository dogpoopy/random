.class public Lcom/netease/ntunisdk/core/network/ResolveDnsResult;
.super Ljava/lang/Object;


# instance fields
.field public host:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public isHttps:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->isHttps:Z

    iput-object p2, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->host:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->ip:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public wrap(Ljava/net/HttpURLConnection;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->host:Ljava/lang/String;

    const-string v1, "host"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->isHttps:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v0, Lcom/netease/ntunisdk/core/network/TLSSniSocketFactory;

    invoke-direct {v0, p1}, Lcom/netease/ntunisdk/core/network/TLSSniSocketFactory;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/core/network/ResolveDnsResult$1;-><init>(Lcom/netease/ntunisdk/core/network/ResolveDnsResult;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    return-void
.end method
