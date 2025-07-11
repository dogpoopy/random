.class public Lcom/netease/mpay/oversea/a4;
.super Ljava/lang/Object;
.source "GuideLoginDialog.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/a4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/a4;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/a4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/a4;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/a4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/a4;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/a4;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/a4;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/a4;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/a4;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/b$c;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x2

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez p4, :cond_0

    goto/16 :goto_1

    .line 11
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 13
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/Window;)V

    .line 16
    :try_start_0
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__guide_dialog:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_with_colse_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 25
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v4, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_1

    .line 27
    invoke-static {v0, v7}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;I)V

    .line 29
    :cond_1
    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 32
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    invoke-virtual {v5, v4, v1}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x11

    .line 34
    invoke-virtual {v5, v1}, Landroid/view/Window;->setGravity(I)V

    .line 35
    invoke-static {v5}, Lcom/netease/mpay/oversea/ec;->c(Landroid/view/Window;)V

    .line 36
    invoke-static {v5}, Lcom/netease/mpay/oversea/ec;->d(Landroid/view/Window;)V

    .line 38
    :cond_2
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__type:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 41
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 42
    sget v4, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 44
    :try_start_1
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v4}, Lcom/netease/mpay/oversea/wa;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;)V

    .line 46
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/ui/b$c;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 48
    invoke-virtual {p4}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p3, p4, v1}, Lcom/netease/mpay/oversea/ec;->a(Lcom/netease/mpay/oversea/g6;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 49
    new-instance p3, Lcom/netease/mpay/oversea/a4$a;

    invoke-direct {p3, p0, p5, v2, p1}, Lcom/netease/mpay/oversea/a4$a;-><init>(Lcom/netease/mpay/oversea/a4;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :goto_0
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close_button:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance p3, Lcom/netease/mpay/oversea/a4$b;

    invoke-direct {p3, p0, p6, v2, p1}, Lcom/netease/mpay/oversea/a4$b;-><init>(Lcom/netease/mpay/oversea/a4;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_1
    move-exception p1

    .line 67
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :catch_2
    return-void

    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 68
    invoke-interface {p6, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_4
    return-void
.end method
