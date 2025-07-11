.class Lcom/netease/mpay/oversea/b5$e;
.super Lcom/netease/mpay/oversea/f1;
.source "LVUPersonInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/b5;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netease/mpay/oversea/b5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/b5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/trackers/Monitor;->getInstance()Lcom/netease/mpay/oversea/trackers/Monitor;

    move-result-object p1

    const-string v0, "child_protection"

    const-string v1, "child_protection_continue"

    invoke-virtual {p1, v0, v1}, Lcom/netease/mpay/oversea/trackers/Monitor;->traceUserAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->n()Lcom/netease/mpay/oversea/i9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/i9;->d0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->b(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/d1;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->j(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_location_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->t(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object p1

    iget p1, p1, Lcom/netease/mpay/oversea/p1;->b:I

    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/b5;->z(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v0

    iget v0, v0, Lcom/netease/mpay/oversea/p1;->b:I

    iget-object v1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {v1}, Lcom/netease/mpay/oversea/b5;->A(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v1

    iget v1, v1, Lcom/netease/mpay/oversea/p1;->b:I

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/p6;->a(III)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->B(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_date_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->C(Lcom/netease/mpay/oversea/b5;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->D(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_limit_age_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    :try_start_0
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {v2}, Lcom/netease/mpay/oversea/b5;->A(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/mpay/oversea/p1;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {v4}, Lcom/netease/mpay/oversea/b5;->z(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/oversea/p1;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {v4}, Lcom/netease/mpay/oversea/b5;->t(Lcom/netease/mpay/oversea/b5;)Lcom/netease/mpay/oversea/p1;

    move-result-object v4

    iget-object v4, v4, Lcom/netease/mpay/oversea/p1;->e:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {v0, v3, v3}, Lcom/netease/mpay/oversea/b5;->a(Lcom/netease/mpay/oversea/b5;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netease/mpay/oversea/b5;->a(Lcom/netease/mpay/oversea/b5;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    iget-object p1, p0, Lcom/netease/mpay/oversea/b5$e;->d:Lcom/netease/mpay/oversea/b5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/b5;->c(Lcom/netease/mpay/oversea/b5;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__lvu_date_tips:I

    invoke-static {v0, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/mpay/oversea/z0;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
