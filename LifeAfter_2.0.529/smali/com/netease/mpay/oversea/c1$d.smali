.class Lcom/netease/mpay/oversea/c1$d;
.super Landroid/os/CountDownTimer;
.source "CountDownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/c1;->a(Landroid/app/Activity;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/netease/mpay/oversea/c1;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/c1;JJLandroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/c1$d;->c:Lcom/netease/mpay/oversea/c1;

    iput-object p6, p0, Lcom/netease/mpay/oversea/c1$d;->a:Landroid/app/Activity;

    iput-object p7, p0, Lcom/netease/mpay/oversea/c1$d;->b:Landroid/app/AlertDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    const-string v0, "CountDown: finish"

    .line 1
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/c1$d;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/c1$d;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/c1$d;->c:Lcom/netease/mpay/oversea/c1;

    invoke-static {v0}, Lcom/netease/mpay/oversea/c1;->d(Lcom/netease/mpay/oversea/c1;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/mpay/oversea/c1$d;->c:Lcom/netease/mpay/oversea/c1;

    invoke-static {v0}, Lcom/netease/mpay/oversea/c1;->d(Lcom/netease/mpay/oversea/c1;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/c1$d;->b:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/c1$d;->a:Landroid/app/Activity;

    const-string v2, "auto_guest_alert"

    const-string v3, "confirm"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/c1$d;->a:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_countdown:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/netease/mpay/oversea/c1$d;->c:Lcom/netease/mpay/oversea/c1;

    invoke-static {p2}, Lcom/netease/mpay/oversea/c1;->c(Lcom/netease/mpay/oversea/c1;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
