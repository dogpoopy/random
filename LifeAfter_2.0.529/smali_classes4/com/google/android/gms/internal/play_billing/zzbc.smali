.class public abstract Lcom/google/android/gms/internal/play_billing/zzbc;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"


# static fields
.field private static final zza:[C

.field public static final synthetic zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbc;->zza:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/zzbc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzbc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbc;->zzb()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzbc;->zzb()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzbc;->zzc(Lcom/google/android/gms/internal/play_billing/zzbc;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbc;->zzb()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbc;->zza()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbc;->zzd()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzbc;->zzd()[B

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int v3, v1, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 2
    aget-byte v4, v0, v3

    shr-int/lit8 v5, v4, 0x4

    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzbc;->zza:[C

    and-int/lit8 v5, v5, 0xf

    .line 3
    aget-char v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v4, 0xf

    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzbc;->zza:[C

    aget-char v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zza()I
.end method

.method public abstract zzb()I
.end method

.method abstract zzc(Lcom/google/android/gms/internal/play_billing/zzbc;)Z
.end method

.method zzd()[B
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
