.class Lcom/netease/download/reporter/ReportNet$4;
.super Ljava/lang/Object;
.source "ReportNet.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/reporter/ReportNet;->postHttps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/download/network/NetworkDealer;Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/reporter/ReportNet;

.field final synthetic val$tconn:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method constructor <init>(Lcom/netease/download/reporter/ReportNet;Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/netease/download/reporter/ReportNet$4;->this$0:Lcom/netease/download/reporter/ReportNet;

    iput-object p2, p0, Lcom/netease/download/reporter/ReportNet$4;->val$tconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/netease/download/reporter/ReportNet$4;->val$tconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 448
    :goto_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
