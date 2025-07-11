.class public Lcom/netease/mpay/oversea/t9;
.super Ljava/lang/Object;
.source "SecondConfirmDialog.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/t9;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t9;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/mpay/oversea/t9;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t9;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/mpay/oversea/t9;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t9;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/mpay/oversea/t9;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/mpay/oversea/t9;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/netease/mpay/oversea/t9;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/mpay/oversea/t9;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/oversea/t9;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/mpay/oversea/t9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/netease/mpay/oversea/t9;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/mpay/oversea/t9;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 9

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 10
    new-instance v2, Lcom/netease/mpay/oversea/t9$a;

    invoke-direct {v2, p0, p4, p1}, Lcom/netease/mpay/oversea/t9$a;-><init>(Lcom/netease/mpay/oversea/t9;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 22
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    const/4 v0, 0x0

    .line 23
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 24
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/Window;)V

    .line 26
    :try_start_0
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/netease/mpay/oversea/R$layout;->netease_mpay_oversea__login_second_confirm_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netease/mpay/oversea/R$dimen;->netease_mpay_oversea__login_alert_dialog_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 36
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    invoke-static {}, Lcom/netease/mpay/oversea/g9;->h()Lcom/netease/mpay/oversea/h9;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/mpay/oversea/h9;->h()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    .line 38
    invoke-static {v2, v6}, Lcom/netease/mpay/oversea/ec;->a(Landroid/view/View;I)V

    .line 40
    :cond_1
    invoke-virtual {v8, v2, v4}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 43
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {v4, v3, v5}, Landroid/view/Window;->setLayout(II)V

    const/16 v3, 0x11

    .line 45
    invoke-virtual {v4, v3}, Landroid/view/Window;->setGravity(I)V

    const v3, 0x20008

    .line 46
    invoke-virtual {v4, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-gt v3, v5, :cond_2

    .line 48
    invoke-static {v4}, Lcom/netease/mpay/oversea/ec;->b(Landroid/view/Window;)V

    .line 50
    :cond_2
    invoke-static {v4}, Lcom/netease/mpay/oversea/ec;->d(Landroid/view/Window;)V

    .line 53
    :cond_3
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget p2, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__positive_button:I

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 56
    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 57
    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_sure:I

    invoke-static {p1, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 60
    sget v0, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__negative_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/netease/mpay/oversea/ec;->a(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 62
    sget v3, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__confirm_cancel:I

    invoke-static {p1, v3}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget v3, Lcom/netease/mpay/oversea/R$id;->netease_mpay_oversea__alert_input:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/EditText;

    .line 65
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 66
    sget v1, Lcom/netease/mpay/oversea/R$string;->netease_mpay_oversea__alert_hint:I

    invoke-static {p1, v1}, Lcom/netease/mpay/oversea/g8;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 68
    new-instance v1, Lcom/netease/mpay/oversea/t9$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/mpay/oversea/t9$b;-><init>(Lcom/netease/mpay/oversea/t9;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 89
    iget-object v1, p0, Lcom/netease/mpay/oversea/t9;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/netease/mpay/oversea/t9;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 90
    new-instance v1, Lcom/netease/mpay/oversea/t9$c;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t9$c;-><init>(Lcom/netease/mpay/oversea/t9;Landroid/app/Activity;)V

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v1, Lcom/netease/mpay/oversea/t9$d;

    invoke-direct {v1, p0, p1}, Lcom/netease/mpay/oversea/t9$d;-><init>(Lcom/netease/mpay/oversea/t9;Landroid/app/Activity;)V

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 105
    :cond_4
    new-instance v1, Lcom/netease/mpay/oversea/t9$e;

    invoke-direct {v1, p0, p4, v8, p1}, Lcom/netease/mpay/oversea/t9$e;-><init>(Lcom/netease/mpay/oversea/t9;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance p4, Lcom/netease/mpay/oversea/t9$f;

    move-object v3, p4

    move-object v4, p0

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/netease/mpay/oversea/t9$f;-><init>(Lcom/netease/mpay/oversea/t9;Landroid/widget/EditText;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception p1

    .line 119
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/Throwable;)V

    :catch_1
    return-void
.end method
