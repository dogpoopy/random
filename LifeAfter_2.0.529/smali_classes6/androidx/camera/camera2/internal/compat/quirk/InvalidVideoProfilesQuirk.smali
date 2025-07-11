.class public Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;
.super Ljava/lang/Object;
.source "InvalidVideoProfilesQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field static final AFFECTED_PIXEL_MODELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "pixel 4"

    const-string v1, "pixel 4a"

    const-string v2, "pixel 4a (5g)"

    const-string v3, "pixel 4 xl"

    const-string v4, "pixel 5"

    const-string v5, "pixel 5a"

    const-string v6, "pixel 6"

    const-string v7, "pixel 6a"

    const-string v8, "pixel 6 pro"

    const-string v9, "pixel 7"

    const-string v10, "pixel 7 pro"

    .line 44
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_PIXEL_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAffectedPixelBuild()Z
    .locals 1

    .line 75
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->isTp1aBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->isTd1aBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isAffectedPixelDevices()Z
    .locals 1

    .line 67
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->isAffectedPixelModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->isAffectedPixelBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isAffectedPixelModel()Z
    .locals 3

    .line 71
    sget-object v0, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->AFFECTED_PIXEL_MODELS:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isAffectedSamsungDevices()Z
    .locals 2

    .line 63
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->isTp1aBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTd1aBuild()Z
    .locals 2

    .line 83
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "td1a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isTp1aBuild()Z
    .locals 2

    .line 79
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tp1a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static load()Z
    .locals 1

    .line 59
    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->isAffectedSamsungDevices()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/camera2/internal/compat/quirk/InvalidVideoProfilesQuirk;->isAffectedPixelDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
