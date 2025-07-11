.class public interface abstract Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;
.super Ljava/lang/Object;
.source "ConstLegacy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_COUNT:I = 0x9

.field public static final DEFAULT_QUALITY:I = 0x3

.field public static final MAX_COUNT:Ljava/lang/String; = "max_count"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final METHOD_EDIT_IMAGE:Ljava/lang/String; = "editImage"

.field public static final METHOD_ID:Ljava/lang/String; = "method_id"

.field public static final METHOD_OPEN_ALBUM:Ljava/lang/String; = "openAlbum"

.field public static final METHOD_OPEN_CAMERA:Ljava/lang/String; = "openCamera"

.field public static final METHOD_SAVE_ALBUM:Ljava/lang/String; = "saveAlbum"

.field public static final OUTPUT_IMAGE_DIR:Ljava/lang/String; = "NtUniImage"

.field public static final OUTPUT_VIDEO_DIR:Ljava/lang/String; = "NtUniVideo"

.field public static final QUALITY:Ljava/lang/String; = "quality"

.field public static final RECENT_PROJECT:Ljava/lang/String; = "\u6700\u8fd1\u9879\u76ee"

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final SELECT_TOGETHER:Ljava/lang/String; = "selectTogether"

.field public static final SINGLE_SELECTED:Ljava/lang/String; = "singleSelected"

.field public static final SUPPORT_CAMERA:Ljava/lang/String; = "support_camera"

.field public static final SUPPORT_GIF:Ljava/lang/String; = "support_gif"

.field public static final SUPPORT_IMAGE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORT_VIDEO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final UNISDK_PIC_EDIT_C_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_PIC_EDIT_C_PERMISSION_TIPS"

.field public static final UNISDK_PIC_EDIT_REJECT_C_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_PIC_EDIT_REJECT_C_PERMISSION_TIPS"

.field public static final UNISDK_PIC_EDIT_REJECT_RWC_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_PIC_EDIT_REJECT_RWC_PERMISSION_TIPS"

.field public static final UNISDK_PIC_EDIT_REJECT_RW_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_PIC_EDIT_REJECT_RW_PERMISSION_TIPS"

.field public static final UNISDK_PIC_EDIT_REJECT_W_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_PIC_EDIT_REJECT_W_PERMISSION_TIPS"

.field public static final UNISDK_PIC_EDIT_RWC_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_PIC_EDIT_RWC_PERMISSION_TIPS"

.field public static final UNISDK_PIC_EDIT_RW_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_PIC_EDIT_RW_PERMISSION_TIPS"

.field public static final UNISDK_PIC_EDIT_W_PERMISSION_TIPS:Ljava/lang/String; = "UNISDK_PIC_EDIT_W_PERMISSION_TIPS"

.field public static final VMPFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field public static final count:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 10
    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    sput-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->VMPFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "jpe"

    const-string v4, "gif"

    const-string v5, "png"

    const-string v6, "webp"

    const-string v7, "bmp"

    const-string v8, "heif"

    const-string v9, "heic"

    .line 43
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->SUPPORT_IMAGE:Ljava/util/List;

    const-string v0, "3gp"

    const-string v1, "mp4"

    const-string v2, "webm"

    const-string v3, "mkv"

    .line 44
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy;->SUPPORT_VIDEO:Ljava/util/List;

    return-void
.end method
