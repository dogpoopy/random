.class public Lcom/netease/ntunisdk/piclib/view/ChooseDialog;
.super Landroid/app/Dialog;
.source "ChooseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "openCamera",
            "clickListener"
        }
    .end annotation

    const-string v0, "pic_edit_custom_dialog"

    .line 16
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dialog_us_choose_image_video"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->setContentView(I)V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->setCancelable(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tv_dialog_take_photo"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const-string v2, "picedit_take_photo"

    goto :goto_0

    :cond_0
    const-string v2, "picedit_get_other_image"

    .line 21
    :goto_0
    invoke-static {p1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    new-instance v2, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$ChooseDialog$18nHhRPcv106oO2npLw2o7-oluw;

    invoke-direct {v2, p0, p3}, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$ChooseDialog$18nHhRPcv106oO2npLw2o7-oluw;-><init>(Lcom/netease/ntunisdk/piclib/view/ChooseDialog;Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tv_dialog_take_video"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const-string p2, "picedit_take_video"

    goto :goto_1

    :cond_1
    const-string p2, "picedit_get_other_video"

    .line 28
    :goto_1
    invoke-static {p1, p2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    new-instance p1, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$ChooseDialog$eLoZwc9nqE556kjDItgI58TKfco;

    invoke-direct {p1, p0, p3}, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$ChooseDialog$eLoZwc9nqE556kjDItgI58TKfco;-><init>(Lcom/netease/ntunisdk/piclib/view/ChooseDialog;Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "tv_dialog_open_camera_cancel"

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 35
    new-instance p2, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$ChooseDialog$xlZzbqWGBvzvPayfDKVWk9vg3II;

    invoke-direct {p2, p0, p3}, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$ChooseDialog$xlZzbqWGBvzvPayfDKVWk9vg3II;-><init>(Lcom/netease/ntunisdk/piclib/view/ChooseDialog;Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ChooseDialog(Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 25
    sget-object p2, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->IMAGE:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;->onCallback(Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$ChooseDialog(Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 32
    sget-object p2, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->VIDEO:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;->onCallback(Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$ChooseDialog(Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog;->dismiss()V

    if-eqz p1, :cond_0

    .line 37
    sget-object p2, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;->CANCEL:Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;

    invoke-interface {p1, p2}, Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener;->onCallback(Lcom/netease/ntunisdk/piclib/view/ChooseDialog$ChooseClickListener$ClickType;)V

    :cond_0
    return-void
.end method
