.class public final Lcom/google/android/gms/internal/measurement/zzfi$zzk$zzb;
.super Lcom/google/android/gms/internal/measurement/zzix$zzb;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfi$zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzk;",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzk$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzk;->zzb()Lcom/google/android/gms/internal/measurement/zzfi$zzk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfh;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzfi$zzf$zza;)Lcom/google/android/gms/internal/measurement/zzfi$zzk$zzb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzad()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi$zzk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfi$zzf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzk;->zza(Lcom/google/android/gms/internal/measurement/zzfi$zzk;Lcom/google/android/gms/internal/measurement/zzfi$zzf;)V

    return-object p0
.end method
