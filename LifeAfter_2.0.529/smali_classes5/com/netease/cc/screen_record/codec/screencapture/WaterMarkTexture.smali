.class public Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;
.super Ljava/lang/Object;
.source "WaterMarkTexture.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mExternalWaterMark:Z

.field private mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

.field private mExternalWaterMarkOffsetLTX:I

.field private mExternalWaterMarkOffsetLTY:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mRenderVideoHeight:I

.field private mRenderVideoWidth:I

.field private mTargetVideoHeight:I

.field private mTargetVideoWidth:I

.field private mTextureId:I

.field private mWaterMarkInCenterRegion:Z

.field private mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

.field private mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

.field private mWaterMarkWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTextureId:I

    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

    .line 23
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    .line 24
    iput-object v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputWidth:I

    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputHeight:I

    .line 26
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    .line 27
    iput-boolean v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMark:Z

    .line 28
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkWidth:I

    .line 29
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTX:I

    .line 30
    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTY:I

    .line 31
    sget-object v0, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->RIGHT_BOTTOM:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    .line 35
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoWidth:I

    .line 36
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoHeight:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkInCenterRegion:Z

    return-void
.end method

.method private updateVertexArr(II)V
    .locals 12

    .line 59
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoHeight:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_f

    if-lez p1, :cond_f

    if-lez p2, :cond_f

    int-to-float v0, p1

    int-to-float p2, p2

    .line 69
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkWidth:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    if-ge v3, p1, :cond_1

    int-to-float p1, v3

    div-float/2addr p1, v0

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    :goto_1
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    const/high16 v6, 0x40000000    # 2.0f

    if-le v3, v5, :cond_2

    int-to-float v7, v5

    div-float v7, v6, v7

    int-to-float v5, v5

    mul-float v5, v5, v7

    int-to-float v3, v3

    div-float/2addr v5, v3

    move v3, v7

    goto :goto_2

    :cond_2
    int-to-float v7, v5

    div-float v7, v6, v7

    int-to-float v3, v3

    mul-float v3, v3, v7

    int-to-float v5, v5

    div-float/2addr v3, v5

    move v5, v7

    .line 80
    :goto_2
    iget-boolean v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkInCenterRegion:Z

    if-eqz v7, :cond_4

    .line 82
    iget v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    iget v8, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoWidth:I

    if-le v7, v8, :cond_3

    int-to-float v8, v8

    int-to-float v7, v7

    div-float/2addr v8, v7

    goto :goto_3

    .line 85
    :cond_3
    iget v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    int-to-float v8, v8

    div-float v8, v7, v8

    :goto_3
    mul-float v5, v5, v8

    mul-float v3, v3, v8

    :cond_4
    mul-float v7, v0, v5

    mul-float v8, p2, v3

    .line 98
    iget v9, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTX:I

    if-ltz v9, :cond_5

    iget v9, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTY:I

    if-ltz v9, :cond_5

    mul-float v0, v0, v6

    .line 100
    iget v7, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    int-to-float v7, v7

    div-float v7, v0, v7

    mul-float p2, p2, v6

    .line 101
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    int-to-float v0, v0

    div-float v8, p2, v0

    .line 104
    :cond_5
    iget-boolean p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkInCenterRegion:Z

    if-eqz p2, :cond_7

    .line 105
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoHeight:I

    if-le p2, v0, :cond_6

    int-to-float v0, v0

    int-to-float p2, p2

    div-float p2, v0, p2

    move v0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_5

    .line 109
    :cond_6
    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoWidth:I

    if-le p2, v0, :cond_7

    int-to-float v0, v0

    int-to-float p2, p2

    div-float p2, v0, p2

    goto :goto_4

    :cond_7
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 118
    :goto_5
    iget-boolean v9, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMark:Z

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-nez v9, :cond_8

    const/high16 v4, 0x42480000    # 50.0f

    mul-float v5, v5, v4

    sub-float/2addr p2, v5

    sub-float/2addr p2, v7

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    sub-float/2addr v0, v8

    goto/16 :goto_9

    .line 122
    :cond_8
    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTX:I

    const/high16 v9, -0x40800000    # -1.0f

    if-ltz v5, :cond_c

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTY:I

    if-ltz v5, :cond_c

    .line 123
    sget-object v3, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture$1;->$SwitchMap$com$netease$cc$screen_record$codec$WaterMarkInfo$LOCATION_BASE:[I

    iget-object v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    invoke-virtual {v5}, Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v1, :cond_b

    if-eq v3, v11, :cond_a

    if-eq v3, v10, :cond_9

    mul-float p2, p2, v4

    .line 138
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTX:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr p2, v3

    mul-float v3, v7, p1

    sub-float/2addr p2, v3

    mul-float v0, v0, v9

    .line 139
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTY:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    :goto_6
    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_8

    :cond_9
    mul-float p2, p2, v4

    .line 133
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTX:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    sub-float/2addr p2, v3

    mul-float v3, v7, p1

    sub-float/2addr p2, v3

    mul-float v0, v0, v4

    .line 134
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTY:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    goto :goto_7

    :cond_a
    mul-float p2, p2, v9

    .line 129
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTX:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v5, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    add-float/2addr p2, v3

    mul-float v0, v0, v4

    .line 130
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTY:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    :goto_7
    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    mul-float v3, v8, p1

    sub-float/2addr v0, v3

    goto :goto_9

    :cond_b
    mul-float p2, p2, v9

    .line 125
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTX:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr p2, v3

    mul-float v0, v0, v9

    .line 126
    iget v3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTY:I

    int-to-float v3, v3

    mul-float v3, v3, v6

    iget v4, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    goto :goto_6

    :cond_c
    mul-float v4, v7, p1

    sub-float/2addr p2, v4

    mul-float v0, v0, v9

    const/high16 v4, 0x41c80000    # 25.0f

    mul-float v3, v3, v4

    :goto_8
    add-float/2addr v0, v3

    :goto_9
    const/16 v3, 0x8

    new-array v3, v3, [F

    aput p2, v3, v2

    aput v0, v3, v1

    mul-float v7, v7, p1

    add-float/2addr v7, p2

    aput v7, v3, v11

    aput v0, v3, v10

    const/4 v1, 0x4

    aput p2, v3, v1

    const/4 p2, 0x5

    mul-float v8, v8, p1

    add-float/2addr v0, v8

    aput v0, v3, p2

    const/4 p1, 0x6

    aput v7, v3, p1

    const/4 p1, 0x7

    aput v0, v3, p1

    .line 161
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_d

    .line 162
    sget-object p1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

    .line 164
    :cond_d
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_e

    .line 165
    sget-object p1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    .line 166
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    sget-object p2, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_VerticalFlip_TextureCords:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    :cond_e
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_f
    return-void
.end method


# virtual methods
.method public getFBTexture()Ljava/nio/FloatBuffer;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getRBVertex()Ljava/nio/FloatBuffer;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getTextureId()I
    .locals 2

    .line 193
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->updateTexture()I

    .line 195
    :cond_0
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTextureId:I

    return v0
.end method

.method public init(IIIIZ)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoWidth:I

    .line 41
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTargetVideoHeight:I

    .line 42
    iput p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoWidth:I

    .line 43
    iput p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mRenderVideoHeight:I

    .line 44
    iput-boolean p5, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkInCenterRegion:Z

    .line 45
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_0

    .line 46
    sget-object p1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_1

    .line 49
    sget-object p1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    .line 50
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    sget-object p2, Lcom/netease/cc/screen_record/codec/screencapture/CCVProgram;->CCVideo_VerticalFlip_TextureCords:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    :cond_1
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputWidth:I

    if-lez p1, :cond_2

    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputHeight:I

    if-lez p2, :cond_2

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->updateVertexArr(II)V

    :cond_2
    return-void
.end method

.method public initTexture()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 176
    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTextureId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netease/cc/screen_record/codec/screencapture/GlUtil;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v0

    iput v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTextureId:I

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->resetOpenGlData()V

    return-void
.end method

.method public resetOpenGlData()V
    .locals 5

    .line 224
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 225
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 226
    iput v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTextureId:I

    :cond_0
    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkVerticesCoord:Ljava/nio/FloatBuffer;

    .line 229
    iput-object v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkTextureCoord:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IIILcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 212
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 213
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputWidth:I

    .line 214
    iget-object p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputHeight:I

    .line 215
    iput p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mWaterMarkWidth:I

    .line 216
    iput p3, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTX:I

    .line 217
    iput p4, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkOffsetLTY:I

    .line 218
    iput-object p5, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMarkLB:Lcom/netease/cc/screen_record/codec/WaterMarkInfo$LOCATION_BASE;

    .line 219
    iget p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputWidth:I

    iget p2, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputHeight:I

    invoke-direct {p0, p1, p2}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->updateVertexArr(II)V

    :cond_0
    return-void
.end method

.method public setExternalWaterMark(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mExternalWaterMark:Z

    return-void
.end method

.method public updateTexture()I
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->initTexture()V

    .line 184
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputWidth:I

    iget v1, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mInputHeight:I

    invoke-direct {p0, v0, v1}, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->updateVertexArr(II)V

    .line 185
    iget v0, p0, Lcom/netease/cc/screen_record/codec/screencapture/WaterMarkTexture;->mTextureId:I

    return v0
.end method
