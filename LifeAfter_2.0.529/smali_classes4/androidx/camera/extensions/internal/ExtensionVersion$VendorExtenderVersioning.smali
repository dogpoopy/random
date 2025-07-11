.class Landroidx/camera/extensions/internal/ExtensionVersion$VendorExtenderVersioning;
.super Landroidx/camera/extensions/internal/ExtensionVersion;
.source "ExtensionVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/ExtensionVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VendorExtenderVersioning"
.end annotation


# static fields
.field private static sImpl:Landroidx/camera/extensions/impl/ExtensionVersionImpl;


# instance fields
.field private mRuntimeVersion:Landroidx/camera/extensions/internal/Version;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 133
    invoke-direct {p0}, Landroidx/camera/extensions/internal/ExtensionVersion;-><init>()V

    .line 134
    sget-object v0, Landroidx/camera/extensions/internal/ExtensionVersion$VendorExtenderVersioning;->sImpl:Landroidx/camera/extensions/impl/ExtensionVersionImpl;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroidx/camera/extensions/impl/ExtensionVersionImpl;

    invoke-direct {v0}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;-><init>()V

    sput-object v0, Landroidx/camera/extensions/internal/ExtensionVersion$VendorExtenderVersioning;->sImpl:Landroidx/camera/extensions/impl/ExtensionVersionImpl;

    .line 138
    :cond_0
    sget-object v0, Landroidx/camera/extensions/internal/ExtensionVersion$VendorExtenderVersioning;->sImpl:Landroidx/camera/extensions/impl/ExtensionVersionImpl;

    .line 139
    invoke-static {}, Landroidx/camera/extensions/internal/ClientVersion;->getCurrentVersion()Landroidx/camera/extensions/internal/ClientVersion;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/ClientVersion;->toVersionString()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;->checkApiVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroidx/camera/extensions/internal/Version;->parse(Ljava/lang/String;)Landroidx/camera/extensions/internal/Version;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Landroidx/camera/extensions/internal/ClientVersion;->getCurrentVersion()Landroidx/camera/extensions/internal/ClientVersion;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/ClientVersion;->getVersion()Landroidx/camera/extensions/internal/Version;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v1

    .line 143
    invoke-virtual {v0}, Landroidx/camera/extensions/internal/Version;->getMajor()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 144
    iput-object v0, p0, Landroidx/camera/extensions/internal/ExtensionVersion$VendorExtenderVersioning;->mRuntimeVersion:Landroidx/camera/extensions/internal/Version;

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected vendor runtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/extensions/internal/ExtensionVersion$VendorExtenderVersioning;->mRuntimeVersion:Landroidx/camera/extensions/internal/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtenderVersion"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getVersionObject()Landroidx/camera/extensions/internal/Version;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/camera/extensions/internal/ExtensionVersion$VendorExtenderVersioning;->mRuntimeVersion:Landroidx/camera/extensions/internal/Version;

    return-object v0
.end method

.method isAdvancedExtenderSupportedInternal()Z
    .locals 1

    .line 158
    :try_start_0
    sget-object v0, Landroidx/camera/extensions/internal/ExtensionVersion$VendorExtenderVersioning;->sImpl:Landroidx/camera/extensions/impl/ExtensionVersionImpl;

    invoke-virtual {v0}, Landroidx/camera/extensions/impl/ExtensionVersionImpl;->isAdvancedExtenderImplemented()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
