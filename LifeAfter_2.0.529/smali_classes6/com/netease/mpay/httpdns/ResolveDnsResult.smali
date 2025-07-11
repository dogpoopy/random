.class public Lcom/netease/mpay/httpdns/ResolveDnsResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public host:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public isNeedSwitchDNSMode:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netease/mpay/httpdns/ResolveDnsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->isNeedSwitchDNSMode:Z

    iput-object p1, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->host:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->ip:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->isNeedSwitchDNSMode:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setSNI(Ljava/net/HttpURLConnection;)V
    .locals 2

    iget-object v0, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->host:Ljava/lang/String;

    const-string v1, "host"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult;->a:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v0, Lcom/netease/mpay/httpdns/l;

    invoke-direct {v0, p1}, Lcom/netease/mpay/httpdns/l;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lcom/netease/mpay/httpdns/ResolveDnsResult$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/httpdns/ResolveDnsResult$a;-><init>(Lcom/netease/mpay/httpdns/ResolveDnsResult;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    return-void
.end method
