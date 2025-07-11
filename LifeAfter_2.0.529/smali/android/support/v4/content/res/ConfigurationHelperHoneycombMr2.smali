.class Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;
.super Ljava/lang/Object;
.source "ConfigurationHelperHoneycombMr2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getScreenHeightDp(Landroid/content/res/Resources;)I
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    return p0
.end method

.method static getScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 0

    .line 33
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    return p0
.end method

.method static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return p0
.end method
