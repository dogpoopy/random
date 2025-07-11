.class final Lcom/google/android/gms/internal/measurement/zzio;
.super Lcom/google/android/gms/internal/measurement/zzim;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzim<",
        "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzim;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix$zzc;

    .line 3
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zziq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix$zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zzc:Lcom/google/android/gms/internal/measurement/zziq;

    return-object p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzik;Lcom/google/android/gms/internal/measurement/zzkj;I)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzik;->zza(Lcom/google/android/gms/internal/measurement/zzkj;I)Lcom/google/android/gms/internal/measurement/zzix$zzf;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzik;Lcom/google/android/gms/internal/measurement/zziq;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzma;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/zzlc;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;TUB;",
            "Lcom/google/android/gms/internal/measurement/zzma<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzix$zzf;

    .line 8
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzhm;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzik;Lcom/google/android/gms/internal/measurement/zziq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzix$zzf;

    .line 15
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzlc;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzik;Lcom/google/android/gms/internal/measurement/zziq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzlc;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/zzik;",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzix$zzf;

    .line 13
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzmw;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzmw;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix$zzc;

    .line 18
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzkj;)Z
    .locals 0

    .line 19
    instance-of p1, p1, Lcom/google/android/gms/internal/measurement/zzix$zzd;

    return p1
.end method

.method final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zziq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "Lcom/google/android/gms/internal/measurement/zzix$zzc;",
            ">;"
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzix$zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzix$zzd;->zza()Lcom/google/android/gms/internal/measurement/zziq;

    move-result-object p1

    return-object p1
.end method

.method final zzc(Ljava/lang/Object;)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzim;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zziq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zziq;->zze()V

    return-void
.end method
