.class public final Lcom/google/android/gms/fitness/data/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# instance fields
.field private final zza:D

.field private final zzb:D


# direct methods
.method synthetic constructor <init>(DDLcom/google/android/gms/fitness/data/zzah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/zzai;->zza:D

    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/zzai;->zzb:D

    return-void
.end method


# virtual methods
.method public final zza(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/zzai;->zza:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/zzai;->zzb:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
