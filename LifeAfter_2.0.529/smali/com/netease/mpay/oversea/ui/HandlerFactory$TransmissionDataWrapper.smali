.class public Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;
.super Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
.source "HandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/HandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransmissionDataWrapper"
.end annotation


# instance fields
.field j:Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->j:Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->j:Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 3
    check-cast v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    if-eqz v0, :cond_5

    if-ne v2, p1, :cond_1

    const/16 p1, 0x3ed

    :cond_1
    const/16 v1, 0x66

    .line 5
    invoke-interface {v0, p1, p2, v1}, Lcom/netease/mpay/oversea/MpayLoginCallback;->onFailure(ILjava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_2
    instance-of p2, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    if-eqz p2, :cond_3

    .line 9
    check-cast v0, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;->a()Lcom/netease/mpay/oversea/FeedbackCallback;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    invoke-interface {p1}, Lcom/netease/mpay/oversea/FeedbackCallback;->onFailure()V

    goto :goto_0

    .line 13
    :cond_3
    instance-of p2, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;

    if-eqz p2, :cond_5

    .line 14
    check-cast v0, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;->a()Lcom/netease/mpay/oversea/PaymentCallback;

    move-result-object p2

    if-ne v2, p1, :cond_4

    const/16 p1, 0x7d3

    :cond_4
    invoke-interface {p2, p1}, Lcom/netease/mpay/oversea/PaymentCallback;->onPaymentFinish(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method c()Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->j:Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    return-object v0

    :cond_1
    return-object v1
.end method

.method d()Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;->j:Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v2, v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    if-eqz v2, :cond_1

    .line 3
    check-cast v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    return-object v0

    :cond_1
    return-object v1
.end method
