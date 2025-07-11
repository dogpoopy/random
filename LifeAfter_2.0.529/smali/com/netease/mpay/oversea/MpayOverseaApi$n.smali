.class Lcom/netease/mpay/oversea/MpayOverseaApi$n;
.super Ljava/lang/Object;
.source "MpayOverseaApi.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/q$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->bind(ILcom/netease/mpay/oversea/MpayBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/oversea/MpayBindCallback;

.field final synthetic c:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;ILcom/netease/mpay/oversea/MpayBindCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$n;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput p2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$n;->a:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$n;->b:Lcom/netease/mpay/oversea/MpayBindCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$n;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {p1}, Lcom/netease/mpay/oversea/MpayOverseaApi;->a(Lcom/netease/mpay/oversea/MpayOverseaApi;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$n;->c:Lcom/netease/mpay/oversea/MpayOverseaApi;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayOverseaApi;->b(Lcom/netease/mpay/oversea/MpayOverseaApi;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$n;->a:I

    iget-object v2, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$n;->b:Lcom/netease/mpay/oversea/MpayBindCallback;

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Ljava/lang/String;ILcom/netease/mpay/oversea/MpayBindCallback;)V

    return-void
.end method
