.class public Lcom/netease/ntunisdk/Alerts;
.super Ljava/lang/Object;
.source "Alerts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/Alerts$DialogInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 7

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p6, :cond_1

    .line 38
    new-instance p6, Lcom/netease/ntunisdk/Alerts$1;

    invoke-direct {p6, p4, p5, p2, p3}, Lcom/netease/ntunisdk/Alerts$1;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p6

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p6, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    invoke-virtual {p6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/netease/ntunisdk/Alerts;->clearDialogFocusable(Landroid/view/Window;)V

    .line 56
    :try_start_0
    invoke-virtual {p6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f09010c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/netease/ntunisdk/Alerts$DialogInfo;

    invoke-direct {v3}, Lcom/netease/ntunisdk/Alerts$DialogInfo;-><init>()V

    .line 63
    check-cast p0, Landroid/app/Activity;

    invoke-static {v3, p0}, Lcom/netease/ntunisdk/Alerts$DialogInfo;->access$000(Lcom/netease/ntunisdk/Alerts$DialogInfo;Landroid/app/Activity;)V

    .line 64
    invoke-static {v3}, Lcom/netease/ntunisdk/Alerts$DialogInfo;->access$100(Lcom/netease/ntunisdk/Alerts$DialogInfo;)I

    move-result p0

    invoke-static {v3}, Lcom/netease/ntunisdk/Alerts$DialogInfo;->access$200(Lcom/netease/ntunisdk/Alerts$DialogInfo;)I

    move-result v3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double v3, p0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int p0, v3

    .line 65
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, p0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {p6, v2, v3}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v1, :cond_2

    .line 69
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {v1, p0, v4}, Landroid/view/Window;->setLayout(II)V

    const/16 p0, 0x11

    .line 71
    invoke-virtual {v1, p0}, Landroid/view/Window;->setGravity(I)V

    .line 74
    :cond_2
    invoke-static {v1}, Lcom/netease/ntunisdk/Alerts;->resetDialogFocusable(Landroid/view/Window;)V

    const p0, 0x7f070397

    .line 75
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 77
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p0, 0x7f070399

    .line 78
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 p1, 0x8

    if-eqz p2, :cond_3

    .line 81
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance p2, Lcom/netease/ntunisdk/Alerts$2;

    invoke-direct {p2, p3, p6}, Lcom/netease/ntunisdk/Alerts$2;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const p0, 0x7f070398

    .line 97
    invoke-virtual {v2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p4, :cond_4

    .line 99
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance p1, Lcom/netease/ntunisdk/Alerts$3;

    invoke-direct {p1, p5, p6}, Lcom/netease/ntunisdk/Alerts$3;-><init>(Landroid/content/DialogInterface$OnClickListener;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static clearDialogFocusable(Landroid/view/Window;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static resetDialogFocusable(Landroid/view/Window;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
