.class public final Lcom/google/android/gms/internal/measurement/zzfi$zzd$zza;
.super Lcom/google/android/gms/internal/measurement/zzix$zzb;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfi$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfi$zzd;->zzd()Lcom/google/android/gms/internal/measurement/zzfi$zzd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfh;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfi$zzd$zza;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzad()V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzfi$zzd;I)V

    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/measurement/zzfi$zzd$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzad()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi$zzd;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzfi$zzd;J)V

    return-object p0
.end method
