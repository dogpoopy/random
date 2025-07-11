.class public Lcom/netease/ntunisdk/piclib/view/LoadingCover;
.super Ljava/lang/Object;
.source "LoadingCover.java"


# instance fields
.field private coverView:Landroid/view/View;

.field private isShowing:Z

.field private final mContext:Landroid/content/Context;

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parent"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->mParent:Landroid/view/ViewGroup;

    return-void
.end method

.method private getCoverView()Landroid/view/View;
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->coverView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->mContext:Landroid/content/Context;

    const-string v1, "view_activity_cover"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->mParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->coverView:Landroid/view/View;

    .line 30
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 31
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->coverView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->coverView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->isShowing:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->coverView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->isShowing:Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->isShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->getCoverView()Landroid/view/View;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/LoadingCover;->isShowing:Z

    return-void
.end method
