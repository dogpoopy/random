.class public Lcom/netease/mpay/oversea/scan/widgets/ProgressView;
.super Landroid/widget/ProgressBar;
.source "ProgressView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/scan/widgets/Progress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dismissProgress()V
    .locals 1

    const/16 v0, 0x8

    .line 34
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/scan/widgets/ProgressView;->setVisibility(I)V

    return-void
.end method

.method public isProgressShowing()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/netease/mpay/oversea/scan/widgets/ProgressView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showProgress()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/netease/mpay/oversea/scan/widgets/ProgressView;->setVisibility(I)V

    return-void
.end method
