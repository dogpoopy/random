.class public final Lcom/google/android/gms/internal/play_billing/zzak;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Lcom/google/android/gms/internal/play_billing/zzaj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zza:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzak;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zzb:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zza:[Ljava/lang/Object;

    array-length v2, v1

    add-int/2addr v0, v0

    if-le v0, v2, :cond_2

    shr-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int v2, v0, v0

    :cond_0
    if-gez v2, :cond_1

    const v2, 0x7fffffff

    .line 3
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zza:[Ljava/lang/Object;

    .line 4
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzad;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zzb:I

    add-int v2, v1, v1

    .line 5
    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 6
    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zzb:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/play_billing/zzal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zzc:Lcom/google/android/gms/internal/play_billing/zzaj;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zza:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/play_billing/zzau;->zzg(I[Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzak;)Lcom/google/android/gms/internal/play_billing/zzau;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzak;->zzc:Lcom/google/android/gms/internal/play_billing/zzaj;

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzaj;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzaj;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
