.class public Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;
.super Landroid/app/Dialog;
.source "PermissionDialog.java"


# instance fields
.field private divideLine:Landroid/view/View;

.field private listener:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;

.field private message:Landroid/widget/TextView;

.field private negativeButton:Landroid/widget/TextView;

.field private positiveButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;)Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->listener:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;

    return-object p0
.end method

.method private initEvent()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->negativeButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->positiveButton:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$1;-><init>(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->positiveButton:Landroid/widget/TextView;

    new-instance v1, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog$2;-><init>(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 54
    sget v0, Lcom/netease/ntunisdk/modules/permission/R$id;->netease_permissionkit_sdk__content:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->message:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/netease/ntunisdk/modules/permission/R$id;->netease_permissionkit_sdk__divide_line:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->divideLine:Landroid/view/View;

    .line 56
    sget v0, Lcom/netease/ntunisdk/modules/permission/R$id;->netease_permissionkit_sdk__dialog_ui_btn_negative:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->negativeButton:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/netease/ntunisdk/modules/permission/R$id;->netease_permissionkit_sdk__dialog_ui_btn_positive:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->positiveButton:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/netease/ntunisdk/modules/permission/R$id;->netease_permissionkit_sdk__dialog_ui_button_bg:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    sget v1, Lcom/netease/ntunisdk/modules/permission/R$drawable;->netease_permissionkit_sdk__permission_popup_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 34
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->listener:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;->refuse()V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->requestWindowFeature(I)Z

    .line 45
    sget v0, Lcom/netease/ntunisdk/modules/permission/R$layout;->netease_permissionkit_sdk__dialog_ui:I

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setCanceledOnTouchOutside(Z)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->setCancelable(Z)V

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->initView()V

    .line 49
    invoke-direct {p0}, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->initEvent()V

    return-void
.end method

.method public setCallback(Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->listener:Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialogListener;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->message:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->negativeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->negativeButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->divideLine:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/netease/ntunisdk/modules/permission/ui/PermissionDialog;->positiveButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
