.class Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;
.super Ljava/lang/Object;
.source "HTTPQueue.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->onResult(ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$ipTemp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;->this$1:Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;->val$ipTemp:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;->val$domain:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    .line 652
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;->this$1:Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3;->this$0:Lcom/netease/ntunisdk/base/utils/HTTPQueue;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;->val$ipTemp:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/utils/HTTPQueue;->access$500(Lcom/netease/ntunisdk/base/utils/HTTPQueue;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    iget-object p1, p0, Lcom/netease/ntunisdk/base/utils/HTTPQueue$3$1;->val$domain:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1

    .line 656
    :cond_0
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
