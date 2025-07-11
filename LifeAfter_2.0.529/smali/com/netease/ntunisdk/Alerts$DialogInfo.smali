.class public Lcom/netease/ntunisdk/Alerts$DialogInfo;
.super Ljava/lang/Object;
.source "Alerts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/Alerts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Twitter SDK"


# instance fields
.field public mDensity:F

.field private mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field public mViewPortWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15e

    .line 134
    iput v0, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mViewPortWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/Alerts$DialogInfo;Landroid/app/Activity;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/Alerts$DialogInfo;->getScreenInfo(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/Alerts$DialogInfo;)I
    .locals 0

    .line 127
    iget p0, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/Alerts$DialogInfo;)I
    .locals 0

    .line 127
    iget p0, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    return p0
.end method

.method private getGameActivityScreenOrientation(Landroid/app/Activity;)I
    .locals 0

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    return p1
.end method

.method private getScreenInfo(Landroid/app/Activity;)V
    .locals 7

    .line 138
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/high16 v1, 0x40400000    # 3.0f

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    :goto_0
    iput v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mDensity:F

    .line 141
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    .line 142
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    .line 143
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 144
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "vivo X21UD A"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2d0

    const/16 v2, 0x5bb

    const/16 v3, 0x438

    const/16 v4, 0x899

    const/16 v5, 0x140

    if-ne v0, v5, :cond_1

    .line 149
    iget v6, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    if-ne v6, v4, :cond_1

    iget v6, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    if-ne v6, v3, :cond_1

    .line 150
    iput v2, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    .line 151
    iput v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    goto :goto_1

    :cond_1
    if-ne v0, v5, :cond_2

    .line 152
    iget v5, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    if-ne v5, v3, :cond_2

    iget v3, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    if-ne v3, v4, :cond_2

    .line 153
    iput v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    .line 154
    iput v2, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    .line 162
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/Alerts$DialogInfo;->getGameActivityScreenOrientation(Landroid/app/Activity;)I

    move-result p1

    const/4 v1, 0x1

    const-string v2, ",densityDpi:"

    const-string v3, ",density:"

    const-string v4, ",height:"

    const-string v5, "correct-- width:"

    const-string v6, "Twitter SDK"

    if-eq p1, v1, :cond_5

    const/4 v1, 0x7

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 173
    :cond_4
    iget p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    if-ge p1, v1, :cond_6

    .line 175
    iput v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    .line 176
    iput p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mDensity:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 165
    :cond_5
    :goto_2
    iget p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    if-le p1, v1, :cond_6

    .line 167
    iput v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    .line 168
    iput p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mDensity:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/netease/ntunisdk/Alerts$DialogInfo;->isWideScreen()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 181
    iget p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    int-to-double v0, p1

    iget p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mDensity:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mViewPortWidth:I

    goto :goto_4

    .line 183
    :cond_7
    iget p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mDensity:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mViewPortWidth:I

    :goto_4
    return-void
.end method

.method private isWideScreen()Z
    .locals 2

    .line 197
    iget v0, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/netease/ntunisdk/Alerts$DialogInfo;->mScreenHeight:I

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
