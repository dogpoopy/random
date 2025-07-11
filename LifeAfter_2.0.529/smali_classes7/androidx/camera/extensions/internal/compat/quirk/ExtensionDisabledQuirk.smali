.class public Landroidx/camera/extensions/internal/compat/quirk/ExtensionDisabledQuirk;
.super Ljava/lang/Object;
.source "ExtensionDisabledQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAdvancedExtenderSupported()Z
    .locals 1

    .line 72
    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_2:Landroidx/camera/extensions/internal/Version;

    invoke-static {v0}, Landroidx/camera/extensions/internal/ExtensionVersion;->isMinimumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Landroidx/camera/extensions/internal/ExtensionVersion;->isAdvancedExtenderSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMoto()Z
    .locals 2

    .line 68
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "motorola"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isPixel5()Z
    .locals 2

    .line 64
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "redfin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static load()Z
    .locals 1

    .line 45
    invoke-static {}, Landroidx/camera/extensions/internal/compat/quirk/ExtensionDisabledQuirk;->isPixel5()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/camera/extensions/internal/compat/quirk/ExtensionDisabledQuirk;->isMoto()Z

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


# virtual methods
.method public shouldDisableExtension()Z
    .locals 2

    .line 52
    invoke-static {}, Landroidx/camera/extensions/internal/compat/quirk/ExtensionDisabledQuirk;->isPixel5()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/extensions/internal/compat/quirk/ExtensionDisabledQuirk;->isAdvancedExtenderSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-static {}, Landroidx/camera/extensions/internal/compat/quirk/ExtensionDisabledQuirk;->isMoto()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/camera/extensions/internal/Version;->VERSION_1_1:Landroidx/camera/extensions/internal/Version;

    invoke-static {v0}, Landroidx/camera/extensions/internal/ExtensionVersion;->isMaximumCompatibleVersion(Landroidx/camera/extensions/internal/Version;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
