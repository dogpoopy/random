.class Lcom/netease/mpay/oversea/web/WebViewEx$b;
.super Lcom/netease/mpay/oversea/web/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/web/WebViewEx;->registered(Landroid/app/Activity;Landroid/content/res/AssetManager;Lcom/netease/mpay/oversea/web/Config;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/web/WebViewExListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/netease/mpay/oversea/web/WebViewExListener;

.field final synthetic g:Lcom/netease/mpay/oversea/web/WebViewEx;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/web/WebViewEx;Landroid/app/Activity;Landroid/content/res/AssetManager;Lcom/netease/mpay/oversea/web/Config;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/web/InjectedJsInterface;Lcom/netease/mpay/oversea/web/WebViewExListener;)V
    .locals 6

    iput-object p1, p0, Lcom/netease/mpay/oversea/web/WebViewEx$b;->g:Lcom/netease/mpay/oversea/web/WebViewEx;

    iput-object p7, p0, Lcom/netease/mpay/oversea/web/WebViewEx$b;->f:Lcom/netease/mpay/oversea/web/WebViewExListener;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/oversea/web/a;-><init>(Landroid/app/Activity;Landroid/content/res/AssetManager;Lcom/netease/mpay/oversea/web/Config;Ljava/util/ArrayList;Lcom/netease/mpay/oversea/web/InjectedJsInterface;)V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/oversea/web/WebViewEx$b;->f:Lcom/netease/mpay/oversea/web/WebViewExListener;

    invoke-interface {v0, p1, p2}, Lcom/netease/mpay/oversea/web/WebViewExListener;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
