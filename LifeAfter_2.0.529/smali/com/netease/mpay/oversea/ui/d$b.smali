.class Lcom/netease/mpay/oversea/ui/d$b;
.super Lcom/netease/mpay/oversea/r4;
.source "ChannelLoginApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/b1;Ljava/lang/String;ILcom/netease/mpay/oversea/MpayBindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/MpayBindCallback;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayBindCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/d$b;->b:Lcom/netease/mpay/oversea/MpayBindCallback;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogFinish(Lcom/netease/mpay/oversea/User;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$b;->b:Lcom/netease/mpay/oversea/MpayBindCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/MpayBindCallback;->onBindSuccess(Lcom/netease/mpay/oversea/User;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x3ec

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, p1, v1}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;I)V
    .locals 0

    const/16 p3, 0x3ee

    if-eq p1, p3, :cond_0

    packed-switch p1, :pswitch_data_0

    const/16 p3, 0x3ed

    goto :goto_0

    :pswitch_0
    const/16 p3, 0x3eb

    goto :goto_0

    :pswitch_1
    const/16 p3, 0x3e9

    goto :goto_0

    :pswitch_2
    const/16 p3, 0x3ec

    .line 1
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/d$b;->b:Lcom/netease/mpay/oversea/MpayBindCallback;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1, p3, p2}, Lcom/netease/mpay/oversea/MpayBindCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLoginSuccess(Lcom/netease/mpay/oversea/User;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$b;->b:Lcom/netease/mpay/oversea/MpayBindCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/mpay/oversea/MpayBindCallback;->onBindSuccess(Lcom/netease/mpay/oversea/User;)V

    :cond_0
    return-void
.end method

.method public onUserLogout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/d$b;->b:Lcom/netease/mpay/oversea/MpayBindCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/netease/mpay/oversea/MpayBindCallback;->onUserLogout()V

    :cond_0
    return-void
.end method
