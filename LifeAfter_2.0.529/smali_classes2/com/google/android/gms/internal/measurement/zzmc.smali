.class final Lcom/google/android/gms/internal/measurement/zzmc;
.super Lcom/google/android/gms/internal/measurement/zzma;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzma<",
        "Lcom/google/android/gms/internal/measurement/zzlz;",
        "Lcom/google/android/gms/internal/measurement/zzlz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzma;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlz;)V
    .locals 0

    .line 60
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzix;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzix;->zzb:Lcom/google/android/gms/internal/measurement/zzlz;

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza()I

    move-result p1

    return p1
.end method

.method final synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlz;->zzd()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlz;->zzc()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 22
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlz;->zzc()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Lcom/google/android/gms/internal/measurement/zzlz;Lcom/google/android/gms/internal/measurement/zzlz;)Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object p1

    return-object p1

    .line 24
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Lcom/google/android/gms/internal/measurement/zzlz;)Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Ljava/lang/Object;II)V
    .locals 0

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 35
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 39
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 47
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    check-cast p3, Lcom/google/android/gms/internal/measurement/zzlz;

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 43
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 64
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Lcom/google/android/gms/internal/measurement/zzmw;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzlc;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;)I
    .locals 0

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb()I

    move-result p1

    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;IJ)V
    .locals 0

    .line 49
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    shl-int/lit8 p2, p2, 0x3

    .line 51
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(ILjava/lang/Object;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzmw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 67
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zzb(Lcom/google/android/gms/internal/measurement/zzmw;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 58
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlz;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzix;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzix;->zzb:Lcom/google/android/gms/internal/measurement/zzlz;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlz;->zzc()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlz;->zzd()Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzmc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlz;)V

    :cond_0
    return-object v0
.end method

.method final synthetic zzc(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzlz;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzmc;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlz;)V

    return-void
.end method

.method final synthetic zzd(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzix;->zzb:Lcom/google/android/gms/internal/measurement/zzlz;

    return-object p1
.end method

.method final synthetic zze(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzlz;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zze()V

    return-object p1
.end method

.method final zzf(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzix;->zzb:Lcom/google/android/gms/internal/measurement/zzlz;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zze()V

    return-void
.end method
