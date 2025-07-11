.class Lcom/netease/mpay/oversea/MpayOverseaApi$y;
.super Lcom/netease/mpay/oversea/ga;
.source "MpayOverseaApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayOverseaApi;->pay(Lcom/netease/mpay/oversea/PaymentRequest;Lcom/netease/mpay/oversea/PaymentCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/mpay/oversea/ga<",
        "Lcom/netease/mpay/oversea/e8;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/PaymentCallback;

.field final synthetic e:Lcom/netease/mpay/oversea/MpayOverseaApi;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayOverseaApi;Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/PaymentCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->e:Lcom/netease/mpay/oversea/MpayOverseaApi;

    iput-object p5, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/netease/mpay/oversea/ga;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/s9;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 6
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 p2, 0x7d1

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/e8;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Lcom/netease/mpay/oversea/e8;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ga;->a:Landroid/app/Activity;

    iget-object p1, p1, Lcom/netease/mpay/oversea/e8;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    invoke-static {v0, p1, v1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/PaymentCallback;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 v0, 0x7d1

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    :goto_1
    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 v0, 0x7d4

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 7
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/netease/mpay/oversea/i9;->a(Lcom/netease/mpay/oversea/e6;)V

    .line 8
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 p2, 0x7d4

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public b(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 p2, 0x7d1

    invoke-interface {p1, p2}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->d:Lcom/netease/mpay/oversea/PaymentCallback;

    const/16 v0, 0x7d4

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/e8;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/MpayOverseaApi$y;->a(Lcom/netease/mpay/oversea/e8;)V

    return-void
.end method
