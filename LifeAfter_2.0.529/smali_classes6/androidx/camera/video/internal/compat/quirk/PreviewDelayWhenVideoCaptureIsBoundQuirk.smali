.class public Landroidx/camera/video/internal/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;
.super Ljava/lang/Object;
.source "PreviewDelayWhenVideoCaptureIsBoundQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field private static final HUAWEI_DEVICE_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HUAWEI_MODEL_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 39
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "HWELE"

    const-string v2, "HW-02L"

    const-string v3, "HWVOG"

    const-string v4, "HWYAL"

    const-string v5, "HWLYA"

    const-string v6, "HWCOL"

    const-string v7, "HWPAR"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;->HUAWEI_DEVICE_LIST:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "ELS-AN00"

    const-string v2, "ELS-TN00"

    const-string v3, "ELS-NX9"

    const-string v4, "ELS-N04"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroidx/camera/video/internal/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;->HUAWEI_MODEL_LIST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load()Z
    .locals 3

    .line 54
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/camera/video/internal/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;->HUAWEI_DEVICE_LIST:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/camera/video/internal/compat/quirk/PreviewDelayWhenVideoCaptureIsBoundQuirk;->HUAWEI_MODEL_LIST:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
