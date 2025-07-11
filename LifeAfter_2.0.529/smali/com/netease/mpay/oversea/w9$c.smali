.class Lcom/netease/mpay/oversea/w9$c;
.super Landroid/os/CountDownTimer;
.source "SecurityInputCodeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/w9;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/w9;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/w9;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->i1(Lcom/netease/mpay/oversea/w9;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->O(Lcom/netease/mpay/oversea/w9;)Lcom/netease/mpay/oversea/w2;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netease/mpay/oversea/w2;->h:Z

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->i1(Lcom/netease/mpay/oversea/w9;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->i1(Lcom/netease/mpay/oversea/w9;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/w9;->P(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__usercenter_inputbox_send:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->i1(Lcom/netease/mpay/oversea/w9;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {v1}, Lcom/netease/mpay/oversea/w9;->Q(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__resend:I

    invoke-static {v1, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {p2}, Lcom/netease/mpay/oversea/w9;->i1(Lcom/netease/mpay/oversea/w9;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {p2}, Lcom/netease/mpay/oversea/w9;->i1(Lcom/netease/mpay/oversea/w9;)Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {v0}, Lcom/netease/mpay/oversea/w9;->N(Lcom/netease/mpay/oversea/w9;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$color;->netease_mpay_oversea__usercenter_inputbox_countdown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/w9$c;->a:Lcom/netease/mpay/oversea/w9;

    invoke-static {p2}, Lcom/netease/mpay/oversea/w9;->i1(Lcom/netease/mpay/oversea/w9;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
