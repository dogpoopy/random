.class public abstract Lcom/google/android/gms/internal/play_billing/zzam;
.super Lcom/google/android/gms/internal/play_billing/zzaf;
.source "com.android.billingclient:billing@@6.2.0"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/play_billing/zzai;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzaf;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p1, p0, :cond_3

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 2
    check-cast p1, Ljava/util/Set;

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :catch_0
    :cond_2
    :goto_0
    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzav;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzam;->zze()Lcom/google/android/gms/internal/play_billing/zzaw;

    move-result-object v0

    return-object v0
.end method

.method public zzd()Lcom/google/android/gms/internal/play_billing/zzai;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzam;->zza:Lcom/google/android/gms/internal/play_billing/zzai;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzam;->zzh()Lcom/google/android/gms/internal/play_billing/zzai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzam;->zza:Lcom/google/android/gms/internal/play_billing/zzai;

    :cond_0
    return-object v0
.end method

.method public abstract zze()Lcom/google/android/gms/internal/play_billing/zzaw;
.end method

.method zzh()Lcom/google/android/gms/internal/play_billing/zzai;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzaf;->toArray()[Ljava/lang/Object;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/play_billing/zzai;->zzd:I

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzai;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/play_billing/zzai;

    move-result-object v0

    return-object v0
.end method
