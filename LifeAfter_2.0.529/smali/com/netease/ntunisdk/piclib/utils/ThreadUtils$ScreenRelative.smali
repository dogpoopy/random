.class public Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/utils/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenRelative"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenRelative"

.field public static volatile sizeDoubleFullScrCache:[I

.field public static volatile sizeFullScrCache:[I

.field public static volatile sizeHalfScrCache:[I

.field public static volatile sizeMicroCache:[I

.field public static volatile sizeRealFullScrCache:[I

.field public static volatile sizeRealHalfScrCache:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetCache()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeMicroCache:[I

    .line 250
    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeHalfScrCache:[I

    .line 251
    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeFullScrCache:[I

    .line 252
    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeRealHalfScrCache:[I

    .line 253
    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeRealFullScrCache:[I

    .line 254
    sput-object v0, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeDoubleFullScrCache:[I

    return-void
.end method


# virtual methods
.method public getOrientation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "uri",
            "path"
        }
    .end annotation

    const-string v0, "getOrientation exception: "

    const-string v1, "ScreenRelative"

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const-string v3, ".gif"

    .line 172
    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 p3, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3

    .line 177
    new-instance p1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p1, p3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p2, "Orientation"

    const/4 v3, 0x1

    .line 179
    invoke-virtual {p1, p2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrientation orientation: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x10e

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    goto :goto_0

    :cond_3
    const/16 v2, 0xb4

    :goto_0
    if-eqz p3, :cond_4

    .line 198
    :try_start_1
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 194
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrientation e: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_4

    .line 198
    :try_start_3
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 204
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getOrientation degree: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_3
    if-eqz p3, :cond_5

    .line 198
    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 200
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_5
    :goto_4
    throw p1

    :cond_6
    :goto_5
    return v2
.end method

.method public getOrientation(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    const-string v0, "ScreenRelative"

    const-string v1, ".gif"

    .line 215
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 219
    :cond_0
    :try_start_0
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v3, 0x1

    .line 221
    invoke-virtual {v1, p1, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10e

    const/16 v2, 0x10e

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    const/16 v2, 0x5a

    goto :goto_0

    :cond_3
    const/16 p1, 0xb4

    const/16 v2, 0xb4

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrientation e: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrientation degree: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getRealAdaptableShowWH(IIII)[I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "showSizeWidth",
            "showSizeHeight",
            "oriWidth",
            "oriHeight"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_2

    :cond_0
    if-le p3, p4, :cond_1

    goto :goto_0

    :cond_1
    move v8, p2

    move p2, p1

    move p1, v8

    :goto_0
    int-to-float v3, p4

    int-to-float v4, p3

    div-float v5, v3, v4

    int-to-float v6, p1

    int-to-float v7, p2

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    mul-int p4, p4, p2

    int-to-float p1, p4

    div-float/2addr p1, v4

    float-to-int p1, p1

    goto :goto_1

    :cond_2
    mul-int p3, p3, p1

    int-to-float p2, p3

    div-float/2addr p2, v3

    float-to-int p2, p2

    :goto_1
    new-array p3, v2, [I

    aput p2, p3, v1

    aput p1, p3, v0

    return-object p3

    :cond_3
    :goto_2
    new-array p3, v2, [I

    aput p1, p3, v1

    aput p2, p3, v0

    return-object p3
.end method

.method public getRealShowWH(IIIII)[I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "showSizeWidth",
            "showSizeHeight",
            "oriWidth",
            "oriHeight",
            "orientation"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_2

    .line 121
    :cond_0
    rem-int/lit16 p5, p5, 0xb4

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    move v7, p4

    move p4, p3

    move p3, v7

    :goto_0
    int-to-float p5, p3

    int-to-float v3, p4

    div-float v4, p5, v3

    int-to-float v5, p2

    int-to-float v6, p1

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    mul-int p3, p3, p1

    int-to-float p2, p3

    div-float/2addr p2, v3

    float-to-int p2, p2

    goto :goto_1

    :cond_2
    mul-int p4, p4, p2

    int-to-float p1, p4

    div-float/2addr p1, p5

    float-to-int p1, p1

    :goto_1
    new-array p3, v2, [I

    aput p1, p3, v1

    aput p2, p3, v0

    return-object p3

    :cond_3
    :goto_2
    new-array p3, v2, [I

    aput p1, p3, v1

    aput p2, p3, v0

    return-object p3
.end method

.method public getShowSize(Landroid/content/Context;I)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "quality"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->REAL_FULL_SCREEN:Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;

    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->getShowSize(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 259
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    if-le v1, v3, :cond_0

    .line 260
    aget v1, p1, v0

    .line 261
    aget v3, p1, v2

    aput v3, p1, v0

    .line 262
    aput v1, p1, v2

    :cond_0
    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_2

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    new-array p2, v1, [I

    const/16 v1, 0x1e0

    aput v1, p2, v0

    .line 279
    aget v3, p1, v2

    mul-int/lit16 v3, v3, 0x1e0

    aget p1, p1, v0

    div-int/2addr v3, p1

    aput v3, p2, v2

    goto :goto_0

    :cond_1
    new-array p2, v1, [I

    const/16 v1, 0x870

    aput v1, p2, v0

    .line 276
    aget v3, p1, v2

    mul-int/lit16 v3, v3, 0x870

    aget p1, p1, v0

    div-int/2addr v3, p1

    aput v3, p2, v2

    goto :goto_0

    :cond_2
    new-array p2, v1, [I

    const/16 v1, 0x5a0

    aput v1, p2, v0

    .line 273
    aget v3, p1, v2

    mul-int/lit16 v3, v3, 0x5a0

    aget p1, p1, v0

    div-int/2addr v3, p1

    aput v3, p2, v2

    goto :goto_0

    :cond_3
    new-array p2, v1, [I

    const/16 v1, 0x438

    aput v1, p2, v0

    .line 270
    aget v3, p1, v2

    mul-int/lit16 v3, v3, 0x438

    aget p1, p1, v0

    div-int/2addr v3, p1

    aput v3, p2, v2

    goto :goto_0

    :cond_4
    new-array p2, v1, [I

    const/16 v1, 0x2d0

    aput v1, p2, v0

    .line 267
    aget v3, p1, v2

    mul-int/lit16 v3, v3, 0x2d0

    aget p1, p1, v0

    div-int/2addr v3, p1

    aput v3, p2, v2

    :goto_0
    return-object p2
.end method

.method public getShowSize(Landroid/content/Context;Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "sizeType"
        }
    .end annotation

    const/4 v0, 0x2

    if-nez p1, :cond_0

    new-array p1, v0, [I

    .line 287
    fill-array-data p1, :array_0

    return-object p1

    .line 289
    :cond_0
    :try_start_0
    sget-object v1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$1;->$SwitchMap$com$netease$ntunisdk$piclib$loader$ImageLoader$SizeType:[I

    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/loader/ImageLoader$SizeType;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    new-array p1, v0, [I

    goto/16 :goto_3

    .line 337
    :pswitch_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_1

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    goto :goto_0

    .line 340
    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 342
    :goto_0
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 343
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-array p1, v0, [I

    .line 344
    iget v1, p2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x2

    aput v1, p1, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p2, p2, 0x2

    aput p2, p1, v2

    return-object p1

    .line 326
    :pswitch_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_2

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    goto :goto_1

    .line 329
    :cond_2
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 331
    :goto_1
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 332
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-array p1, v0, [I

    .line 333
    iget v1, p2, Landroid/graphics/Point;->x:I

    aput v1, p1, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    aput p2, p1, v2

    return-object p1

    .line 315
    :pswitch_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_3

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    goto :goto_2

    .line 318
    :cond_3
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 320
    :goto_2
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-array p1, v0, [I

    .line 322
    iget v1, p2, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v0

    aput v1, p1, v3

    iget p2, p2, Landroid/graphics/Point;->y:I

    div-int/2addr p2, v0

    aput p2, p1, v2

    return-object p1

    .line 309
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-array v1, v0, [I

    aput p2, v1, v3

    aput p1, v1, v2

    return-object v1

    .line 299
    :pswitch_4
    sget-object p2, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeHalfScrCache:[I

    if-nez p2, :cond_4

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 302
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 303
    div-int/2addr p1, v0

    new-array p2, v0, [I

    aput p1, p2, v3

    aput p1, p2, v2

    .line 304
    sput-object p2, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeHalfScrCache:[I

    .line 306
    :cond_4
    sget-object p1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeHalfScrCache:[I

    return-object p1

    .line 291
    :pswitch_5
    sget-object p2, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeMicroCache:[I

    if-nez p2, :cond_5

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/utils/ScreenAdaptation;->getMicroSize(Landroid/content/res/Resources;)I

    move-result p1

    new-array p2, v0, [I

    aput p1, p2, v3

    aput p1, p2, v2

    .line 293
    sput-object p2, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeMicroCache:[I

    .line 295
    :cond_5
    sget-object p1, Lcom/netease/ntunisdk/piclib/utils/ThreadUtils$ScreenRelative;->sizeMicroCache:[I

    return-object p1

    :goto_3
    const/16 p2, 0x64

    aput p2, p1, v3

    aput p2, p1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 350
    sget-boolean p2, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz p2, :cond_6

    .line 351
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getShowSize -> e: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenRelative"

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [I

    .line 354
    fill-array-data p1, :array_1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x64
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x64
        0x64
    .end array-data
.end method
