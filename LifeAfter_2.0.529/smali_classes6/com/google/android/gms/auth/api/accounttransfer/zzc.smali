.class final Lcom/google/android/gms/auth/api/accounttransfer/zzc;
.super Lcom/google/android/gms/auth/api/accounttransfer/zzm;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/auth/zzaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;ILcom/google/android/gms/internal/auth/zzaz;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzc;->zza:Lcom/google/android/gms/internal/auth/zzaz;

    const/16 p1, 0x646

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/zzm;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/auth/zzau;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzc;->zzc:Lcom/google/android/gms/internal/auth/zzas;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzc;->zza:Lcom/google/android/gms/internal/auth/zzaz;

    .line 1
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzau;->zzh(Lcom/google/android/gms/internal/auth/zzat;Lcom/google/android/gms/internal/auth/zzaz;)V

    return-void
.end method
