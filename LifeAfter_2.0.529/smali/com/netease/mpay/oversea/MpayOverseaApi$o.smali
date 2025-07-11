.class Lcom/netease/mpay/oversea/MpayOverseaApi$o;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->unBind(ILcom/netease/mpay/oversea/UnBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/oversea/UnBindCallback;

.field final synthetic c:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;ILcom/netease/mpay/oversea/UnBindCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$o;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$o;->a:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$o;->b:Lcom/netease/mpay/oversea/UnBindCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$o;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$o;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->b(Lcom/netease/mpay/oversea/MpayOverseaApi;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$o;->a:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$o;->b:Lcom/netease/mpay/oversea/UnBindCallback;

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Ljava/lang/String;ILcom/netease/mpay/oversea/UnBindCallback;)V

    return-void
.end method
