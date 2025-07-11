.class public Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;
.super Ljava/lang/Object;
.source "GameTextureRotationHelper.java"


# static fields
.field private static mHorizonFlip:Z

.field private static mRotation:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

.field private static mVerticalFlip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->NORMAL:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    sput-object v0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mRotation:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsHFlip()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mHorizonFlip:Z

    return v0
.end method

.method public static getIsVFlip()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mVerticalFlip:Z

    return v0
.end method

.method public static getRotation()Lcom/netease/cc/screen_record/codec/encoder/Rotation;
    .locals 1

    .line 39
    sget-object v0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mRotation:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    return-object v0
.end method

.method public static setGameTextureRotation(III)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 17
    :goto_0
    sput-boolean p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mHorizonFlip:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 18
    :goto_1
    sput-boolean v0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mVerticalFlip:Z

    if-eqz p2, :cond_5

    const/16 p0, 0x5a

    if-eq p2, p0, :cond_4

    const/16 p0, 0xb4

    if-eq p2, p0, :cond_3

    const/16 p0, 0x10e

    if-eq p2, p0, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_270:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    sput-object p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mRotation:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    goto :goto_2

    .line 27
    :cond_3
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_180:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    sput-object p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mRotation:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    goto :goto_2

    .line 24
    :cond_4
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->ROTATION_90:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    sput-object p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mRotation:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    goto :goto_2

    .line 21
    :cond_5
    sget-object p0, Lcom/netease/cc/screen_record/codec/encoder/Rotation;->NORMAL:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    sput-object p0, Lcom/netease/cc/screen_record/codec/screencapture/GameTextureRotationHelper;->mRotation:Lcom/netease/cc/screen_record/codec/encoder/Rotation;

    :goto_2
    return-void
.end method
