.class public Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/request/StartBleScanRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:[Lcom/google/android/gms/fitness/data/DataType;

.field private zzb:Lcom/google/android/gms/fitness/request/BleScanCallback;

.field private zzc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zza:[Lcom/google/android/gms/fitness/data/DataType;

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zzc:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/fitness/request/StartBleScanRequest;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zzb:Lcom/google/android/gms/fitness/request/BleScanCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Must set BleScanCallback"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/fitness/request/StartBleScanRequest;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zza:[Lcom/google/android/gms/fitness/data/DataType;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/util/ArrayUtils;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zzb:Lcom/google/android/gms/fitness/request/BleScanCallback;

    iget v3, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zzc:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fitness/request/StartBleScanRequest;-><init>(Ljava/util/List;Lcom/google/android/gms/fitness/request/BleScanCallback;ILcom/google/android/gms/fitness/request/zzaz;)V

    return-object v0
.end method

.method public setBleScanCallback(Lcom/google/android/gms/fitness/request/BleScanCallback;)Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zzb:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-object p0
.end method

.method public varargs setDataTypes([Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zza:[Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public setTimeoutSecs(I)Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Stop time must be greater than zero"

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v2, 0x3c

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Stop time must be less than 1 minute"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/fitness/request/StartBleScanRequest$Builder;->zzc:I

    return-object p0
.end method
