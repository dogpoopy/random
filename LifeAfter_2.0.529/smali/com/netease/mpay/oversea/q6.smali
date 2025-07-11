.class public Lcom/netease/mpay/oversea/q6;
.super Ljava/lang/Object;
.source "NewGuestDialog.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/netease/mpay/oversea/g6;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/oversea/g6;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/q6;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/q6;->b:Lcom/netease/mpay/oversea/g6;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/q6;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    new-instance p5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/netease/mpay/oversea/q6;->a:Landroid/app/Activity;

    invoke-direct {p5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p5, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_0

    .line 4
    new-instance p6, Lcom/netease/mpay/oversea/q6$a;

    invoke-direct {p6, p0, p4}, Lcom/netease/mpay/oversea/q6$a;-><init>(Lcom/netease/mpay/oversea/q6;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p5, p6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    :cond_0
    invoke-virtual {p5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p5

    const/4 p6, 0x0

    .line 15
    invoke-virtual {p5, p6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    invoke-virtual {p5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/Window;)V

    .line 18
    :try_start_0
    invoke-virtual {p5}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    iget-object v0, p0, Lcom/netease/mpay/oversea/q6;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__login_new_guest_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/netease/mpay/oversea/q6;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 27
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    .line 29
    invoke-static {v0, v4}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;I)V

    .line 31
    :cond_1
    invoke-virtual {p5, v0, v2}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {p5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 34
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setLayout(II)V

    const/16 v1, 0x11

    .line 36
    invoke-virtual {v2, v1}, Landroid/view/Window;->setGravity(I)V

    .line 37
    invoke-static {v2}, Lcom/netease/mpay/oversea/ec;->c(Landroid/view/Window;)V

    .line 38
    invoke-static {v2}, Lcom/netease/mpay/oversea/ec;->d(Landroid/view/Window;)V

    .line 40
    :cond_2
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    iget-object v2, p0, Lcom/netease/mpay/oversea/q6;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__create_new_guest_tips:I

    invoke-static {v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_attention:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    iget-object v2, p0, Lcom/netease/mpay/oversea/q6;->a:Landroid/app/Activity;

    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__create_new_guest_confirm:I

    invoke-static {v2, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p0, Lcom/netease/mpay/oversea/q6;->b:Lcom/netease/mpay/oversea/g6;

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    .line 45
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__current_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/view/View;->setVisibility(I)V

    .line 46
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__login_type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__nickname:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    iget-object v4, p0, Lcom/netease/mpay/oversea/q6;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/netease/mpay/oversea/q6;->b:Lcom/netease/mpay/oversea/g6;

    invoke-static {v4, v5, p6}, Lcom/netease/mpay/oversea/ui/b;->b(Landroid/content/Context;Lcom/netease/mpay/oversea/g6;Z)Lcom/netease/mpay/oversea/ui/b$c;

    move-result-object v4

    .line 49
    iget-object v5, p0, Lcom/netease/mpay/oversea/q6;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 50
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/ui/b$c;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/mpay/oversea/q6;->c:Ljava/lang/String;

    .line 52
    :cond_3
    iget-object v5, p0, Lcom/netease/mpay/oversea/q6;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :try_start_1
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/ui/b$c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__current_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_4
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__current_user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_0
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    if-eqz p1, :cond_5

    .line 65
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance p1, Lcom/netease/mpay/oversea/q6$b;

    invoke-direct {p1, p0, p2, p5}, Lcom/netease/mpay/oversea/q6$b;-><init>(Lcom/netease/mpay/oversea/q6;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {v1, p6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :goto_1
    sget p1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__negative_button:I

    .line 82
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    if-eqz p3, :cond_6

    .line 85
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    new-instance p2, Lcom/netease/mpay/oversea/q6$c;

    invoke-direct {p2, p0, p4, p5}, Lcom/netease/mpay/oversea/q6$c;-><init>(Lcom/netease/mpay/oversea/q6;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 98
    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :catch_1
    move-exception p1

    .line 99
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :catch_2
    return-void
.end method
