.class final Lcom/netease/ntunisdk/base/WebViewProxy$2$2;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/WebViewProxy$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/ntunisdk/base/WebViewProxy$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy$2;Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$2;->b:Lcom/netease/ntunisdk/base/WebViewProxy$2;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(Ljava/lang/String;)I

    move-result v0

    .line 293
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebViewProxy [init] [shouldOverrideUrlLoading] status="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {v0}, Lcom/netease/ntunisdk/base/WebViewProxy;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebViewProxy [init] [shouldOverrideUrlLoading] fail to open url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$2;->b:Lcom/netease/ntunisdk/base/WebViewProxy$2;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-direct {v0, v1}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy;)V

    const-string v1, "close"

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
