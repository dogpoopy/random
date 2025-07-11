.class public abstract Lcom/netease/unisdk/gmbridge5/view/BaseDialog;
.super Ljava/lang/Object;
.source "BaseDialog.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/Dialog;

.field protected mDialogView:Landroid/view/View;

.field protected mScreenHeight:I

.field protected mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mContext:Landroid/content/Context;

    sget v2, Lcom/netease/unisdk/gmbridgelib/R$style;->uni_gm_dialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    .line 27
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 28
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mScreenWidth:I

    .line 29
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mScreenHeight:I

    .line 30
    return-void
.end method

.method private setDialogWindowAttributes()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 47
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 48
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 49
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->getDialogWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 51
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->getDialogHeight()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->dismiss()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    .line 68
    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    .line 69
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 63
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDialogHeight()I
.end method

.method protected abstract getDialogWidth()I
.end method

.method protected abstract initDialogView()Landroid/view/View;
.end method

.method public isShowing()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->initDialogView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 40
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->setDialogWindowAttributes()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 43
    return-void
.end method
