.class public Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;
.super Ljava/lang/Object;
.source "ContentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogInfo"
.end annotation


# instance fields
.field public mDensity:F

.field private mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Landroid/app/Activity;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->getScreenInfo(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;Landroid/view/Window;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->computeDialowLayoutParams(Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private computeDialowLayoutParams(Landroid/view/Window;)V
    .locals 8

    .line 341
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 343
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    const-wide v2, 0x3fe999999999999aL    # 0.8

    if-lt v0, v1, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->isWideScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fe8a3d70a3d70a4L    # 0.77

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fed1eb851eb851fL    # 0.91

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 353
    :cond_1
    iget-object v4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    double-to-int v0, v5

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v1

    const-wide v2, 0x3fe851eb851eb852L    # 0.76

    .line 354
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 356
    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "mDialogLayoutParams.width = %d,mDialogLayoutParams.height = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "D"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private getGameActivityScreenOrientation(Landroid/app/Activity;)I
    .locals 0

    .line 410
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    return p1
.end method

.method private getScreenInfo(Landroid/app/Activity;)V
    .locals 7

    .line 361
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 362
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 363
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDensity:F

    .line 364
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    .line 365
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    .line 366
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 367
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "vivo X21UD A"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2d0

    const/16 v2, 0x5bb

    const/16 v3, 0x438

    const/16 v4, 0x899

    const/16 v5, 0x140

    if-ne v0, v5, :cond_0

    .line 372
    iget v6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    if-ne v6, v4, :cond_0

    iget v6, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    if-ne v6, v3, :cond_0

    .line 373
    iput v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    .line 374
    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    goto :goto_0

    :cond_0
    if-ne v0, v5, :cond_1

    .line 375
    iget v5, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    if-ne v5, v3, :cond_1

    iget v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    if-ne v3, v4, :cond_1

    .line 376
    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    .line 377
    iput v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    .line 380
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",density:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDensity:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",densityDpi:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "D"

    invoke-static {v5, v1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->getGameActivityScreenOrientation(Landroid/app/Activity;)I

    move-result p1

    const/4 v1, 0x1

    const-string v6, "correct-- width:"

    if-eq p1, v1, :cond_4

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 397
    :cond_3
    iget p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    if-ge p1, v1, :cond_5

    .line 399
    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    .line 400
    iput p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDensity:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 389
    :cond_4
    :goto_1
    iget p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    if-le p1, v1, :cond_5

    .line 391
    iput v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    .line 392
    iput p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mDensity:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/netease/ntunisdk/external/protocol/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private isWideScreen()Z
    .locals 2

    .line 417
    iget v0, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$DialogInfo;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3fe38e39

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
