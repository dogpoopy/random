.class Landroid/support/v4/content/res/ConfigurationHelperGingerbread;
.super Ljava/lang/Object;
.source "ConfigurationHelperGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDensityDpi(Landroid/content/res/Resources;)I
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method static getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 31
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method static getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 36
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 1

    .line 41
    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {p0}, Landroid/support/v4/content/res/ConfigurationHelperGingerbread;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
