.class public Lcom/netease/mpay/oversea/l4;
.super Ljava/lang/Object;
.source "InheritPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/l4$j;,
        Lcom/netease/mpay/oversea/l4$k;,
        Lcom/netease/mpay/oversea/l4$l;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/mpay/oversea/l4$j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/l4;)Lcom/netease/mpay/oversea/l4$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/l4;->a:Lcom/netease/mpay/oversea/l4$j;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/netease/mpay/oversea/l4$j;)Lcom/netease/mpay/oversea/l4;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/l4;->a:Lcom/netease/mpay/oversea/l4$j;

    return-object p0
.end method

.method public a(Landroid/app/Activity;Lcom/netease/mpay/oversea/l4$l;)V
    .locals 12

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/netease/mpay/oversea/l4$a;

    invoke-direct {v2, p0, p2}, Lcom/netease/mpay/oversea/l4$a;-><init>(Lcom/netease/mpay/oversea/l4;Lcom/netease/mpay/oversea/l4$l;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 17
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/Window;)V

    .line 20
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__inherit_pwd_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_with_colse_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 29
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 30
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    .line 31
    invoke-static {v4, v8}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;I)V

    .line 33
    :cond_1
    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_3

    .line 35
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {v3, v5, v7}, Landroid/view/Window;->setLayout(II)V

    const/16 v5, 0x11

    .line 37
    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    const v5, 0x20008

    .line 38
    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    const/16 v5, 0x23

    .line 39
    invoke-virtual {v3, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 40
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-gt v5, v6, :cond_2

    .line 41
    invoke-static {v3}, Lcom/netease/mpay/oversea/ec;->b(Landroid/view/Window;)V

    .line 43
    :cond_2
    invoke-static {v3}, Lcom/netease/mpay/oversea/ec;->d(Landroid/view/Window;)V

    .line 45
    :cond_3
    iget-object v3, p0, Lcom/netease/mpay/oversea/l4;->a:Lcom/netease/mpay/oversea/l4$j;

    invoke-virtual {v3, v0}, Lcom/netease/mpay/oversea/l4$j;->a(Landroid/app/Dialog;)Lcom/netease/mpay/oversea/l4$j;

    .line 46
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 47
    sget v5, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_notice:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 48
    sget v6, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__close_button:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 49
    sget v7, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 50
    sget v8, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__negative_button:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 51
    sget v9, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_input:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 52
    sget v10, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__clear_pwd:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ToggleButton;

    .line 53
    sget v11, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__delete_pwd:I

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 54
    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 55
    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 56
    sget v11, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_switch_tips:I

    invoke-static {p1, v11}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    sget v11, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_inherit_pwd_warning:I

    invoke-static {p1, v11}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 61
    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__login_guest_inherit_pwd_hint:I

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 64
    :try_start_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :catchall_0
    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_skip:I

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v1, Lcom/netease/mpay/oversea/l4$b;

    invoke-direct {v1, p0, v9}, Lcom/netease/mpay/oversea/l4$b;-><init>(Lcom/netease/mpay/oversea/l4;Landroid/widget/EditText;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v1, Lcom/netease/mpay/oversea/l4$c;

    invoke-direct {v1, p0, v9}, Lcom/netease/mpay/oversea/l4$c;-><init>(Lcom/netease/mpay/oversea/l4;Landroid/widget/EditText;)V

    invoke-virtual {v10, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    new-instance v1, Lcom/netease/mpay/oversea/l4$d;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/netease/mpay/oversea/l4$d;-><init>(Lcom/netease/mpay/oversea/l4;Lcom/netease/mpay/oversea/l4$l;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v1, Lcom/netease/mpay/oversea/l4$e;

    invoke-direct {v1, p0, v4, v7}, Lcom/netease/mpay/oversea/l4$e;-><init>(Lcom/netease/mpay/oversea/l4;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    new-instance v1, Lcom/netease/mpay/oversea/l4$f;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/l4$f;-><init>(Lcom/netease/mpay/oversea/l4;Landroid/app/Activity;)V

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v1, Lcom/netease/mpay/oversea/l4$g;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/l4$g;-><init>(Lcom/netease/mpay/oversea/l4;Landroid/app/Activity;)V

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    new-instance v1, Lcom/netease/mpay/oversea/l4$h;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/netease/mpay/oversea/l4$h;-><init>(Lcom/netease/mpay/oversea/l4;Lcom/netease/mpay/oversea/l4$l;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v0, Lcom/netease/mpay/oversea/l4$i;

    invoke-direct {v0, p0, v9, p2, p1}, Lcom/netease/mpay/oversea/l4$i;-><init>(Lcom/netease/mpay/oversea/l4;Landroid/widget/EditText;Lcom/netease/mpay/oversea/l4$l;Landroid/app/Activity;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception p1

    .line 157
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :catch_1
    :cond_4
    :goto_0
    return-void
.end method
