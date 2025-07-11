.class final Lcom/google/android/gms/internal/measurement/zzga;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzfy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzfy;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzga;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzga;->zza:Lcom/google/android/gms/internal/measurement/zzfy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfy;->zzd()V

    return-void
.end method
