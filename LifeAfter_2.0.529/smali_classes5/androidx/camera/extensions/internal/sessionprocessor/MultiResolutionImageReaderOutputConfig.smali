.class public abstract Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;
.super Ljava/lang/Object;
.source "MultiResolutionImageReaderOutputConfig.java"

# interfaces
.implements Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(IILjava/lang/String;Ljava/util/List;II)Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;II)",
            "Landroidx/camera/extensions/internal/sessionprocessor/MultiResolutionImageReaderOutputConfig;"
        }
    .end annotation

    .line 40
    new-instance v7, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;

    move-object v0, v7

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/extensions/internal/sessionprocessor/AutoValue_MultiResolutionImageReaderOutputConfig;-><init>(IILjava/lang/String;Ljava/util/List;II)V

    return-object v7
.end method


# virtual methods
.method abstract getImageFormat()I
.end method

.method abstract getMaxImages()I
.end method
