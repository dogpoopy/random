.class Lcom/netease/mpay/oversea/b4$h;
.super Lcom/netease/mpay/oversea/f1;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b4;->c(Lcom/netease/mpay/oversea/w2;)Lcom/netease/mpay/oversea/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/b4;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b4$h;->d:Lcom/netease/mpay/oversea/b4;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$h;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->s(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__alert_logout:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$h;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->t(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$h;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->u(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/b4$h;->d:Lcom/netease/mpay/oversea/b4;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b4;->v(Lcom/netease/mpay/oversea/b4;)Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Lcom/netease/mpay/oversea/b4$h$a;

    invoke-direct {v4, p0}, Lcom/netease/mpay/oversea/b4$h$a;-><init>(Lcom/netease/mpay/oversea/b4$h;)V

    new-instance v6, Lcom/netease/mpay/oversea/b4$h$b;

    invoke-direct {v6, p0}, Lcom/netease/mpay/oversea/b4$h$b;-><init>(Lcom/netease/mpay/oversea/b4$h;)V

    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method
