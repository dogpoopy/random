.class public Lcom/netease/ntunisdk/piclib/unit/PicUnit;
.super Ljava/lang/Object;
.source "PicUnit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static sUnitRecordMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/netease/ntunisdk/piclib/unit/PicUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private drawHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation
.end field

.field private isChooseed:Z

.field private leftBottomForFinish:Landroid/graphics/PointF;

.field private leftTopForFinish:Landroid/graphics/PointF;

.field private mCropMatrix:Landroid/graphics/Matrix;

.field private mCropResetMatrix:Landroid/graphics/Matrix;

.field private mImageMatrix:Landroid/graphics/Matrix;

.field private mOriImageHeight:F

.field private mOriImageWidth:F

.field private mosaicHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mosaicUri:Landroid/net/Uri;

.field private picAngle:I

.field private picScale:F

.field private preDrawHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation
.end field

.field private preMosaicHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation
.end field

.field private preTextEditMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;"
        }
    .end annotation
.end field

.field private rightBottomForFinish:Landroid/graphics/PointF;

.field private rightTopForFinish:Landroid/graphics/PointF;

.field private sampleSize:I

.field private sampleUri:Landroid/net/Uri;

.field private saveImagePath:Ljava/io/File;

.field private saveImageUri:Landroid/net/Uri;

.field private textEditMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;"
        }
    .end annotation
.end field

.field private timeStamp:Lcom/bumptech/glide/signature/ObjectKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sampleSize:I

    return-void
.end method

.method public static appendRecord(Ljava/lang/String;Lcom/netease/ntunisdk/piclib/unit/PicUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "unit"
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    .line 23
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p0, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getRecord(Ljava/lang/String;)Lcom/netease/ntunisdk/piclib/unit/PicUnit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    .line 30
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    return-object p0
.end method

.method public static reset()V
    .locals 3

    .line 34
    sget-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    .line 37
    :cond_0
    sget-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    .line 38
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getTextEditMap()Landroidx/collection/ArrayMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getTextEditMap()Landroidx/collection/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->recycle()V

    goto :goto_0

    .line 46
    :cond_3
    sget-object v0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sUnitRecordMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    return-void
.end method


# virtual methods
.method public getDrawHistory()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->drawHistory:Ljava/util/Stack;

    return-object v0
.end method

.method public getLeftBottomForFinish()Landroid/graphics/PointF;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->leftBottomForFinish:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getLeftTopForFinish()Landroid/graphics/PointF;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->leftTopForFinish:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMosaicHistory()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mosaicHistory:Ljava/util/Stack;

    return-object v0
.end method

.method public getMosaicUri()Landroid/net/Uri;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mosaicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getOriImageHeight()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mOriImageHeight:F

    return v0
.end method

.method public getOriImageWidth()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mOriImageWidth:F

    return v0
.end method

.method public getPicAngle()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->picAngle:I

    return v0
.end method

.method public getPicScale()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->picScale:F

    return v0
.end method

.method public getRightBottomForFinish()Landroid/graphics/PointF;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->rightBottomForFinish:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getRightTopForFinish()Landroid/graphics/PointF;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->rightTopForFinish:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getSampleSize()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sampleSize:I

    return v0
.end method

.method public getSampleUri()Landroid/net/Uri;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sampleUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSaveImagePath()Ljava/io/File;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->saveImagePath:Ljava/io/File;

    return-object v0
.end method

.method public getSaveImageUri()Landroid/net/Uri;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->saveImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTextEditMap()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->textEditMap:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public getTimeStamp()Lcom/bumptech/glide/signature/ObjectKey;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->timeStamp:Lcom/bumptech/glide/signature/ObjectKey;

    return-object v0
.end method

.method public getmCropMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mCropMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getmCropResetMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mCropResetMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getmImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mImageMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public isChooseed()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->isChooseed:Z

    return v0
.end method

.method public revertHistory()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->drawHistory:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preDrawHistory:Ljava/util/Stack;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->drawHistory:Ljava/util/Stack;

    .line 262
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mosaicHistory:Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preMosaicHistory:Ljava/util/Stack;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mosaicHistory:Ljava/util/Stack;

    .line 266
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->textEditMap:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preTextEditMap:Landroidx/collection/ArrayMap;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->textEditMap:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public setChooseed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chooseed"
        }
    .end annotation

    .line 56
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->isChooseed:Z

    return-void
.end method

.method public setDrawHistory(Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawHistory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->drawHistory:Ljava/util/Stack;

    return-void
.end method

.method public setLeftBottomForFinish(Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftBottomForFinish"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->leftBottomForFinish:Landroid/graphics/PointF;

    return-void
.end method

.method public setLeftTopForFinish(Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "leftTopForFinish"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->leftTopForFinish:Landroid/graphics/PointF;

    return-void
.end method

.method public setMosaicHistory(Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mosaicHistory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;)V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mosaicHistory:Ljava/util/Stack;

    return-void
.end method

.method public setMosaicUri(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mosaicUri"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mosaicUri:Landroid/net/Uri;

    return-void
.end method

.method public setOriImageHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPriImageHeight"
        }
    .end annotation

    .line 130
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mOriImageHeight:F

    return-void
.end method

.method public setOriImageWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPriImageWidth"
        }
    .end annotation

    .line 122
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mOriImageWidth:F

    return-void
.end method

.method public setPicAngle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picAngle"
        }
    .end annotation

    .line 211
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->picAngle:I

    return-void
.end method

.method public setPicScale(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "picScale"
        }
    .end annotation

    .line 90
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->picScale:F

    return-void
.end method

.method public setRightBottomForFinish(Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightBottomForFinish"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->rightBottomForFinish:Landroid/graphics/PointF;

    return-void
.end method

.method public setRightTopForFinish(Landroid/graphics/PointF;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightTopForFinish"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->rightTopForFinish:Landroid/graphics/PointF;

    return-void
.end method

.method public setSampleSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleSize"
        }
    .end annotation

    .line 219
    iput p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sampleSize:I

    return-void
.end method

.method public setSampleUri(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleUri"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->sampleUri:Landroid/net/Uri;

    return-void
.end method

.method public setSaveImagePath(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saveImagePath"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->saveImagePath:Ljava/io/File;

    return-void
.end method

.method public setSaveImageUri(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saveImageUri"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->saveImageUri:Landroid/net/Uri;

    return-void
.end method

.method public setTextEditMap(Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textEditMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;)V"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->textEditMap:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public setTimeStamp(Lcom/bumptech/glide/signature/ObjectKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->timeStamp:Lcom/bumptech/glide/signature/ObjectKey;

    return-void
.end method

.method public setmCropMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCropMatrix"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mCropMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public setmCropResetMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCropResetMatrix"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mCropResetMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public setmImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mImageMatrix"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mImageMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public snapshotHistory()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->drawHistory:Ljava/util/Stack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preDrawHistory:Ljava/util/Stack;

    goto :goto_0

    .line 242
    :cond_0
    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preDrawHistory:Ljava/util/Stack;

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->mosaicHistory:Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preMosaicHistory:Ljava/util/Stack;

    goto :goto_1

    .line 247
    :cond_1
    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preMosaicHistory:Ljava/util/Stack;

    .line 249
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->textEditMap:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_2

    .line 251
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1, v0}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preTextEditMap:Landroidx/collection/ArrayMap;

    goto :goto_2

    .line 253
    :cond_2
    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->preTextEditMap:Landroidx/collection/ArrayMap;

    :goto_2
    return-void
.end method
