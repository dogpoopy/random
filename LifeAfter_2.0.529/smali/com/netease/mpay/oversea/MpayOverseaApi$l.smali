.class Lcom/netease/mpay/oversea/MpayOverseaApi$l;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->shouldAutoLogin(Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/CheckAutoLoginCallback;

.field final synthetic b:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Lcom/netease/mpay/oversea/CheckAutoLoginCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->a:Lcom/netease/mpay/oversea/CheckAutoLoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/i9;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->b(Lcom/netease/mpay/oversea/MpayOverseaApi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/d;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->a:Lcom/netease/mpay/oversea/CheckAutoLoginCallback;

    invoke-interface {v1, v0}, Lcom/netease/mpay/oversea/CheckAutoLoginCallback;->shouldAutoLogin(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/MpayOverseaApi$l$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/MpayOverseaApi$l$a;-><init>(Lcom/netease/mpay/oversea/MpayOverseaApi$l;)V

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/ui/q;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/q$f;)V

    :goto_0
    return-void
.end method
