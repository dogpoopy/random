.class public abstract Lcom/google/android/gms/internal/fitness/zzfb;
.super Lcom/google/android/gms/internal/fitness/zzb;
.source "com.google.android.gms:play-services-fitness@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzfc;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.fitness.internal.service.IFitnessSensorService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fitness/zzb;-><init>(Ljava/lang/String;)V

    return-void
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

    if-eq p1, p3, :cond_2

    const/4 p4, 0x2

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzez;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/fitness/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzez;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object p4

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzc;->zzb(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/fitness/zzfb;->zzd(Lcom/google/android/gms/internal/fitness/zzez;Lcom/google/android/gms/internal/fitness/zzcp;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/fitness/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/fitness/zzco;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzcp;

    move-result-object p4

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzc;->zzb(Landroid/os/Parcel;)V

    .line 8
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/fitness/zzfb;->zzc(Lcom/google/android/gms/fitness/service/FitnessSensorServiceRequest;Lcom/google/android/gms/internal/fitness/zzcp;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/fitness/zzex;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/fitness/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/fitness/zzex;

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/fitness/zzbp;->zzc(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fitness/zzbq;

    move-result-object p4

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/fitness/zzc;->zzb(Landroid/os/Parcel;)V

    .line 12
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/fitness/zzfb;->zzb(Lcom/google/android/gms/internal/fitness/zzex;Lcom/google/android/gms/internal/fitness/zzbq;)V

    :goto_0
    return p3
.end method
