.class public final synthetic Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/CameraConfigProvider;


# instance fields
.field public final synthetic f$0:Landroidx/camera/extensions/ExtensionsInfo;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/camera/core/impl/Identifier;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/extensions/ExtensionsInfo;ILandroidx/camera/core/impl/Identifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;->f$0:Landroidx/camera/extensions/ExtensionsInfo;

    iput p2, p0, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;->f$1:I

    iput-object p3, p0, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;->f$2:Landroidx/camera/core/impl/Identifier;

    return-void
.end method


# virtual methods
.method public final getConfig(Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;
    .locals 3

    iget-object v0, p0, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;->f$0:Landroidx/camera/extensions/ExtensionsInfo;

    iget v1, p0, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;->f$1:I

    iget-object v2, p0, Landroidx/camera/extensions/-$$Lambda$ExtensionsInfo$PxODNR0wPQbacVHW2Ag7UxHstbA;->f$2:Landroidx/camera/core/impl/Identifier;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/camera/extensions/ExtensionsInfo;->lambda$injectExtensionCameraConfig$1$ExtensionsInfo(ILandroidx/camera/core/impl/Identifier;Landroidx/camera/core/CameraInfo;Landroid/content/Context;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object p1

    return-object p1
.end method
