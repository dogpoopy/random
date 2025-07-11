.class public final Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;
.super Lcom/google/android/gms/internal/measurement/zzix$zzb;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfc$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzix$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzfc$zzd;",
        "Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzkl;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzf()Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzix;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzfb;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzb()I

    move-result v0

    return v0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfc$zzc;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zza(I)Lcom/google/android/gms/internal/measurement/zzfc$zzc;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzfc$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzad()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzix;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfc$zzc;

    .line 9
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzfc$zzd;ILcom/google/android/gms/internal/measurement/zzfc$zzc;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzix$zzb;->zzad()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zza(Lcom/google/android/gms/internal/measurement/zzfc$zzd;)V

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzew$zza;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzl()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfc$zzb;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfc$zzd$zza;->zza:Lcom/google/android/gms/internal/measurement/zzix;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfc$zzd;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfc$zzd;->zzm()Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
