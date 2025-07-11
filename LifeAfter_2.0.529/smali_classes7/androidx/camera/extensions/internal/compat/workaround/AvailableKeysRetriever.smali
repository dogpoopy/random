.class public Landroidx/camera/extensions/internal/compat/workaround/AvailableKeysRetriever;
.super Ljava/lang/Object;
.source "AvailableKeysRetriever.java"


# instance fields
.field mShouldInvokeOnInit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Landroidx/camera/extensions/internal/compat/quirk/GetAvailableKeysNeedsOnInit;

    invoke-static {v0}, Landroidx/camera/extensions/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/camera/extensions/internal/compat/workaround/AvailableKeysRetriever;->mShouldInvokeOnInit:Z

    return-void
.end method


# virtual methods
.method public getAvailableCaptureRequestKeys(Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    .line 56
    iget-boolean v0, p0, Landroidx/camera/extensions/internal/compat/workaround/AvailableKeysRetriever;->mShouldInvokeOnInit:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {p1, p2, p3, p4}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    .line 61
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-boolean p3, p0, Landroidx/camera/extensions/internal/compat/workaround/AvailableKeysRetriever;->mShouldInvokeOnInit:Z

    if-eqz p3, :cond_1

    .line 64
    invoke-interface {p1}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onDeInit()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 63
    iget-boolean p3, p0, Landroidx/camera/extensions/internal/compat/workaround/AvailableKeysRetriever;->mShouldInvokeOnInit:Z

    if-eqz p3, :cond_2

    .line 64
    invoke-interface {p1}, Landroidx/camera/extensions/impl/ImageCaptureExtenderImpl;->onDeInit()V

    .line 66
    :cond_2
    throw p2
.end method
