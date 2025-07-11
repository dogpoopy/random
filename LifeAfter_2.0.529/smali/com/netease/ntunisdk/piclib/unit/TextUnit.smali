.class public Lcom/netease/ntunisdk/piclib/unit/TextUnit;
.super Ljava/lang/Object;
.source "TextUnit.java"


# instance fields
.field angle:F

.field cachedTextPaint:Landroid/text/TextPaint;

.field cachedWidth:I

.field color:I

.field h:F

.field ischacked:Z

.field text:Ljava/lang/String;

.field textBmp:Landroid/graphics/Bitmap;

.field textMaxScale:F

.field textScale:F

.field textX:F

.field textY:F

.field w:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsEmoji()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/utils/OtherUtils;->containsEmoji(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public drawAsBitmap(Landroid/graphics/Canvas;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "scale"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 149
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x4

    aput p2, v1, v2

    .line 152
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 153
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAngle()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->angle:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->color:I

    return v0
.end method

.method public getH()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->h:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextMaxScale()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textMaxScale:F

    return v0
.end method

.method public getTextScale()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textScale:F

    return v0
.end method

.method public getTextX()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textX:F

    return v0
.end method

.method public getTextY()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textY:F

    return v0
.end method

.method public getW()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->w:F

    return v0
.end method

.method public isIschacked()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->ischacked:Z

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 111
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->angle:F

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->color:I

    return-void
.end method

.method public setH(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .line 43
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->h:F

    return-void
.end method

.method public setIschacked(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ischacked"
        }
    .end annotation

    .line 67
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->ischacked:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->text:Ljava/lang/String;

    return-void
.end method

.method public setTextMaxScale(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textMaxScale"
        }
    .end annotation

    .line 51
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textMaxScale:F

    return-void
.end method

.method public setTextScale(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textScale"
        }
    .end annotation

    .line 91
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textScale:F

    return-void
.end method

.method public setTextX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textX"
        }
    .end annotation

    .line 99
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textX:F

    return-void
.end method

.method public setTextY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textY"
        }
    .end annotation

    .line 107
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textY:F

    return-void
.end method

.method public setW(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    .line 35
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->w:F

    return-void
.end method

.method public update(Landroid/text/TextPaint;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textPaint",
            "width"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textBmp:Landroid/graphics/Bitmap;

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->containsEmoji()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->cachedTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    .line 127
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->cachedTextPaint:Landroid/text/TextPaint;

    .line 128
    iput p2, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->cachedWidth:I

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->cachedTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 132
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    const/4 v0, 0x0

    if-lt p1, p2, :cond_3

    .line 133
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->cachedTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->cachedWidth:I

    invoke-static {p1, v0, p2, v1, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    goto :goto_0

    .line 136
    :cond_3
    new-instance p1, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->cachedTextPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->cachedWidth:I

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 138
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 138
    :goto_1
    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textBmp:Landroid/graphics/Bitmap;

    .line 140
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->textBmp:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method
