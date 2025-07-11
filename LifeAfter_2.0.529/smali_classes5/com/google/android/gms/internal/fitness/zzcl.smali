.class public abstract Lcom/google/android/gms/internal/fitness/zzcl;
.super Lcom/google/android/gms/internal/fitness/zzb;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzcm;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.fitness.internal.ISessionStopCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fitness/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcm;
    .locals 2

    const-string v0, "com.google.android.gms.fitness.internal.ISessionStopCallback"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/fitness/zzcm;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/fitness/zzcm;

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fitness/zzck;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fitness/zzck;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/fitness/result/SessionStopResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/fitness/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/result/SessionStopResult;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzc;->zzb(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fitness/zzcl;->zzd(Lcom/google/android/gms/fitness/result/SessionStopResult;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
