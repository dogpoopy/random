.class public final Lcom/google/android/gms/internal/fitness/zzeu;
.super Lcom/google/android/gms/internal/fitness/zza;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzew;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.fitness.internal.ble.IBleDevicesCallback"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/fitness/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/fitness/result/BleDevicesResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method
