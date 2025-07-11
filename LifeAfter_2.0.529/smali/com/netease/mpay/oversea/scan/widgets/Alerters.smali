.class public Lcom/netease/mpay/oversea/scan/widgets/Alerters;
.super Ljava/lang/Object;
.source "Alerters.java"


# instance fields
.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/widgets/Alerters;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p6

    .line 44
    :try_start_0
    invoke-virtual {p6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f0900e8

    .line 51
    invoke-virtual {p6, v0}, Landroid/app/AlertDialog;->setContentView(I)V

    .line 52
    invoke-virtual {p6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v0, 0x7f0702d9

    .line 56
    invoke-virtual {p6, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0702da

    .line 59
    invoke-virtual {p6, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0702d8

    .line 60
    invoke-virtual {p6, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance p2, Lcom/netease/mpay/oversea/scan/widgets/Alerters$1;

    invoke-direct {p2, p0, p4, p6}, Lcom/netease/mpay/oversea/scan/widgets/Alerters$1;-><init>(Lcom/netease/mpay/oversea/scan/widgets/Alerters;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const p2, 0x7f0702d7

    .line 79
    invoke-virtual {p6, p2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 81
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance p1, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;

    invoke-direct {p1, p0, p5, p6, p2}, Lcom/netease/mpay/oversea/scan/widgets/Alerters$2;-><init>(Lcom/netease/mpay/oversea/scan/widgets/Alerters;Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;Landroid/widget/TextView;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/netease/mpay/oversea/scan/tools/Logging;->logStackTrace(Ljava/lang/Throwable;)V

    :catch_1
    return-void
.end method
