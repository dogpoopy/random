.class Lcom/netease/mpay/oversea/ui/o$h;
.super Ljava/lang/Object;
.source "LoginTemplate.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field a:Lcom/netease/mpay/oversea/s9;

.field final synthetic b:Lcom/netease/mpay/oversea/ui/o;


# direct methods
.method public constructor <init>(Lcom/netease/mpay/oversea/ui/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/ui/o$h;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o$h;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/ui/o$h;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o$h;->c(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/e6;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o$h;->d(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/s9;->j:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->c:Lcom/netease/mpay/oversea/y5;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/netease/mpay/oversea/s9;->r:Lcom/netease/mpay/oversea/s9;

    if-ne v2, v1, :cond_2

    iget-object v0, v0, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/mpay/oversea/e6;->a:Ljava/lang/String;

    .line 10
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    :cond_1
    new-instance v0, Lcom/netease/mpay/oversea/pa;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    .line 12
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/pa;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/pa;->e()Lcom/netease/mpay/oversea/e9;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/netease/mpay/oversea/e9;->b()Lcom/netease/mpay/oversea/f9;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/netease/mpay/oversea/f9;->a()V

    .line 15
    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/e9;->a(Lcom/netease/mpay/oversea/f9;)V

    .line 17
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o$h;->c(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    :goto_0
    return-void
.end method

.method private c(Lcom/netease/mpay/oversea/j;)V
    .locals 6

    .line 1
    iget-object v1, p1, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v3, Lcom/netease/mpay/oversea/ui/o$h$k;

    invoke-direct {v3, p0}, Lcom/netease/mpay/oversea/ui/o$h$k;-><init>(Lcom/netease/mpay/oversea/ui/o$h;)V

    new-instance v5, Lcom/netease/mpay/oversea/ui/o$h$a;

    invoke-direct {v5, p0}, Lcom/netease/mpay/oversea/ui/o$h$a;-><init>(Lcom/netease/mpay/oversea/ui/o$h;)V

    invoke-static/range {v0 .. v5}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    if-eqz p3, :cond_0

    .line 27
    sget-object p3, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/o;->a:Lcom/netease/mpay/oversea/g6;

    .line 28
    :goto_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    iget-object v1, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    iput-object p3, p2, Lcom/netease/mpay/oversea/e6;->h:Lcom/netease/mpay/oversea/g6;

    .line 29
    iget-object p3, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p3, p3, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v0, v1, p1, p2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 32
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 33
    invoke-virtual {p3, v0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__switch_same_account_warning:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 2
    invoke-static {v1, v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 3
    invoke-static {v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/o$h$b;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o$h$b;-><init>(Lcom/netease/mpay/oversea/ui/o$h;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    .line 4
    invoke-static {v1, v0, v2, v3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/o;->c()V

    return-void
.end method

.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 12

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiStateImpl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/j8;->b()Lcom/netease/mpay/oversea/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/j8;->a()V

    const/16 v0, 0x2329

    if-ne p1, v0, :cond_0

    .line 26
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/ui/o;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {p1, v0, v1, p2}, Lcom/netease/mpay/oversea/ui/o;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;Lcom/netease/mpay/oversea/j;)V

    return-void

    .line 28
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/s9;->i:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    const-string v2, "cancel"

    const-string v3, "confirm"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_3

    const/16 p2, 0x2717

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2719

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2718

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 42
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 43
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v6, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_tips:I

    new-array v0, v5, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    aput-object p1, v0, v4

    invoke-static {v6, p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/netease/mpay/oversea/ui/o$h$e;

    invoke-direct {v9, p0}, Lcom/netease/mpay/oversea/ui/o$h$e;-><init>(Lcom/netease/mpay/oversea/ui/o$h;)V

    new-instance v11, Lcom/netease/mpay/oversea/ui/o$h$f;

    invoke-direct {v11, p0}, Lcom/netease/mpay/oversea/ui/o$h$f;-><init>(Lcom/netease/mpay/oversea/ui/o$h;)V

    invoke-static/range {v6 .. v11}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    const-string p2, "login_guide_fallback_guest"

    .line 66
    invoke-virtual {p1, p2, v3, v2}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/oversea/ui/o$h$d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/ui/o$h$d;-><init>(Lcom/netease/mpay/oversea/ui/o$h;)V

    invoke-virtual {p2, p1, v0}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 104
    :cond_3
    sget-object p1, Lcom/netease/mpay/oversea/s9;->v:Lcom/netease/mpay/oversea/s9;

    if-ne p1, v1, :cond_6

    .line 105
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->p:Lcom/netease/mpay/oversea/v8;

    new-instance v0, Lcom/netease/mpay/oversea/d6;

    invoke-direct {v0, p2}, Lcom/netease/mpay/oversea/d6;-><init>(Lcom/netease/mpay/oversea/j;)V

    invoke-interface {p1, v0}, Lcom/netease/mpay/oversea/v8;->c(Lcom/netease/mpay/oversea/x2;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_6

    .line 106
    iget p1, p2, Lcom/netease/mpay/oversea/j;->a:I

    const/16 v0, 0x271b

    if-ne p1, v0, :cond_6

    .line 109
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_retry:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 110
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    sget v0, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 111
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v6, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object p2, p2, Lcom/netease/mpay/oversea/j;->b:Ljava/lang/String;

    if-nez p2, :cond_5

    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_connect_retry:I

    new-array v0, v5, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->e:Ljava/lang/String;

    aput-object p1, v0, v4

    invoke-static {v6, p2, v0}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v7, p1

    goto :goto_2

    :cond_5
    move-object v7, p2

    :goto_2
    new-instance v9, Lcom/netease/mpay/oversea/ui/o$h$g;

    invoke-direct {v9, p0}, Lcom/netease/mpay/oversea/ui/o$h$g;-><init>(Lcom/netease/mpay/oversea/ui/o$h;)V

    new-instance v11, Lcom/netease/mpay/oversea/ui/o$h$h;

    invoke-direct {v11, p0}, Lcom/netease/mpay/oversea/ui/o$h$h;-><init>(Lcom/netease/mpay/oversea/ui/o$h;)V

    invoke-static/range {v6 .. v11}, Lcom/netease/mpay/oversea/widget/a$u;->b(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    const-string p2, "login_guide_thirdparty_failed"

    .line 135
    invoke-virtual {p1, p2, v3, v2}, Lcom/netease/mpay/oversea/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    return-void

    .line 139
    :cond_6
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, p1, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v1, Lcom/netease/mpay/oversea/ui/o$h$i;

    invoke-direct {v1, p0, p2}, Lcom/netease/mpay/oversea/ui/o$h$i;-><init>(Lcom/netease/mpay/oversea/ui/o$h;Lcom/netease/mpay/oversea/j;)V

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/j;)V
    .locals 3

    .line 140
    sget-object v0, Lcom/netease/mpay/oversea/s9;->i:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/o$h;->c(Lcom/netease/mpay/oversea/j;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v0, Lcom/netease/mpay/oversea/ui/o;->g:Lcom/netease/mpay/oversea/thirdapi/c;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    new-instance v2, Lcom/netease/mpay/oversea/ui/o$h$j;

    invoke-direct {v2, p0, p1}, Lcom/netease/mpay/oversea/ui/o$h$j;-><init>(Lcom/netease/mpay/oversea/ui/o$h;Lcom/netease/mpay/oversea/j;)V

    invoke-virtual {v1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/c;->a(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
    .locals 4

    const-string v0, "Event:ApiStateImpl\uff1aonSuccess"

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->p:Lcom/netease/mpay/oversea/v8;

    new-instance v2, Lcom/netease/mpay/oversea/d6;

    invoke-direct {v2, p2}, Lcom/netease/mpay/oversea/d6;-><init>(Lcom/netease/mpay/oversea/e6;)V

    invoke-interface {v1, v2}, Lcom/netease/mpay/oversea/v8;->c(Lcom/netease/mpay/oversea/x2;)Z

    .line 5
    iget-object v1, p2, Lcom/netease/mpay/oversea/e6;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    if-eq v1, v2, :cond_0

    .line 6
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v0, v0, Lcom/netease/mpay/oversea/ui/o;->j:Landroid/app/Activity;

    iget-object v1, p2, Lcom/netease/mpay/oversea/e6;->e:Ljava/lang/String;

    sget v2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    .line 9
    invoke-static {v0, v2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/mpay/oversea/ui/o$h$c;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o$h$c;-><init>(Lcom/netease/mpay/oversea/ui/o$h;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    const/4 p1, 0x0

    .line 10
    invoke-static {v0, v1, p1, v2, v3}, Lcom/netease/mpay/oversea/widget/a$u;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/netease/mpay/oversea/widget/OnSpanClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/netease/mpay/oversea/widget/a;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/widget/a;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "Event:ApiStateImpl\uff1afilterSameAccounts"

    .line 20
    invoke-static {v0}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/ui/o$h;->b(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V

    :goto_0
    return-void
.end method

.method public b()Lcom/netease/mpay/oversea/s9;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    return-object v0
.end method

.method public b(Lcom/netease/mpay/oversea/j;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/netease/mpay/oversea/ui/o$h;->b:Lcom/netease/mpay/oversea/ui/o;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/o$h;->a:Lcom/netease/mpay/oversea/s9;

    invoke-virtual {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/o;->a(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method
