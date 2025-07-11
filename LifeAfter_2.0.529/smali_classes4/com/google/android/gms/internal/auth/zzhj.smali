.class public final Lcom/google/android/gms/internal/auth/zzhj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzdg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/auth/zzdg<",
        "Lcom/google/android/gms/internal/auth/zzhk;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/auth/zzhj;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/auth/zzdg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzdg<",
            "Lcom/google/android/gms/internal/auth/zzhk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/zzhj;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzhj;->zza:Lcom/google/android/gms/internal/auth/zzhj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhm;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzdk;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzdg;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzdk;->zza(Lcom/google/android/gms/internal/auth/zzdg;)Lcom/google/android/gms/internal/auth/zzdg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzhj;->zzb:Lcom/google/android/gms/internal/auth/zzdg;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/auth/zzhi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhj;->zza:Lcom/google/android/gms/internal/auth/zzhj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhj;->zzc()Lcom/google/android/gms/internal/auth/zzhk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzhk;->zza()Lcom/google/android/gms/internal/auth/zzhi;

    move-result-object v0

    return-object v0
.end method

.method public static zzd()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhj;->zza:Lcom/google/android/gms/internal/auth/zzhj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhj;->zzc()Lcom/google/android/gms/internal/auth/zzhk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzhk;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zze()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzhj;->zza:Lcom/google/android/gms/internal/auth/zzhj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzhj;->zzc()Lcom/google/android/gms/internal/auth/zzhk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzhk;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzhj;->zzc()Lcom/google/android/gms/internal/auth/zzhk;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/auth/zzhk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzhj;->zzb:Lcom/google/android/gms/internal/auth/zzdg;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzdg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzhk;

    return-object v0
.end method
