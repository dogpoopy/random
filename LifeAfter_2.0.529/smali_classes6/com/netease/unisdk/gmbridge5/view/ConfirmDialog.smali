.class public Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;
.super Lcom/netease/unisdk/gmbridge5/view/BaseDialog;
.source "ConfirmDialog.java"


# static fields
.field private static final RES_ID_CANCEL:Ljava/lang/String; = "cancel"

.field private static final RES_ID_SURE:Ljava/lang/String; = "sure"


# instance fields
.field private mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

.field private mPressTextColor:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge5/view/FloatWindow;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "floatWindow"    # Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    .line 29
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/view/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mTextColor:I

    .line 24
    const-string v0, "#80ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mPressTextColor:I

    .line 30
    iput-object p2, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)Lcom/netease/unisdk/gmbridge5/view/FloatWindow;
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    .line 18
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mFloatWindow:Lcom/netease/unisdk/gmbridge5/view/FloatWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    .line 18
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mPressTextColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;

    .line 18
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mTextColor:I

    return v0
.end method

.method private setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "btnName"    # Ljava/lang/String;
    .param p3, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 66
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_tv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge5/utils/ResIdReader;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;

    invoke-direct {v1, p0, v0, p3}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$3;-><init>(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;Landroid/widget/TextView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected getDialogHeight()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_f_confirm_dialog_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getDialogWidth()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_f_confirm_dialog_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected initDialogView()Landroid/view/View;
    .locals 7

    .line 35
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$layout;->uni_gm_confirm_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    invoke-static {}, Lcom/netease/unisdk/gmbridge5/data/I18nManager;->getI18nInfo()Lcom/netease/unisdk/gmbridge5/data/I18nInfo;

    move-result-object v1

    .line 37
    .local v1, "i18nInfo":Lcom/netease/unisdk/gmbridge5/data/I18nInfo;
    if-eqz v1, :cond_0

    .line 38
    sget v2, Lcom/netease/unisdk/gmbridgelib/R$id;->confirm1_tv:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 39
    .local v2, "title1Tv":Landroid/widget/TextView;
    sget v3, Lcom/netease/unisdk/gmbridgelib/R$id;->confirm2_tv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 40
    .local v3, "title2Tv":Landroid/widget/TextView;
    sget v4, Lcom/netease/unisdk/gmbridgelib/R$id;->cancel_tv:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 41
    .local v4, "cancelTv":Landroid/widget/TextView;
    sget v5, Lcom/netease/unisdk/gmbridgelib/R$id;->sure_tv:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 42
    .local v5, "sureTv":Landroid/widget/TextView;
    iget-object v6, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertTittle1:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v6, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertTittle2:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v6, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertCancel:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v6, v1, Lcom/netease/unisdk/gmbridge5/data/I18nInfo;->mFloatAlertOk:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .end local v2    # "title1Tv":Landroid/widget/TextView;
    .end local v3    # "title2Tv":Landroid/widget/TextView;
    .end local v4    # "cancelTv":Landroid/widget/TextView;
    .end local v5    # "sureTv":Landroid/widget/TextView;
    :cond_0
    new-instance v2, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$1;-><init>(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)V

    const-string v3, "cancel"

    invoke-direct {p0, v0, v3, v2}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v2, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog$2;-><init>(Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;)V

    const-string v3, "sure"

    invoke-direct {p0, v0, v3, v2}, Lcom/netease/unisdk/gmbridge5/view/ConfirmDialog;->setOnclickListener(Landroid/view/View;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v0
.end method
