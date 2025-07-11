.class public Lcom/netease/mpay/oversea/ui/c;
.super Lcom/netease/mpay/oversea/ui/a;
.source "ApiHandler.java"


# instance fields
.field private f:Lcom/netease/mpay/oversea/thirdapi/c;

.field private g:Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

.field private h:I

.field private i:Lcom/netease/mpay/oversea/SyncApiAuthCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/c;)Lcom/netease/mpay/oversea/SyncApiAuthCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/ui/c;->i:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    return-object p0
.end method

.method public static a(I)Lcom/netease/mpay/oversea/thirdapi/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 8
    :cond_0
    sget-object v1, Lcom/netease/mpay/oversea/g6;->w:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 9
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/i;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/i;-><init>()V

    return-object p0

    .line 10
    :cond_1
    sget-object v1, Lcom/netease/mpay/oversea/g6;->v:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    if-ne p0, v1, :cond_2

    .line 11
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/s;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/s;-><init>()V

    return-object p0

    .line 12
    :cond_2
    sget-object v1, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    if-ne p0, v1, :cond_4

    .line 13
    invoke-static {}, Lcom/netease/mpay/oversea/h6;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 14
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/u;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/u;-><init>()V

    return-object p0

    .line 16
    :cond_3
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/t;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/t;-><init>()V

    return-object p0

    .line 18
    :cond_4
    sget-object v1, Lcom/netease/mpay/oversea/g6;->A:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v1

    if-ne p0, v1, :cond_7

    .line 19
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/i9;->U()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 20
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/k;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/k;-><init>()V

    return-object p0

    .line 21
    :cond_5
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/mpay/oversea/i9;->V()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 22
    new-instance p0, Lcom/netease/mpay/oversea/g5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/g5;-><init>()V

    return-object p0

    .line 24
    :cond_6
    new-instance p0, Lcom/netease/mpay/oversea/thirdapi/j;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/thirdapi/j;-><init>()V

    return-object p0

    :cond_7
    return-object v0
.end method

.method public static a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;)V
    .locals 3

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 4
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "channel_type"

    .line 6
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x1f

    .line 7
    invoke-static {p0, p1, v0}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/c;->f:Lcom/netease/mpay/oversea/thirdapi/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->f()Lcom/netease/mpay/oversea/e7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/c;->f:Lcom/netease/mpay/oversea/thirdapi/c;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/thirdapi/c;->f()Lcom/netease/mpay/oversea/e7;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/mpay/oversea/e7;->a(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "data"

    .line 25
    invoke-super {p0, p1}, Lcom/netease/mpay/oversea/ui/a;->a(Landroid/os/Bundle;)V

    .line 26
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    iput-object v0, p0, Lcom/netease/mpay/oversea/ui/c;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    const-string v0, "channel_type"

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/ui/c;->h:I

    .line 31
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/c;->g:Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;->a()Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/c;->i:Lcom/netease/mpay/oversea/SyncApiAuthCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    iget p1, p0, Lcom/netease/mpay/oversea/ui/c;->h:I

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/c;->a(I)Lcom/netease/mpay/oversea/thirdapi/c;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/c;->f:Lcom/netease/mpay/oversea/thirdapi/c;

    if-nez p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/c;->i:Lcom/netease/mpay/oversea/SyncApiAuthCallback;

    if-eqz p1, :cond_0

    const/16 v0, 0xcd

    .line 38
    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/SyncApiAuthCallback;->onFailure(I)V

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a;->b:Lcom/netease/mpay/oversea/ui/i;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/i;->a()V

    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/a;->a:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/c$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/ui/c$a;-><init>(Lcom/netease/mpay/oversea/ui/c;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;ZLcom/netease/mpay/oversea/l;)V

    return-void
.end method
