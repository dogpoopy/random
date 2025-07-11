.class Lcom/netease/mpay/oversea/z8$m;
.super Lcom/netease/mpay/oversea/g1;
.source "RegisterHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/z8;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/d5;

.field final synthetic c:Lcom/netease/mpay/oversea/z8;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/z8;Lcom/netease/mpay/oversea/d5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/z8$m;->c:Lcom/netease/mpay/oversea/z8;

    iput-object p2, p0, Lcom/netease/mpay/oversea/z8$m;->b:Lcom/netease/mpay/oversea/d5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/g1;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/z8$m;->b:Lcom/netease/mpay/oversea/d5;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/netease/mpay/oversea/d5;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/z8$m;->c:Lcom/netease/mpay/oversea/z8;

    invoke-static {p1}, Lcom/netease/mpay/oversea/z8;->G(Lcom/netease/mpay/oversea/z8;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v1, p0, Lcom/netease/mpay/oversea/z8$m;->b:Lcom/netease/mpay/oversea/d5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/d5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/z8$m;->c:Lcom/netease/mpay/oversea/z8;

    .line 3
    invoke-static {v2}, Lcom/netease/mpay/oversea/z8;->H(Lcom/netease/mpay/oversea/z8;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ui/w$a;)V

    .line 4
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/x;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    :cond_0
    return-void
.end method
