.class public Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;
.super Ljava/lang/Object;
.source "TextureRotationUtil.java"


# static fields
.field public static final CAMERA_TEXTURE_NORMAL:[F

.field public static final CAMERA_TEXTURE_NO_ROTATION:[F

.field public static final CAMERA_TEXTURE_ROTATED_90:[F

.field public static final CUBE:[F

.field public static final CUBE_UPSIDE_DOWN_Z:[F

.field public static final TEXTURE_NORMAL:[F

.field public static final TEXTURE_NO_ROTATION:[F

.field public static final TEXTURE_ROTATED_180:[F

.field public static final TEXTURE_ROTATED_270:[F

.field public static final TEXTURE_ROTATED_90:[F

.field public static final VERTEXT_LEFT_BOTTOM_Z_REVERSE:[F

.field public static final VIDEO_TEXTURE_BACK:[F

.field public static final VIDEO_TEXTURE_FRONT:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 21
    fill-array-data v1, :array_0

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_NORMAL:[F

    new-array v1, v0, [F

    .line 28
    fill-array-data v1, :array_1

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    new-array v1, v0, [F

    .line 35
    fill-array-data v1, :array_2

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CAMERA_TEXTURE_NO_ROTATION:[F

    new-array v1, v0, [F

    .line 42
    fill-array-data v1, :array_3

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CAMERA_TEXTURE_ROTATED_90:[F

    new-array v1, v0, [F

    .line 49
    fill-array-data v1, :array_4

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_ROTATED_90:[F

    new-array v1, v0, [F

    .line 55
    fill-array-data v1, :array_5

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_ROTATED_180:[F

    new-array v1, v0, [F

    .line 61
    fill-array-data v1, :array_6

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_ROTATED_270:[F

    new-array v1, v0, [F

    .line 68
    fill-array-data v1, :array_7

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE:[F

    new-array v1, v0, [F

    .line 75
    fill-array-data v1, :array_8

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CUBE_UPSIDE_DOWN_Z:[F

    new-array v1, v0, [F

    .line 82
    fill-array-data v1, :array_9

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->VIDEO_TEXTURE_BACK:[F

    new-array v1, v0, [F

    .line 89
    fill-array-data v1, :array_a

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->VIDEO_TEXTURE_FRONT:[F

    new-array v1, v0, [F

    .line 96
    fill-array-data v1, :array_b

    sput-object v1, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->VERTEXT_LEFT_BOTTOM_Z_REVERSE:[F

    new-array v0, v0, [F

    .line 103
    fill-array-data v0, :array_c

    sput-object v0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CAMERA_TEXTURE_NORMAL:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static flip(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    return v0
.end method

.method public static getRotation(Lcom/netease/cc/screen_record/codec/encoder/Rotation;ZZ)[F
    .locals 10

    .line 114
    sget-object v0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil$1;->$SwitchMap$com$netease$cc$screen_record$codec$encoder$Rotation:[I

    invoke-virtual {p0}, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 126
    sget-object p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_NO_ROTATION:[F

    goto :goto_0

    .line 122
    :cond_0
    sget-object p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_ROTATED_270:[F

    goto :goto_0

    .line 119
    :cond_1
    sget-object p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_ROTATED_180:[F

    goto :goto_0

    .line 116
    :cond_2
    sget-object p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->TEXTURE_ROTATED_90:[F

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    new-array p1, v3, [F

    .line 130
    aget v9, p0, v8

    .line 131
    invoke-static {v9}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result v9

    aput v9, p1, v8

    aget v9, p0, v2

    aput v9, p1, v2

    aget v9, p0, v1

    .line 132
    invoke-static {v9}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result v9

    aput v9, p1, v1

    aget v9, p0, v0

    aput v9, p1, v0

    aget v9, p0, v7

    .line 133
    invoke-static {v9}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result v9

    aput v9, p1, v7

    aget v9, p0, v6

    aput v9, p1, v6

    aget v9, p0, v5

    .line 134
    invoke-static {v9}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result v9

    aput v9, p1, v5

    aget p0, p0, v4

    aput p0, p1, v4

    move-object p0, p1

    :cond_3
    if-eqz p2, :cond_4

    new-array p1, v3, [F

    .line 138
    aget p2, p0, v8

    aput p2, p1, v8

    aget p2, p0, v2

    .line 139
    invoke-static {p2}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result p2

    aput p2, p1, v2

    aget p2, p0, v1

    aput p2, p1, v1

    aget p2, p0, v0

    .line 140
    invoke-static {p2}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result p2

    aput p2, p1, v0

    aget p2, p0, v7

    aput p2, p1, v7

    aget p2, p0, v6

    .line 141
    invoke-static {p2}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result p2

    aput p2, p1, v6

    aget p2, p0, v5

    aput p2, p1, v5

    aget p0, p0, v4

    .line 142
    invoke-static {p0}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result p0

    aput p0, p1, v4

    move-object p0, p1

    :cond_4
    return-object p0
.end method

.method public static getTextureCoord(Z)[F
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    if-eqz p0, :cond_0

    .line 175
    sget-object p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CAMERA_TEXTURE_NO_ROTATION:[F

    goto :goto_0

    .line 177
    :cond_0
    sget-object p0, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->CAMERA_TEXTURE_ROTATED_90:[F

    :goto_0
    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 180
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 181
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    .line 182
    aget v2, p0, v1

    aput v2, v0, v1

    goto :goto_2

    .line 184
    :cond_1
    aget v2, p0, v1

    aput v2, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static getTextureCoord([FZZ)[F
    .locals 3

    if-eqz p0, :cond_3

    .line 159
    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 160
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 161
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    .line 162
    aget v2, p0, v1

    invoke-static {v2}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result v2

    goto :goto_1

    :cond_0
    aget v2, p0, v1

    :goto_1
    aput v2, v0, v1

    goto :goto_3

    :cond_1
    if-eqz p2, :cond_2

    .line 164
    aget v2, p0, v1

    invoke-static {v2}, Lcom/netease/cc/screen_record/codec/screencapture/TextureRotationUtil;->flip(F)F

    move-result v2

    goto :goto_2

    :cond_2
    aget v2, p0, v1

    :goto_2
    aput v2, v0, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method
