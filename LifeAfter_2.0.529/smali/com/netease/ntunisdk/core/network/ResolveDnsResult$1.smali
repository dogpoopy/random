.class final Lcom/netease/ntunisdk/core/network/ResolveDnsResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->wrap(Ljava/net/HttpURLConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/core/network/ResolveDnsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult$1;->a:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult$1;->a:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    iget-object v1, v1, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->ip:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/core/network/ResolveDnsResult$1;->a:Lcom/netease/ntunisdk/core/network/ResolveDnsResult;

    iget-object p1, p1, Lcom/netease/ntunisdk/core/network/ResolveDnsResult;->host:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
