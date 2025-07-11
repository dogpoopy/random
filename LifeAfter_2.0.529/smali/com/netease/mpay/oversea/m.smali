.class public Lcom/netease/mpay/oversea/m;
.super Ljava/lang/Object;
.source "ApiProxy.java"


# direct methods
.method private static a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V
    .locals 3

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 21
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p3, "launch_type"

    .line 23
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "login_type"

    .line 24
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    const-class p1, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    invoke-static {p0, v0, p2}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "launch_type"

    .line 6
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    const-class v0, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-static {p0, p2, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    const/16 v0, 0x1b

    .line 3
    invoke-static {p0, p1, v0, p2}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method protected static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const-string v1, "activity_orientation"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected static a(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const-string v1, "activity_orientation"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x1a

    .line 5
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1d

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/PaymentCallback;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;

    invoke-direct {v0, p1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$PaymentWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/PaymentCallback;)V

    const/4 p1, -0x1

    const/16 p2, 0x17

    invoke-static {p0, p1, p2, v0}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    const-string v0, "home"

    .line 1
    invoke-static {p0, v0, p1, p2}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 3

    if-eqz p3, :cond_1

    .line 9
    invoke-virtual {p3}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 12
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p3, "NAV_TAB"

    .line 14
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "NAV_CONTENT"

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x7

    const-string p2, "launch_type"

    .line 16
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    const-class p2, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    invoke-static {p0, v0, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V
    .locals 3

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 15
    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p3, "launch_type"

    .line 17
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "login_type"

    .line 18
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    const-class p1, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    invoke-static {p0, v0, p2}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;ILandroid/content/Intent;)V
    .locals 1

    const-string v0, "launch_type"

    .line 2
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    const-class v0, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    invoke-static {p0, p2, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const-string v0, "home"

    const-string v1, "bind"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 7
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "NAV_CONTENT"

    .line 9
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x21

    const-string p2, "launch_type"

    .line 10
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    const-class p1, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 12
    invoke-static {p0, v0}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    const-string v0, "bind"

    .line 11
    invoke-static {p0, v0, v0, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
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

    const-string p2, "NAV_TAB"

    const-string v1, "home"

    .line 6
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "NAV_CONTENT"

    .line 7
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x24

    const-string p2, "launch_type"

    .line 8
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    const-class p2, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 10
    invoke-static {p0, v0, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x1c

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static e(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x23

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static f(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v0

    const/16 v1, 0x1b

    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static g(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static h(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 4
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0x25

    const-string v1, "launch_type"

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    const-class v1, Lcom/netease/mpay/oversea/MpayActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8
    invoke-static {p0, v0, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static i(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x26

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static j(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x27

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static k(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    const-string v0, "home"

    .line 1
    invoke-static {p0, v0, v0, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public static l(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x1e

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;IILcom/netease/mpay/oversea/ui/TransmissionData$BaseData;)V

    return-void
.end method

.method public static m(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const-string v0, "home"

    const-string v1, "restore_account"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public static n(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 2

    const-string v0, "home"

    const-string v1, "security_email"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method

.method public static o(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V
    .locals 1

    const-string v0, "switch"

    .line 1
    invoke-static {p0, v0, v0, p1}, Lcom/netease/mpay/oversea/m;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method
