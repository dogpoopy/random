.class public Lcom/netease/mpay/httpdns/ResolveDnsResult$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/httpdns/ResolveDnsResult;->setSNI(Ljava/net/HttpURLConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/netease/mpay/httpdns/ResolveDnsResult;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/httpdns/ResolveDnsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult$a;->a:Lcom/netease/mpay/httpdns/ResolveDnsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult$a;->a:Lcom/netease/mpay/httpdns/ResolveDnsResult;

    iget-object v2, v1, Lcom/netease/mpay/httpdns/ResolveDnsResult;->ip:Ljava/lang/String;

    .line 1
    invoke-virtual {v1, v2}, Lcom/netease/mpay/httpdns/ResolveDnsResult;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/netease/mpay/httpdns/ResolveDnsResult$a;->a:Lcom/netease/mpay/httpdns/ResolveDnsResult;

    iget-object p1, p1, Lcom/netease/mpay/httpdns/ResolveDnsResult;->host:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
