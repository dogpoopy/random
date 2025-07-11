.class final Lcom/google/android/gms/auth/api/accounttransfer/zzl;
.super Lcom/google/android/gms/internal/auth/zzan;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/auth/api/accounttransfer/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/zzm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->zza:Lcom/google/android/gms/auth/api/accounttransfer/zzm;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzan;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->zza:Lcom/google/android/gms/auth/api/accounttransfer/zzm;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/accounttransfer/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v1, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzl;->zza:Lcom/google/android/gms/auth/api/accounttransfer/zzm;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/accounttransfer/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
