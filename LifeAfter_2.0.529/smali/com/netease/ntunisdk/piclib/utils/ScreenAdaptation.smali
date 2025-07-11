.class public Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;
.super Ljava/lang/Object;
.source "ScreenAdaptation.java"


# static fields
.field public static MICRO_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ScreenAdaptation"

.field private static landscapeBucketCount:I

.field private static landscapeItemCount:I

.field private static landscapeItemHeight:I

.field private static final landscapePixels:[I

.field private static portraitBucketCount:I

.field private static portraitItemCount:I

.field private static portraitItemHeight:I

.field private static final portraitPixels:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 22
    fill-array-data v1, :array_0

    sput-object v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapePixels:[I

    new-array v0, v0, [I

    .line 23
    fill-array-data v0, :array_1

    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitPixels:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBucketCount(Landroid/content/res/Resources;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resources",
            "orientation"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 127
    sget p1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeBucketCount:I

    if-nez p1, :cond_0

    .line 128
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->handleLandscape(Landroid/content/res/Resources;)V

    .line 130
    :cond_0
    sget p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeBucketCount:I

    goto :goto_0

    .line 132
    :cond_1
    sget p1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitBucketCount:I

    if-nez p1, :cond_2

    .line 133
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->handlePortrait(Landroid/content/res/Resources;)V

    .line 135
    :cond_2
    sget p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitBucketCount:I

    :goto_0
    return p0
.end method

.method public static getDisplayMetrics(Landroid/content/res/Resources;)[I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayMetrics -> orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenAdaptation"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 47
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapePixels:[I

    aget v5, v0, v4

    if-eqz v5, :cond_0

    aget v5, v0, v3

    if-nez v5, :cond_5

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 50
    sget-object v6, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitPixels:[I

    aget v7, v6, v4

    if-ne v5, v7, :cond_1

    aget v7, v6, v3

    if-ne p0, v7, :cond_1

    const-string p0, "getDisplayMetrics -> landscape transform"

    .line 52
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v1, [I

    .line 53
    aget v0, v6, v3

    aput v0, p0, v4

    aget v0, v6, v4

    aput v0, p0, v3

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 55
    :cond_1
    aput v5, v0, v4

    .line 56
    aput p0, v0, v3

    goto :goto_1

    .line 64
    :cond_2
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitPixels:[I

    aget v5, v0, v4

    if-eqz v5, :cond_3

    aget v5, v0, v3

    if-nez v5, :cond_5

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 67
    sget-object v6, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapePixels:[I

    aget v7, v6, v4

    if-ne v5, v7, :cond_4

    aget v7, v6, v3

    if-ne p0, v7, :cond_4

    const-string p0, "getDisplayMetrics -> portrait transform"

    .line 69
    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v1, [I

    .line 70
    aget v0, v6, v3

    aput v0, p0, v4

    aget v0, v6, v4

    aput v0, p0, v3

    goto :goto_0

    .line 72
    :cond_4
    aput v5, v0, v4

    .line 73
    aput p0, v0, v3

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static getItemCount(Landroid/content/res/Resources;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 86
    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemCount:I

    if-nez v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->handleLandscape(Landroid/content/res/Resources;)V

    .line 89
    :cond_0
    sget p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemCount:I

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemCount:I

    if-nez v0, :cond_2

    .line 92
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->handlePortrait(Landroid/content/res/Resources;)V

    .line 94
    :cond_2
    sget p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemCount:I

    :goto_0
    return p0
.end method

.method public static getItemHeight(Landroid/content/res/Resources;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 102
    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemHeight:I

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->handleLandscape(Landroid/content/res/Resources;)V

    .line 105
    :cond_0
    sget p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemHeight:I

    goto :goto_0

    .line 107
    :cond_1
    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemHeight:I

    if-nez v0, :cond_2

    .line 108
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->handlePortrait(Landroid/content/res/Resources;)V

    .line 110
    :cond_2
    sget p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemHeight:I

    .line 112
    :goto_0
    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->MICRO_SIZE:I

    if-nez v0, :cond_3

    sput p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->MICRO_SIZE:I

    :cond_3
    return p0
.end method

.method public static getMicroSize(Landroid/content/res/Resources;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 117
    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->MICRO_SIZE:I

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42a00000    # 80.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    .line 119
    sput p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->MICRO_SIZE:I

    .line 121
    :cond_0
    sget p0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->MICRO_SIZE:I

    return p0
.end method

.method private static handleLandscape(Landroid/content/res/Resources;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getDisplayMetrics(Landroid/content/res/Resources;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLandscape -> width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenAdaptation"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float v3, v3, p0

    float-to-int v3, v3

    .line 146
    div-int v4, v0, v1

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 148
    :cond_0
    rem-int v1, v0, v1

    .line 149
    div-int/2addr v1, v4

    if-le v1, v3, :cond_1

    add-int/2addr v4, v5

    .line 150
    div-int v1, v0, v4

    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemHeight:I

    .line 151
    sput v4, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemCount:I

    goto :goto_0

    .line 153
    :cond_1
    div-int v1, v0, v4

    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemHeight:I

    .line 154
    sput v4, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemCount:I

    :goto_0
    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    const/high16 v3, 0x42480000    # 50.0f

    mul-float p0, p0, v3

    float-to-int p0, p0

    .line 159
    div-int v3, v0, v1

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    .line 161
    :goto_1
    rem-int/2addr v0, v1

    .line 162
    div-int/2addr v0, v5

    if-le v0, p0, :cond_3

    add-int/lit8 v5, v5, 0x1

    .line 165
    :cond_3
    sput v5, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeBucketCount:I

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleLandscape -> landscapeItemHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemHeight:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  ; landscapeItemCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  ; landscapeBucketCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeBucketCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static handlePortrait(Landroid/content/res/Resources;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 172
    invoke-static {p0}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getDisplayMetrics(Landroid/content/res/Resources;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 173
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v2, v2, p0

    float-to-int v2, v2

    const/16 v3, 0x5a0

    const/4 v4, 0x1

    if-gt v0, v3, :cond_0

    .line 179
    div-int/lit8 v1, v0, 0x4

    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemHeight:I

    const/4 v1, 0x4

    .line 180
    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemCount:I

    goto :goto_0

    .line 183
    :cond_0
    div-int v5, v0, v1

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 185
    :cond_1
    rem-int v1, v0, v1

    .line 186
    div-int/2addr v1, v5

    if-le v1, v2, :cond_2

    add-int/2addr v5, v4

    .line 187
    div-int v1, v0, v5

    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemHeight:I

    .line 188
    sput v5, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemCount:I

    goto :goto_0

    .line 190
    :cond_2
    div-int v1, v0, v5

    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemHeight:I

    .line 191
    sput v5, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemCount:I

    :goto_0
    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    mul-float p0, p0, v2

    float-to-int p0, p0

    if-gt v0, v3, :cond_3

    .line 198
    sput v4, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitBucketCount:I

    goto :goto_2

    .line 200
    :cond_3
    div-int v2, v0, v1

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    .line 202
    :goto_1
    rem-int/2addr v0, v1

    .line 203
    div-int/2addr v0, v4

    if-le v0, p0, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 206
    :cond_5
    sput v4, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitBucketCount:I

    .line 209
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePortrait -> portraitItemHeight: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemHeight:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  ; portraitItemCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  ; portraitBucketCount: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitBucketCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenAdaptation"

    invoke-static {v0, p0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reset()V
    .locals 3

    .line 26
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapePixels:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 27
    aput v1, v0, v2

    .line 28
    sget-object v0, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitPixels:[I

    aput v1, v0, v1

    .line 29
    aput v1, v0, v2

    .line 30
    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemCount:I

    .line 31
    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitItemHeight:I

    .line 32
    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemCount:I

    .line 33
    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeItemHeight:I

    .line 34
    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->portraitBucketCount:I

    .line 35
    sput v1, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->landscapeBucketCount:I

    return-void
.end method
