.class Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;
.super Ljava/lang/Object;
.source "ScanCodeLoginToast.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast;->newToastView(Landroid/content/Context;Ljava/lang/String;II)Lcom/netease/mpay/oversea/scan/widgets/toast/ToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$leftOffset:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$topOffset:I


# direct methods
.method constructor <init>(IILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$leftOffset:I

    iput p2, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$topOffset:I

    iput-object p3, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 6

    .line 93
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0900ec

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0702d4

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/netease/mpay/oversea/scan/tools/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$context:Landroid/content/Context;

    .line 101
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 102
    iget-object v5, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$context:Landroid/content/Context;

    invoke-static {v5}, Lcom/netease/mpay/oversea/scan/tools/Utils;->isLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0502ac

    goto :goto_0

    :cond_0
    const v5, 0x7f0502a7

    .line 101
    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0702d3

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getLeftOffset()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$leftOffset:I

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/netease/mpay/oversea/scan/widgets/toast/ScanCodeLoginToast$2;->val$topOffset:I

    return v0
.end method
