.class public final Lcom/google/android/gms/fitness/data/DataSource$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/fitness/data/DataType;

.field private zzb:I

.field private zzc:Lcom/google/android/gms/fitness/data/Device;

.field private zzd:Lcom/google/android/gms/fitness/data/zzb;

.field private zze:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzb:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/data/DataSource;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zza:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Must set data type"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzb:I

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "Must set data source type"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zza:Lcom/google/android/gms/fitness/data/DataType;

    iget v4, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzb:I

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzc:Lcom/google/android/gms/fitness/data/Device;

    iget-object v6, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzd:Lcom/google/android/gms/fitness/data/zzb;

    iget-object v7, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zze:Ljava/lang/String;

    move-object v2, v0

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/fitness/data/DataSource;-><init>(Lcom/google/android/gms/fitness/data/DataType;ILcom/google/android/gms/fitness/data/Device;Lcom/google/android/gms/fitness/data/zzb;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAppPackageName(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/fitness/data/DataSource$Builder;->setAppPackageName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;

    return-object p0
.end method

.method public setAppPackageName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/zzb;->zza(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/zzb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzd:Lcom/google/android/gms/fitness/data/zzb;

    return-object p0
.end method

.method public setDataType(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zza:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public setDevice(Lcom/google/android/gms/fitness/data/Device;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzc:Lcom/google/android/gms/fitness/data/Device;

    return-object p0
.end method

.method public setStreamName(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Must specify a valid stream name"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/google/android/gms/fitness/data/DataSource$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/fitness/data/DataSource$Builder;->zzb:I

    return-object p0
.end method
