.class final Lcom/netease/ntunisdk/base/WebViewProxy$6;
.super Ljava/lang/Object;
.source "WebViewProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/WebViewProxy;->openWebView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/ntunisdk/base/WebViewProxy;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$6;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/WebViewProxy$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/netease/ntunisdk/base/WebViewProxy$6;->c:Lcom/netease/ntunisdk/base/WebViewProxy;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$6;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/WebViewProxy$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/ntunisdk/base/WebViewProxy;->doOpenWebView(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
