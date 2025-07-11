.class public abstract Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;
.super Ljava/lang/Object;
.source "ImageReaderOutputConfig.java"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(IILjava/lang/String;Ljava/util/List;Landroid/util/Size;II)Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;",
            "Landroid/util/Size;",
            "II)",
            "Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;"
        }
    .end annotation

    .line 43
    new-instance v8, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;-><init>(IILjava/lang/String;Ljava/util/List;Landroid/util/Size;II)V

    return-object v8
.end method

.method static create(ILandroid/util/Size;II)Landroidx/camera/extensions/internal/sessionprocessor/ImageReaderOutputConfig;
    .locals 9

    .line 49
    new-instance v8, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, v8

    move v1, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_ImageReaderOutputConfig;-><init>(IILjava/lang/String;Ljava/util/List;Landroid/util/Size;II)V

    return-object v8
.end method


# virtual methods
.method abstract getImageFormat()I
.end method

.method abstract getMaxImages()I
.end method

.method abstract getSize()Landroid/util/Size;
.end method
