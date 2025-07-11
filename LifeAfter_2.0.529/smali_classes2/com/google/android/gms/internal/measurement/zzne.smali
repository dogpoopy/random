.class public final Lcom/google/android/gms/internal/measurement/zzne;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "Lcom/google/android/gms/internal/measurement/zznh;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzne;


# instance fields
.field private final zzb:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/gms/internal/measurement/zznh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzne;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzne;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzng;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzng;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzne;->zzb:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public static zza()J
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzaa()J
    .locals 2

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzaa()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzab()J
    .locals 2

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzab()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzac()J
    .locals 2

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzac()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzad()J
    .locals 2

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzad()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzae()J
    .locals 2

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzae()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzaf()J
    .locals 2

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzaf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzag()J
    .locals 2

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzag()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzah()J
    .locals 2

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzah()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzai()J
    .locals 2

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzai()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzaj()J
    .locals 2

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzaj()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzak()J
    .locals 2

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzak()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzal()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzam()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzan()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzan()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzao()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzao()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzap()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzaq()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzaq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzar()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzas()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzas()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzat()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzau()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzau()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zzb()J
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzc()J
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzd()J
    .locals 2

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zze()J
    .locals 2

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzf()J
    .locals 2

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzg()J
    .locals 2

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzh()J
    .locals 2

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzh()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzi()J
    .locals 2

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzj()J
    .locals 2

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzj()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzk()J
    .locals 2

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzk()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzl()J
    .locals 2

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzm()J
    .locals 2

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzm()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzn()J
    .locals 2

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzn()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzo()J
    .locals 2

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzo()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzp()J
    .locals 2

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzq()J
    .locals 2

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzq()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzr()J
    .locals 2

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzs()J
    .locals 2

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzt()J
    .locals 2

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzu()J
    .locals 2

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzu()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzv()J
    .locals 2

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzv()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzw()J
    .locals 2

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzx()J
    .locals 2

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzx()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzy()J
    .locals 2

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public static zzz()J
    .locals 2

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzne;->zza:Lcom/google/android/gms/internal/measurement/zzne;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzne;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznh;->zzz()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzne;->zzb:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznh;

    return-object v0
.end method
