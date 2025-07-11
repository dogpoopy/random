.class public Lcom/netease/mpay/oversea/h4;
.super Ljava/lang/Object;
.source "InheritCodeDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/h4;Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/mpay/oversea/h4;->a(Ljava/lang/String;Landroid/app/Activity;I)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 4

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 78
    :cond_1
    :try_start_2
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__toast:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 80
    sget v1, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__toast_text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    neg-int p1, p3

    const/16 p3, 0x11

    .line 82
    invoke-virtual {v0, p3, v3, p1}, Landroid/widget/Toast;->setGravity(III)V

    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 84
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 85
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/netease/mpay/oversea/y5;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 11

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/Window;)V

    .line 9
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__inherit_code_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 19
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 20
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    .line 21
    invoke-static {v2, v6}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;I)V

    .line 23
    :cond_1
    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 26
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-virtual {v4, v3, v5}, Landroid/view/Window;->setLayout(II)V

    const/16 v3, 0x11

    .line 28
    invoke-virtual {v4, v3}, Landroid/view/Window;->setGravity(I)V

    const v3, 0x20008

    .line 29
    invoke-virtual {v4, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 30
    invoke-static {v4}, Lcom/netease/mpay/oversea/ec;->c(Landroid/view/Window;)V

    .line 31
    invoke-static {v4}, Lcom/netease/mpay/oversea/ec;->d(Landroid/view/Window;)V

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__margin_80:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 34
    sget v4, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 35
    sget v5, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__guest_inherit_code:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 36
    sget v6, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 37
    sget v7, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__guest_inherit_copy:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 38
    sget v7, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_inherit_code_copy:I

    invoke-static {p1, v7}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget v7, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_switch_tips:I

    invoke-static {p1, v7}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-static {p1}, Lcom/netease/mpay/oversea/bc;->c(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p3}, Lcom/netease/mpay/oversea/y5;->h()Z

    move-result v7

    if-nez v7, :cond_3

    .line 42
    sget v7, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_inherit_code_album_warning:I

    invoke-static {p1, v7}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g9;->c()Lcom/netease/mpay/oversea/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/mpay/oversea/q;->c()Ljava/lang/String;

    move-result-object v4

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/mpay/oversea/bc;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-static {}, Lcom/netease/mpay/oversea/i6;->b()Ljava/lang/String;

    move-result-object v8

    .line 47
    sget v9, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_inherit_suffix:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v1

    invoke-static {p1, v9, v10}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 49
    new-instance v9, Lcom/netease/mpay/oversea/k0;

    new-instance v10, Lcom/netease/mpay/oversea/g4;

    iget-object p3, p3, Lcom/netease/mpay/oversea/y5;->a:Ljava/lang/String;

    invoke-direct {v10, p2, p3, v4}, Lcom/netease/mpay/oversea/g4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v7, v8, v10}, Lcom/netease/mpay/oversea/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/oversea/j0;)V

    new-array p3, v1, [Ljava/lang/Void;

    invoke-virtual {v9, p3}, Lcom/netease/mpay/oversea/s;->b([Ljava/lang/Object;)Lcom/netease/mpay/oversea/s;

    goto :goto_0

    .line 51
    :cond_3
    sget p3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_inherit_code_warning:I

    invoke-static {p1, p3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance p3, Lcom/netease/mpay/oversea/h4$a;

    invoke-direct {p3, p0, p1, p2, v3}, Lcom/netease/mpay/oversea/h4$a;-><init>(Lcom/netease/mpay/oversea/h4;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p2, v6}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 70
    sget p2, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_continue:I

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p1, Lcom/netease/mpay/oversea/h4$b;

    invoke-direct {p1, p0, p4, v0}, Lcom/netease/mpay/oversea/h4$b;-><init>(Lcom/netease/mpay/oversea/h4;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :catch_1
    :cond_4
    :goto_1
    return-void
.end method
