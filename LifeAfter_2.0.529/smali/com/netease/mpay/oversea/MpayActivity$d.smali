.class Lcom/netease/mpay/oversea/MpayActivity$d;
.super Ljava/lang/Object;
.source "MpayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/MpayActivity;->a(Landroid/os/Bundle;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/netease/mpay/oversea/MpayActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/MpayActivity;ILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    iput p2, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->a:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;

    iput-object p4, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    iget-object v1, v0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-nez v1, :cond_0

    .line 2
    iget v1, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->a:I

    new-instance v2, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;

    iget-object v3, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;

    invoke-direct {v2, v3}, Lcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;-><init>(Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    invoke-static {v0, v1, v2}, Lcom/netease/mpay/oversea/ui/HandlerFactory;->a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/HandlerFactory$TransmissionDataWrapper;)Lcom/netease/mpay/oversea/ui/a;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    iget-object v1, v0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    if-eqz v1, :cond_3

    .line 5
    instance-of v1, v1, Lcom/netease/mpay/oversea/ui/e;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/netease/ntunisdk/ngplugin/proxy/PluginActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    iget-object v1, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    .line 11
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayActivity;->a(Lcom/netease/mpay/oversea/MpayActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/a;->h()V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayActivity;->b(Lcom/netease/mpay/oversea/MpayActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    iget-object v1, v0, Lcom/netease/mpay/oversea/MpayActivity;->a:Lcom/netease/mpay/oversea/ui/a;

    invoke-static {v0}, Lcom/netease/mpay/oversea/MpayActivity;->b(Lcom/netease/mpay/oversea/MpayActivity;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netease/mpay/oversea/ui/a;->a(Z)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/MpayActivity;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 23
    iget-object v0, p0, Lcom/netease/mpay/oversea/MpayActivity$d;->d:Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/MpayActivity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method
