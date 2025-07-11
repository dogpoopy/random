.class final Lcom/netease/ntunisdk/base/WebViewProxy$2$1;
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
.field final synthetic a:Lcom/netease/ntunisdk/base/WebViewProxy$2;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/WebViewProxy$2;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 215
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/WebViewProxy$2$1;->a:Lcom/netease/ntunisdk/base/WebViewProxy$2;

    iget-object v1, v1, Lcom/netease/ntunisdk/base/WebViewProxy$2;->a:Lcom/netease/ntunisdk/base/WebViewProxy;

    invoke-static {v1}, Lcom/netease/ntunisdk/base/WebViewProxy;->e(Lcom/netease/ntunisdk/base/WebViewProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u672a\u68c0\u6d4b\u5230\u5ba2\u6237\u7aef\uff0c\u8bf7\u5b89\u88c5\u540e\u91cd\u8bd5\u3002"

    .line 216
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/netease/ntunisdk/base/WebViewProxy$2$1$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/base/WebViewProxy$2$1$1;-><init>(Lcom/netease/ntunisdk/base/WebViewProxy$2$1;)V

    const-string v2, "\u786e\u5b9a"

    .line 217
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
