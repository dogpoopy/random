.class Lcom/netease/mpay/oversea/q7$f;
.super Lcom/netease/mpay/oversea/g1;
.source "PassportLoginHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/q7;->a(Lcom/netease/mpay/oversea/d5;Ljava/lang/String;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/mpay/oversea/d5;

.field final synthetic c:Lcom/netease/mpay/oversea/q7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/q7;Lcom/netease/mpay/oversea/d5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/q7$f;->c:Lcom/netease/mpay/oversea/q7;

    iput-object p2, p0, Lcom/netease/mpay/oversea/q7$f;->b:Lcom/netease/mpay/oversea/d5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/g1;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/mpay/oversea/q7$f;->c:Lcom/netease/mpay/oversea/q7;

    invoke-static {v0}, Lcom/netease/mpay/oversea/q7;->r(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "neteasegames_login_policy"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/cb;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/q7$f;->b:Lcom/netease/mpay/oversea/d5;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/netease/mpay/oversea/d5;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/q7$f;->c:Lcom/netease/mpay/oversea/q7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/q7;->s(Lcom/netease/mpay/oversea/q7;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;

    iget-object v1, p0, Lcom/netease/mpay/oversea/q7$f;->b:Lcom/netease/mpay/oversea/d5;

    iget-object v1, v1, Lcom/netease/mpay/oversea/d5;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/q7$f;->c:Lcom/netease/mpay/oversea/q7;

    .line 4
    invoke-static {v2}, Lcom/netease/mpay/oversea/q7;->t(Lcom/netease/mpay/oversea/q7;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;-><init>(Ljava/lang/String;Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/ui/w$a;)V

    .line 5
    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/ui/x;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$VerifyWebData;)V

    :cond_0
    return-void
.end method
