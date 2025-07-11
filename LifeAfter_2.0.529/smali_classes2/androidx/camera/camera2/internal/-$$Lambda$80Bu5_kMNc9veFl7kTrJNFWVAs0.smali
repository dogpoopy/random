.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$80Bu5_kMNc9veFl7kTrJNFWVAs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/compat/workaround/CameraCharacteristicsProvider;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$80Bu5_kMNc9veFl7kTrJNFWVAs0;->f$0:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    return-void
.end method


# virtual methods
.method public final get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$80Bu5_kMNc9veFl7kTrJNFWVAs0;->f$0:Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
