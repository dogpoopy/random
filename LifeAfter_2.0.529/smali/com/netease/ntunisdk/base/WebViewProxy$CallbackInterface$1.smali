.class final Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$1;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;->nativeCall(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$1;->c:Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 883
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebViewProxy [CallbackInterface]  OnWebViewListener.OnAction, current thread="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-static {}, Lcom/netease/ntunisdk/base/WebViewProxy;->c()Lcom/netease/ntunisdk/base/OnWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$CallbackInterface$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/base/OnWebViewListener;->OnWebViewNativeCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
