.class public final Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;
.super Lcom/google/android/gms/internal/measurement/zzix$zzb;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzew$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzew$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzd()Lcom/google/android/gms/internal/measurement/zzew$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzev;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zza()I

    move-result v0

    return v0
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzew$zzc;)Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzad()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzew$zzb;ILcom/google/android/gms/internal/measurement/zzew$zzc;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzad()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzew$zzb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzew$zzc;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zza(I)Lcom/google/android/gms/internal/measurement/zzew$zzc;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzew$zzb;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
