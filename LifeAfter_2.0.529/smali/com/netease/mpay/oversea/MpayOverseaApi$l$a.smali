.class Lcom/netease/mpay/oversea/MpayOverseaApi$l$a;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/MpayOverseaApi$l;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l$a;->a:Lcom/netease/mpay/oversea/MpayOverseaApi$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/j8;->a()V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l$a;->a:Lcom/netease/mpay/oversea/MpayOverseaApi$l;

    iget-object p1, p1, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l$a;->a:Lcom/netease/mpay/oversea/MpayOverseaApi$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->b:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->b(Lcom/netease/mpay/oversea/MpayOverseaApi;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/d;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$l$a;->a:Lcom/netease/mpay/oversea/MpayOverseaApi$l;

    iget-object v0, v0, Lcom/netease/mpay/oversea/MpayOverseaApi$l;->a:Lcom/netease/mpay/oversea/CheckAutoLoginCallback;

    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/CheckAutoLoginCallback;->shouldAutoLogin(Z)V

    return-void
.end method
